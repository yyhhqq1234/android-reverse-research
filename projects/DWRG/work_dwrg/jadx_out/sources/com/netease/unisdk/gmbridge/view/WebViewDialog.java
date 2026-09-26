package com.netease.unisdk.gmbridge.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.alipay.android.phone.mrpc.core.Headers;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.device.BatteryInfo;
import com.netease.unisdk.gmbridge.device.DeviceInfo;
import com.netease.unisdk.gmbridge.device.DeviceUtil;
import com.netease.unisdk.gmbridge.imgupload.IUploadFinishListener;
import com.netease.unisdk.gmbridge.imgupload.ImgManager;
import com.netease.unisdk.gmbridge.imgupload.UploadInfo;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.receiver.BatteryReceiver;
import com.netease.unisdk.gmbridge.receiver.IBatteryChangeListener;
import com.netease.unisdk.gmbridge.utils.FileUtil;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import com.netease.unisdk.gmbridge.voice.VoiceManager;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class WebViewDialog extends BaseDialog {
    private static final String TAG = "gm_bridge WebViewDialog";
    private BatteryInfo mBatteryInfo;
    private BatteryReceiver mBatteryReceiver;
    private String mCameraImgPath;
    private RelativeLayout mContentView;
    private int mLayoutId;
    private String mRemoteUrl;
    private WebView mWebView;

    /* loaded from: classes.dex */
    public interface IWebViewCallbackListener {
        void callback(String str);
    }

    public WebViewDialog(Activity activity) {
        super(activity);
        if (this.mScreenWidth > this.mScreenHeight) {
            this.mLayoutId = ResIdReader.getLayoutId(this.mContext, "uni_gm_web_dialog_landscape");
        } else {
            this.mLayoutId = ResIdReader.getLayoutId(this.mContext, "uni_gm_web_dialog_portrait");
        }
        this.mDialog.setCancelable(false);
        this.mDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                if (keyCode == 4 && event.getAction() == 1 && event.getRepeatCount() == 0) {
                    if (WebViewDialog.this.mWebView != null) {
                        if (WebViewDialog.this.mWebView.canGoBack()) {
                            WebViewDialog.this.mWebView.goBack();
                            WebViewDialog.this.mWebView.goForward();
                            return false;
                        }
                        WebViewDialog.this.destroy();
                        UnisdkNtGmBridge.sRefer = null;
                        return false;
                    }
                    WebViewDialog.this.destroy();
                    UnisdkNtGmBridge.sRefer = null;
                    return false;
                }
                return false;
            }
        });
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    protected View initDialogView() {
        View view = LayoutInflater.from(this.mContext).inflate(this.mLayoutId, (ViewGroup) null);
        this.mContentView = (RelativeLayout) view.findViewById(ResIdReader.getId(this.mContext, "content_view"));
        updateViewSizeAndPosition(view, getContentWidth(), getContentHeight(), null);
        view.findViewById(ResIdReader.getId(this.mContext, "close")).setOnClickListener(new View.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                WebViewDialog.this.destroy();
                UnisdkNtGmBridge.sRefer = null;
            }
        });
        view.findViewById(ResIdReader.getId(this.mContext, "back")).setOnClickListener(new View.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NgLog.i(WebViewDialog.TAG, "click back");
                if (WebViewDialog.this.mWebView != null && WebViewDialog.this.mWebView.canGoBack()) {
                    WebViewDialog.this.mWebView.goBack();
                }
            }
        });
        view.findViewById(ResIdReader.getId(this.mContext, "forward")).setOnClickListener(new View.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NgLog.i(WebViewDialog.TAG, "click forward");
                if (WebViewDialog.this.mWebView != null && WebViewDialog.this.mWebView.canGoForward()) {
                    WebViewDialog.this.mWebView.goForward();
                }
            }
        });
        view.findViewById(ResIdReader.getId(this.mContext, Headers.REFRESH)).setOnClickListener(new View.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NgLog.i(WebViewDialog.TAG, "click refresh");
                if (WebViewDialog.this.mWebView != null) {
                    WebViewDialog.this.mWebView.reload();
                }
            }
        });
        this.mWebView = (WebView) view.findViewById(ResIdReader.getId(this.mContext, "web"));
        initWebView();
        return view;
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    protected int getDialogWidth() {
        return -1;
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    protected int getDialogHeight() {
        return -1;
    }

    private void initWebView() {
        WebSettings webSettings = this.mWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setUseWideViewPort(true);
        webSettings.setAllowFileAccess(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setPluginState(WebSettings.PluginState.ON);
        if (Build.VERSION.SDK_INT >= 17) {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        }
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.6
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                NgLog.i(WebViewDialog.TAG, "shouldOverrideUrlLoading url >> %s", url);
                return WebViewDialog.this.interceptUrl(url);
            }
        });
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.7
            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
                super.onShowCustomView(view, callback);
                NgLog.i(WebViewDialog.TAG, " onShowCustomView");
            }
        });
    }

    private int getContentWidth() {
        return UnisdkNtGmBridge.Settings.widthPercent > 0.0f ? (int) (this.mScreenWidth * UnisdkNtGmBridge.Settings.widthPercent) : this.mScreenWidth;
    }

    private int getContentHeight() {
        return UnisdkNtGmBridge.Settings.heightPercent > 0.0f ? (int) (this.mScreenHeight * UnisdkNtGmBridge.Settings.heightPercent) : this.mScreenHeight;
    }

    private void updateViewSizeAndPosition(View dialogView, int width, int height, String align) {
        FrameLayout.LayoutParams contentViewLayoutParams = new FrameLayout.LayoutParams(-1, -1);
        int tbMargin = (this.mScreenHeight - height) / 2;
        contentViewLayoutParams.topMargin = tbMargin;
        contentViewLayoutParams.bottomMargin = tbMargin;
        if ("left".equals(align)) {
            contentViewLayoutParams.leftMargin = 0;
            contentViewLayoutParams.rightMargin = this.mScreenWidth - width;
        } else if ("right".equals(align)) {
            contentViewLayoutParams.rightMargin = 0;
            contentViewLayoutParams.leftMargin = this.mScreenWidth - width;
        } else {
            int lrMargin = (this.mScreenWidth - width) / 2;
            contentViewLayoutParams.leftMargin = lrMargin;
            contentViewLayoutParams.rightMargin = lrMargin;
        }
        this.mContentView.setLayoutParams(contentViewLayoutParams);
        dialogView.requestLayout();
    }

    public void show(String url) {
        super.show();
        setBackground();
        this.mWebView.loadUrl(url);
        this.mWebView.requestFocus();
        registerBatteryReceiver();
    }

    private void setBackground() {
        if (UnisdkNtGmBridge.Settings.bgDrawable != null) {
            this.mContentView.setBackgroundDrawable(UnisdkNtGmBridge.Settings.bgDrawable);
        } else if (UnisdkNtGmBridge.Settings.bgColor != 0) {
            this.mContentView.setBackgroundColor(UnisdkNtGmBridge.Settings.bgColor);
        } else {
            this.mContentView.setBackgroundColor(Color.parseColor("#e0000000"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean interceptUrl(String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        if (url.contains("csa/upload/image")) {
            this.mRemoteUrl = url;
            Intent intent = new Intent();
            intent.setAction("android.media.action.IMAGE_CAPTURE");
            showImgPickDialog(isIntentAvailable(intent));
        } else if (url.contains("csa/info")) {
            String callbackFunc = UploadInfo.getQueryParameter(url, "callback");
            NgLog.i(TAG, "info callback = " + callbackFunc);
            DeviceInfo deviceInfo = DeviceUtil.getDeviceInfo(this.mContext);
            if (this.mBatteryInfo != null) {
                deviceInfo.batteryLevel = this.mBatteryInfo.batteryLevel;
                deviceInfo.batteryStatus = this.mBatteryInfo.batteryStatus;
            }
            String jsonStr = deviceInfo.toJson();
            jsCallback(jsonStr, callbackFunc);
        } else if (url.contains("csa/start_record")) {
            final String callbackFunc2 = UploadInfo.getQueryParameter(url, "callback");
            VoiceManager.getInstance(this.mContext).startRecord(new IWebViewCallbackListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.8
                @Override // com.netease.unisdk.gmbridge.view.WebViewDialog.IWebViewCallbackListener
                public void callback(String params) {
                    WebViewDialog.this.jsCallback(params, callbackFunc2);
                }
            });
        } else if (url.contains("csa/stop_record")) {
            VoiceManager.getInstance(this.mContext).stopRecord();
        } else if (url.contains("csa/cancel_record")) {
            VoiceManager.getInstance(this.mContext).cancelRecord();
        } else if (url.contains("csa/play_record")) {
            String playUrl = UploadInfo.getQueryParameter(url, "url");
            String name = UploadInfo.getQueryParameter(url, "name");
            NgLog.i(TAG, "playUrl = %s", playUrl);
            NgLog.i(TAG, "name = %s", name);
            VoiceManager.getInstance(this.mContext).playback(playUrl, name);
        } else if (url.contains("csa/stop_play")) {
            VoiceManager.getInstance(this.mContext).stopPlayback();
        } else if (url.contains("csa/set_window_size")) {
            float wp = 1.0f;
            float hp = 1.0f;
            try {
                wp = Float.valueOf(UploadInfo.getQueryParameter(url, "w")).floatValue();
            } catch (Exception e) {
            }
            try {
                hp = Float.valueOf(UploadInfo.getQueryParameter(url, "h")).floatValue();
            } catch (Exception e2) {
            }
            String align = UploadInfo.getQueryParameter(url, "align");
            updateViewSizeAndPosition(this.mDialogView, (int) (this.mScreenWidth * wp), (int) (this.mScreenHeight * hp), align);
        } else if (url.contains("csa/play_video")) {
            String link = UploadInfo.getQueryParameter(url, "link");
            Uri uri = Uri.parse(link);
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setDataAndType(uri, "video/mp4");
            this.mContext.startActivity(intent2);
            UnisdkNtGmBridge.sRefer = null;
        }
        return false;
    }

    private boolean isIntentAvailable(Intent intent) {
        PackageManager packageManager = this.mContext.getPackageManager();
        List<ResolveInfo> list = packageManager.queryIntentActivities(intent, 0);
        return list.size() > 0;
    }

    private void showImgPickDialog(boolean hasCamera) {
        CharSequence[] items;
        AlertDialog.Builder dlg = new AlertDialog.Builder(this.mContext);
        dlg.setTitle(ResIdReader.getStringId(this.mContext, "uni_gm_img_pick_dlg_title"));
        String[] itemses = this.mContext.getResources().getStringArray(ResIdReader.getArrayId(this.mContext, "uni_gm_img_pick_dlg_items"));
        if (hasCamera) {
            items = new CharSequence[]{itemses[0], itemses[1]};
        } else {
            items = new CharSequence[]{itemses[0]};
        }
        dlg.setItems(items, new DialogInterface.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        WebViewDialog.this.pick();
                        break;
                    case 1:
                        WebViewDialog.this.capture();
                        break;
                }
                dialog.dismiss();
            }
        });
        dlg.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void capture() {
        Intent intent = new Intent();
        intent.setAction("android.media.action.IMAGE_CAPTURE");
        this.mCameraImgPath = FileUtil.getImgSavePath(this.mContext);
        NgLog.i(TAG, "mCameraImgPath = " + this.mCameraImgPath);
        if (!TextUtils.isEmpty(this.mCameraImgPath)) {
            File imgFile = new File(this.mCameraImgPath);
            String authority = this.mContext.getPackageName() + ".gmbridge.fileprovider";
            NgLog.i(TAG, "authority = " + authority);
            Uri photoUri = null;
            try {
                photoUri = FileProvider.getUriForFile(this.mContext, authority, imgFile);
            } catch (Exception e) {
                NgLog.e(TAG, "getUriForFile Exception : " + e.getMessage());
            }
            if (photoUri == null) {
                try {
                    photoUri = Uri.fromFile(imgFile);
                } catch (Exception e2) {
                    NgLog.e(TAG, "fromFile Exception : " + e2.getMessage());
                }
            }
            if (photoUri != null) {
                intent.putExtra("output", photoUri);
                ((Activity) this.mContext).startActivityForResult(intent, UnisdkNtGmBridge.REQUEST_CODE_PICK_FROM_CAMERA);
                UnisdkNtGmBridge.sRefer = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pick() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        ((Activity) this.mContext).startActivityForResult(intent, UnisdkNtGmBridge.REQUEST_CODE_PICK_FROM_ALBUM);
        UnisdkNtGmBridge.sRefer = null;
    }

    public void onCaptureResult() {
        startUpload(this.mCameraImgPath);
    }

    public void onPickResult(Uri imgUri) {
        startUpload(imgUri);
    }

    private void startUpload(Object imgUri) {
        if (!TextUtils.isEmpty(this.mRemoteUrl)) {
            UploadInfo upInfo = UploadInfo.obtain(this.mRemoteUrl);
            NgLog.i(TAG, upInfo.toString());
            jsCallback("uploading", upInfo.callback);
            ImgManager.uploadImg(this.mContext, upInfo, imgUri, new IUploadFinishListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.10
                @Override // com.netease.unisdk.gmbridge.imgupload.IUploadFinishListener
                public void onFinish(String imageId, String callback) {
                    WebViewDialog.this.mCameraImgPath = null;
                    if (TextUtils.isEmpty(imageId)) {
                        WebViewDialog.this.jsCallback("cancel", callback);
                    } else {
                        WebViewDialog.this.jsCallback(imageId, callback);
                    }
                }
            });
        }
    }

    public void jsCallback(String param, String func) {
        String url = String.format("javascript: %s( '%s' )", func, param);
        NgLog.i(TAG, "jsCallback url = %s", url);
        if (this.mWebView != null) {
            this.mWebView.loadUrl(url);
        }
    }

    private void registerBatteryReceiver() {
        if (this.mBatteryReceiver != null) {
            this.mContext.unregisterReceiver(this.mBatteryReceiver);
            this.mBatteryReceiver = null;
        }
        this.mBatteryReceiver = new BatteryReceiver(new IBatteryChangeListener() { // from class: com.netease.unisdk.gmbridge.view.WebViewDialog.11
            @Override // com.netease.unisdk.gmbridge.receiver.IBatteryChangeListener
            public void onBatteryChanged(BatteryInfo batteryInfo) {
                if (WebViewDialog.this.mBatteryReceiver != null) {
                    WebViewDialog.this.mContext.unregisterReceiver(WebViewDialog.this.mBatteryReceiver);
                    WebViewDialog.this.mBatteryReceiver = null;
                }
                NgLog.i(WebViewDialog.TAG, batteryInfo.toString());
                WebViewDialog.this.mBatteryInfo = batteryInfo;
            }
        });
        IntentFilter filter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        this.mContext.registerReceiver(this.mBatteryReceiver, filter);
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    public void destroy() {
        NgLog.i(TAG, "destroy");
        if (this.mBatteryReceiver != null) {
            this.mContext.unregisterReceiver(this.mBatteryReceiver);
            this.mBatteryReceiver = null;
        }
        if (this.mWebView != null) {
            ViewGroup parent = (ViewGroup) this.mWebView.getParent();
            if (parent != null) {
                parent.removeView(this.mWebView);
            }
            this.mWebView.removeAllViews();
            this.mWebView.destroy();
            this.mWebView = null;
        }
        VoiceManager.getInstance(this.mContext).stopRecord();
        VoiceManager.getInstance(this.mContext).stopPlayback();
        if (UnisdkNtGmBridge.sPageCloseListener != null) {
            UnisdkNtGmBridge.sPageCloseListener.onClosed();
            UnisdkNtGmBridge.sPageCloseListener = null;
        }
        UnisdkNtGmBridge.sWebViewDialog = null;
        super.destroy();
    }
}
