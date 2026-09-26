package im.yixin.sdk.util;

import android.R;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import im.yixin.sdk.api.SendAuthToYX;
import im.yixin.sdk.channel.YXMessageUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AuthDialog extends Dialog {
    private static final int WEBVIEW_CONTAINER_MARGIN_TOP = 25;
    private static final int WEBVIEW_MARGIN = 10;
    private static int theme = R.style.Theme.Translucent.NoTitleBar;
    private String mAuthUrl;
    private Context mContext;
    private boolean mIsDetached;
    private ProgressDialog mLoadingDlg;
    private RelativeLayout mRootContainer;
    private WebView mWebView;
    private RelativeLayout mWebViewContainer;
    private SendAuthToYX.Req req;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AuthWebViewClient extends WebViewClient {
        private boolean isCallBacked;

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            SDKLogger.i(AuthWebViewClient.class, "load URL: " + url);
            if (!url.startsWith("sms:")) {
                return super.shouldOverrideUrlLoading(view, url);
            }
            Intent sendIntent = new Intent("android.intent.action.VIEW");
            sendIntent.putExtra("address", url.replace("sms:", ""));
            sendIntent.setType("vnd.android-dir/mms-sms");
            AuthDialog.this.getContext().startActivity(sendIntent);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            SDKLogger.i(AuthWebViewClient.class, "onReceivedError: errorCode = " + errorCode + ", description = " + description + ", failingUrl = " + failingUrl);
            super.onReceivedError(view, errorCode, description, failingUrl);
            AuthDialog.notifyThirdPartOAuth(AuthDialog.this.mContext, AuthDialog.this.req, -1, null);
            AuthDialog.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            SDKLogger.i(AuthWebViewClient.class, "onPageStarted URL: " + url);
            if (url.startsWith(AuthDialog.this.req.redirectUrl) && !this.isCallBacked) {
                this.isCallBacked = true;
                AuthDialog.this.handleRedirectUrl(url);
                view.stopLoading();
                AuthDialog.this.dismiss();
                return;
            }
            super.onPageStarted(view, url, favicon);
            if (AuthDialog.this.mIsDetached || AuthDialog.this.mLoadingDlg == null || AuthDialog.this.mLoadingDlg.isShowing()) {
                return;
            }
            AuthDialog.this.mLoadingDlg.show();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            SDKLogger.i(AuthWebViewClient.class, "onPageFinished URL: " + url);
            super.onPageFinished(view, url);
            if (!AuthDialog.this.mIsDetached && AuthDialog.this.mLoadingDlg != null) {
                AuthDialog.this.mLoadingDlg.dismiss();
            }
            AuthDialog.this.mWebView.setVisibility(0);
        }

        private AuthWebViewClient() {
            this.isCallBacked = false;
        }

        /* synthetic */ AuthWebViewClient(AuthDialog authDialog, AuthWebViewClient authWebViewClient) {
            this();
        }
    }

    public AuthDialog(Context context, String authUrl, SendAuthToYX.Req req) {
        super(context, theme);
        this.mIsDetached = false;
        this.mAuthUrl = authUrl;
        this.mContext = context;
        this.req = req;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        notifyThirdPartOAuth(this.mContext, this.req, -4, null);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (!this.mIsDetached) {
            if (this.mLoadingDlg != null && this.mLoadingDlg.isShowing()) {
                this.mLoadingDlg.dismiss();
            }
            super.dismiss();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.mIsDetached = false;
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        if (this.mWebView != null) {
            this.mWebViewContainer.removeView(this.mWebView);
            this.mWebView.stopLoading();
            this.mWebView.removeAllViews();
            this.mWebView.destroy();
            this.mWebView = null;
        }
        this.mIsDetached = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initWindow();
        initLoadingDlg();
        initWebView();
        initCloseButton();
    }

    private void initWindow() {
        requestWindowFeature(1);
        getWindow().setFeatureDrawableAlpha(0, 0);
        getWindow().setSoftInputMode(16);
        this.mRootContainer = new RelativeLayout(getContext());
        this.mRootContainer.setBackgroundColor(0);
        addContentView(this.mRootContainer, new ViewGroup.LayoutParams(-1, -1));
    }

    private void initLoadingDlg() {
        this.mLoadingDlg = new ProgressDialog(getContext());
        this.mLoadingDlg.requestWindowFeature(1);
        this.mLoadingDlg.setMessage(ResourceManager.getString(this.mContext, 1));
    }

    private void initWebView() {
        this.mWebViewContainer = new RelativeLayout(getContext());
        this.mWebView = new WebView(getContext());
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setSavePassword(false);
        this.mWebView.setWebViewClient(new AuthWebViewClient(this, null));
        this.mWebView.requestFocus();
        this.mWebView.setScrollBarStyle(0);
        this.mWebView.setVisibility(4);
        SDKNetworkUtil.clearCookies(this.mContext, this.mAuthUrl);
        this.mWebView.loadUrl(this.mAuthUrl);
        RelativeLayout.LayoutParams webViewContainerLayout = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams webviewLayout = new RelativeLayout.LayoutParams(-1, -1);
        DisplayMetrics dm = getContext().getResources().getDisplayMetrics();
        float density = dm.density;
        int margin = (int) (10.0f * density);
        webviewLayout.setMargins(margin, margin, margin, margin);
        Drawable background = ResourceManager.getNinePatchDrawable(this.mContext, 1);
        this.mWebViewContainer.setBackgroundDrawable(background);
        this.mWebViewContainer.addView(this.mWebView, webviewLayout);
        this.mWebViewContainer.setGravity(17);
        Drawable drawable = ResourceManager.getDrawable(this.mContext, 2);
        int width = (drawable.getIntrinsicWidth() / 2) + 1;
        webViewContainerLayout.setMargins(width, (int) (25.0f * dm.density), width, width);
        this.mRootContainer.addView(this.mWebViewContainer, webViewContainerLayout);
    }

    private void initCloseButton() {
        ImageView closeImage = new ImageView(this.mContext);
        Drawable drawable = ResourceManager.getDrawable(this.mContext, 2);
        closeImage.setImageDrawable(drawable);
        closeImage.setOnClickListener(new View.OnClickListener() { // from class: im.yixin.sdk.util.AuthDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AuthDialog.this.dismiss();
                AuthDialog.notifyThirdPartOAuth(AuthDialog.this.mContext, AuthDialog.this.req, -4, null);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) this.mWebViewContainer.getLayoutParams();
        layoutParams.leftMargin = (params.leftMargin - (drawable.getIntrinsicWidth() / 2)) + 5;
        layoutParams.topMargin = (params.topMargin - (drawable.getIntrinsicHeight() / 2)) + 5;
        this.mRootContainer.addView(closeImage, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRedirectUrl(String url) {
        Bundle values = StringUtil.parseUrl(url);
        String errorType = values.getString("error");
        String errorCode = values.getString("error_code");
        values.getString("error_description");
        String code = values.getString("code");
        if (errorType == null && errorCode == null) {
            notifyThirdPartOAuth(this.mContext, this.req, 0, code);
        } else {
            notifyThirdPartOAuth(this.mContext, this.req, -1, code);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyThirdPartOAuth(Context context, SendAuthToYX.Req req, int errorCode, String code) {
        SendAuthToYX.Resp resp = new SendAuthToYX.Resp();
        resp.errCode = errorCode;
        resp.transaction = req.transaction;
        resp.state = req.state;
        Bundle bundle = new Bundle();
        resp.toBundle(bundle);
        resp.code = code;
        notifyThirdPartApp(context, bundle);
    }

    private static void notifyThirdPartApp(Context context, Bundle bundle) {
        if (context != null && bundle != null) {
            Intent localIntent = new Intent();
            localIntent.setClassName(context.getPackageName(), String.valueOf(context.getPackageName()) + ".yxapi.YXEntryActivity");
            localIntent.putExtras(bundle);
            localIntent.putExtra(YixinConstants.KEY_SDK_VERSION, YixinConstants.VALUE_SDK_VERSION);
            localIntent.putExtra(YixinConstants.KEY_APP_PACKAGE, YixinConstants.YIXIN_APP_PACKAGE_NAME);
            localIntent.putExtra(YixinConstants.KEY_CONTENT, "yixin://resp?appid=99");
            localIntent.putExtra(YixinConstants.KEY_CHECK_SUM, YXMessageUtil.generateCheckSum(String.valueOf("yixin://resp?appid=99") + YixinConstants.VALUE_SDK_VERSION, YixinConstants.YIXIN_APP_PACKAGE_NAME));
            localIntent.addFlags(268435456);
            try {
                context.startActivity(localIntent);
            } catch (Exception ex) {
                SDKLogger.e(AuthDialog.class, "notifyThirdPartApp - send fail", ex);
            }
        }
    }
}
