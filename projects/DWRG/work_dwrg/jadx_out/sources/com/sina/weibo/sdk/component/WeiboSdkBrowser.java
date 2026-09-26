package com.sina.weibo.sdk.component;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.component.ShareRequestParam;
import com.sina.weibo.sdk.component.view.LoadingBar;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.AsyncWeiboRunner;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.Utility;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class WeiboSdkBrowser extends Activity implements BrowserRequestCallBack {
    public static final String BROWSER_CLOSE_SCHEME = "sinaweibo://browser/close";
    public static final String BROWSER_WIDGET_SCHEME = "sinaweibo://browser/datatransfer";
    private static final String CANCEL_EN = "Close";
    private static final String CANCEL_ZH_CN = "关闭";
    private static final String CANCEL_ZH_TW = "关闭";
    private static final String CHANNEL_DATA_ERROR_EN = "channel_data_error";
    private static final String CHANNEL_DATA_ERROR_ZH_CN = "重新加载";
    private static final String CHANNEL_DATA_ERROR_ZH_TW = "重新載入";
    private static final String EMPTY_PROMPT_BAD_NETWORK_UI_EN = "A network error occurs, please tap the button to reload";
    private static final String EMPTY_PROMPT_BAD_NETWORK_UI_ZH_CN = "网络出错啦，请点击按钮重新加载";
    private static final String EMPTY_PROMPT_BAD_NETWORK_UI_ZH_TW = "網路出錯啦，請點擊按鈕重新載入";
    private static final String LOADINFO_EN = "Loading....";
    private static final String LOADINFO_ZH_CN = "加载中....";
    private static final String LOADINFO_ZH_TW = "載入中....";
    private static final String TAG = WeiboSdkBrowser.class.getName();
    private static final String WEIBOBROWSER_NO_TITLE_EN = "No Title";
    private static final String WEIBOBROWSER_NO_TITLE_ZH_CN = "无标题";
    private static final String WEIBOBROWSER_NO_TITLE_ZH_TW = "無標題";
    private boolean isErrorPage;
    private Boolean isFromGame = false;
    private boolean isLoading;
    private String mHtmlTitle;
    private TextView mLeftBtn;
    private Button mLoadErrorRetryBtn;
    private LinearLayout mLoadErrorView;
    private LoadingBar mLoadingBar;
    private BrowserRequestParamBase mRequestParam;
    private String mSpecifyTitle;
    private TextView mTitleText;
    private String mUrl;
    private WebView mWebView;
    private WeiboWebViewClient mWeiboWebViewClient;

    public static void startAuth(Context context, String url, AuthInfo authInfo, WeiboAuthListener listener) {
        AuthRequestParam reqParam = new AuthRequestParam(context);
        reqParam.setLauncher(BrowserLauncher.AUTH);
        reqParam.setUrl(url);
        reqParam.setAuthInfo(authInfo);
        reqParam.setAuthListener(listener);
        Intent intent = new Intent(context, (Class<?>) WeiboSdkBrowser.class);
        intent.putExtras(reqParam.createRequestParamBundle());
        context.startActivity(intent);
    }

    public static void startShared(Context context, String url, AuthInfo authInfo, WeiboAuthListener listener) {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!initDataFromIntent(getIntent())) {
            finish();
            return;
        }
        setContentView();
        initWebView();
        if (isWeiboShareRequestParam(this.mRequestParam)) {
            startShare();
        } else {
            openUrl(this.mUrl);
        }
    }

    private boolean initDataFromIntent(Intent data) {
        Bundle bundle = data.getExtras();
        this.mRequestParam = createBrowserRequestParam(bundle);
        if (this.mRequestParam != null) {
            this.mUrl = this.mRequestParam.getUrl();
            this.mSpecifyTitle = this.mRequestParam.getSpecifyTitle();
        } else {
            String url = bundle.getString("key_url");
            String specifyTitle = bundle.getString("key_specify_title");
            if (!TextUtils.isEmpty(url) && url.startsWith("http")) {
                this.mUrl = url;
                this.mSpecifyTitle = specifyTitle;
            }
        }
        if (TextUtils.isEmpty(this.mUrl)) {
            return false;
        }
        LogUtil.d(TAG, "LOAD URL : " + this.mUrl);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUrl(String url) {
        this.mWebView.loadUrl(url);
    }

    private void startShare() {
        LogUtil.d(TAG, "Enter startShare()............");
        final ShareRequestParam req = (ShareRequestParam) this.mRequestParam;
        if (req.hasImage()) {
            LogUtil.d(TAG, "loadUrl hasImage............");
            WeiboParameters param = new WeiboParameters(req.getAppKey());
            new AsyncWeiboRunner(this).requestAsync(ShareRequestParam.UPLOAD_PIC_URL, req.buildUploadPicParam(param), "POST", new RequestListener() { // from class: com.sina.weibo.sdk.component.WeiboSdkBrowser.1
                @Override // com.sina.weibo.sdk.net.RequestListener
                public void onWeiboException(WeiboException e) {
                    LogUtil.d(WeiboSdkBrowser.TAG, "post onWeiboException " + e.getMessage());
                    req.sendSdkErrorResponse(WeiboSdkBrowser.this, e.getMessage());
                    WeiboSdkBrowser.this.finish();
                }

                @Override // com.sina.weibo.sdk.net.RequestListener
                public void onComplete(String response) {
                    LogUtil.d(WeiboSdkBrowser.TAG, "post onComplete : " + response);
                    ShareRequestParam.UploadPicResult result = ShareRequestParam.UploadPicResult.parse(response);
                    if (result != null && result.getCode() == 1 && !TextUtils.isEmpty(result.getPicId())) {
                        WeiboSdkBrowser.this.openUrl(req.buildUrl(result.getPicId()));
                    } else {
                        req.sendSdkErrorResponse(WeiboSdkBrowser.this, "upload pic faild");
                        WeiboSdkBrowser.this.finish();
                    }
                }
            });
            return;
        }
        openUrl(this.mUrl);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void initWebView() {
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        if (isWeiboShareRequestParam(this.mRequestParam)) {
            this.mWebView.getSettings().setUserAgentString(Utility.generateUA(this));
        }
        this.mWebView.getSettings().setSavePassword(false);
        this.mWebView.setWebViewClient(this.mWeiboWebViewClient);
        this.mWebView.setWebChromeClient(new WeiboChromeClient(this, null));
        this.mWebView.requestFocus();
        this.mWebView.setScrollBarStyle(0);
        if (Build.VERSION.SDK_INT >= 11) {
            this.mWebView.removeJavascriptInterface("searchBoxJavaBridge_");
        } else {
            removeJavascriptInterface(this.mWebView);
        }
    }

    private void setTopNavTitle() {
        this.mTitleText.setText(this.mSpecifyTitle);
        this.mLeftBtn.setOnClickListener(new View.OnClickListener() { // from class: com.sina.weibo.sdk.component.WeiboSdkBrowser.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (WeiboSdkBrowser.this.mRequestParam != null) {
                    WeiboSdkBrowser.this.mRequestParam.execRequest(WeiboSdkBrowser.this, 3);
                }
                WeiboSdkBrowser.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitleName() {
        String showTitle = "";
        if (!TextUtils.isEmpty(this.mHtmlTitle)) {
            showTitle = this.mHtmlTitle;
        } else if (!TextUtils.isEmpty(this.mSpecifyTitle)) {
            showTitle = this.mSpecifyTitle;
        }
        this.mTitleText.setText(showTitle);
    }

    private void setContentView() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-1);
        LinearLayout titleBarLy = new LinearLayout(this);
        titleBarLy.setId(1);
        titleBarLy.setOrientation(1);
        titleBarLy.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        View titleBar = initTitleBar();
        TextView shadowBar = new TextView(this);
        shadowBar.setLayoutParams(new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 2)));
        shadowBar.setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "weibosdk_common_shadow_top.9.png"));
        this.mLoadingBar = new LoadingBar(this);
        this.mLoadingBar.setBackgroundColor(0);
        this.mLoadingBar.drawProgress(0);
        LinearLayout.LayoutParams loadingBarLy = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 3));
        this.mLoadingBar.setLayoutParams(loadingBarLy);
        titleBarLy.addView(titleBar);
        titleBarLy.addView(shadowBar);
        titleBarLy.addView(this.mLoadingBar);
        this.mWebView = new WebView(this);
        this.mWebView.setBackgroundColor(-1);
        RelativeLayout.LayoutParams webViewLp = new RelativeLayout.LayoutParams(-1, -1);
        webViewLp.addRule(3, 1);
        this.mWebView.setLayoutParams(webViewLp);
        this.mLoadErrorView = new LinearLayout(this);
        this.mLoadErrorView.setVisibility(8);
        this.mLoadErrorView.setOrientation(1);
        this.mLoadErrorView.setGravity(17);
        RelativeLayout.LayoutParams mLoadErrorViewLp = new RelativeLayout.LayoutParams(-1, -1);
        mLoadErrorViewLp.addRule(3, 1);
        this.mLoadErrorView.setLayoutParams(mLoadErrorViewLp);
        ImageView loadErrorImg = new ImageView(this);
        loadErrorImg.setImageDrawable(ResourceManager.getDrawable(this, "weibosdk_empty_failed.png"));
        LinearLayout.LayoutParams loadErrorImgLp = new LinearLayout.LayoutParams(-2, -2);
        int dp2px = ResourceManager.dp2px(this, 8);
        loadErrorImgLp.bottomMargin = dp2px;
        loadErrorImgLp.rightMargin = dp2px;
        loadErrorImgLp.topMargin = dp2px;
        loadErrorImgLp.leftMargin = dp2px;
        loadErrorImg.setLayoutParams(loadErrorImgLp);
        this.mLoadErrorView.addView(loadErrorImg);
        TextView loadErrorContent = new TextView(this);
        loadErrorContent.setGravity(1);
        loadErrorContent.setTextColor(-4342339);
        loadErrorContent.setTextSize(2, 14.0f);
        loadErrorContent.setText(ResourceManager.getString(this, EMPTY_PROMPT_BAD_NETWORK_UI_EN, EMPTY_PROMPT_BAD_NETWORK_UI_ZH_CN, EMPTY_PROMPT_BAD_NETWORK_UI_ZH_TW));
        LinearLayout.LayoutParams loadErrorContentLp = new LinearLayout.LayoutParams(-2, -2);
        loadErrorContent.setLayoutParams(loadErrorContentLp);
        this.mLoadErrorView.addView(loadErrorContent);
        this.mLoadErrorRetryBtn = new Button(this);
        this.mLoadErrorRetryBtn.setGravity(17);
        this.mLoadErrorRetryBtn.setTextColor(-8882056);
        this.mLoadErrorRetryBtn.setTextSize(2, 16.0f);
        this.mLoadErrorRetryBtn.setText(ResourceManager.getString(this, CHANNEL_DATA_ERROR_EN, CHANNEL_DATA_ERROR_ZH_CN, CHANNEL_DATA_ERROR_ZH_TW));
        this.mLoadErrorRetryBtn.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "weibosdk_common_button_alpha.9.png", "weibosdk_common_button_alpha_highlighted.9.png"));
        LinearLayout.LayoutParams loadErrorRetryBtnLp = new LinearLayout.LayoutParams(ResourceManager.dp2px(this, 142), ResourceManager.dp2px(this, 46));
        loadErrorRetryBtnLp.topMargin = ResourceManager.dp2px(this, 10);
        this.mLoadErrorRetryBtn.setLayoutParams(loadErrorRetryBtnLp);
        this.mLoadErrorRetryBtn.setOnClickListener(new View.OnClickListener() { // from class: com.sina.weibo.sdk.component.WeiboSdkBrowser.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                WeiboSdkBrowser.this.openUrl(WeiboSdkBrowser.this.mUrl);
                WeiboSdkBrowser.this.isErrorPage = false;
            }
        });
        this.mLoadErrorView.addView(this.mLoadErrorRetryBtn);
        relativeLayout.addView(titleBarLy);
        relativeLayout.addView(this.mWebView);
        relativeLayout.addView(this.mLoadErrorView);
        setContentView(relativeLayout);
        setTopNavTitle();
    }

    private View initTitleBar() {
        RelativeLayout titleBar = new RelativeLayout(this);
        titleBar.setLayoutParams(new ViewGroup.LayoutParams(-1, ResourceManager.dp2px(this, 45)));
        titleBar.setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "weibosdk_navigationbar_background.9.png"));
        this.mLeftBtn = new TextView(this);
        this.mLeftBtn.setClickable(true);
        this.mLeftBtn.setTextSize(2, 17.0f);
        this.mLeftBtn.setTextColor(ResourceManager.createColorStateList(-32256, 1728020992));
        this.mLeftBtn.setText(ResourceManager.getString(this, CANCEL_EN, "关闭", "关闭"));
        RelativeLayout.LayoutParams leftBtnLp = new RelativeLayout.LayoutParams(-2, -2);
        leftBtnLp.addRule(5);
        leftBtnLp.addRule(15);
        leftBtnLp.leftMargin = ResourceManager.dp2px(this, 10);
        leftBtnLp.rightMargin = ResourceManager.dp2px(this, 10);
        this.mLeftBtn.setLayoutParams(leftBtnLp);
        titleBar.addView(this.mLeftBtn);
        this.mTitleText = new TextView(this);
        this.mTitleText.setTextSize(2, 18.0f);
        this.mTitleText.setTextColor(-11382190);
        this.mTitleText.setEllipsize(TextUtils.TruncateAt.END);
        this.mTitleText.setSingleLine(true);
        this.mTitleText.setGravity(17);
        this.mTitleText.setMaxWidth(ResourceManager.dp2px(this, 160));
        RelativeLayout.LayoutParams titleTextLy = new RelativeLayout.LayoutParams(-2, -2);
        titleTextLy.addRule(13);
        this.mTitleText.setLayoutParams(titleTextLy);
        titleBar.addView(this.mTitleText);
        return titleBar;
    }

    protected void refreshAllViews() {
        if (this.isLoading) {
            setViewLoading();
        } else {
            setViewNormal();
        }
    }

    private void setViewNormal() {
        updateTitleName();
        this.mLoadingBar.setVisibility(8);
    }

    private void setViewLoading() {
        this.mTitleText.setText(ResourceManager.getString(this, LOADINFO_EN, LOADINFO_ZH_CN, LOADINFO_ZH_TW));
        this.mLoadingBar.setVisibility(0);
    }

    private void handleReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        if (!failingUrl.startsWith("sinaweibo")) {
            this.isErrorPage = true;
            promptError();
        }
    }

    private void promptError() {
        this.mLoadErrorView.setVisibility(0);
        this.mWebView.setVisibility(8);
    }

    private void hiddenErrorPrompt() {
        this.mLoadErrorView.setVisibility(8);
        this.mWebView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WeiboChromeClient extends WebChromeClient {
        private WeiboChromeClient() {
        }

        /* synthetic */ WeiboChromeClient(WeiboSdkBrowser weiboSdkBrowser, WeiboChromeClient weiboChromeClient) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int newProgress) {
            WeiboSdkBrowser.this.mLoadingBar.drawProgress(newProgress);
            if (newProgress == 100) {
                WeiboSdkBrowser.this.isLoading = false;
                WeiboSdkBrowser.this.refreshAllViews();
            } else if (!WeiboSdkBrowser.this.isLoading) {
                WeiboSdkBrowser.this.isLoading = true;
                WeiboSdkBrowser.this.refreshAllViews();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            if (!WeiboSdkBrowser.this.isWeiboCustomScheme(WeiboSdkBrowser.this.mUrl) && !WeiboSdkBrowser.this.isFromGame.booleanValue()) {
                WeiboSdkBrowser.this.mHtmlTitle = title;
                WeiboSdkBrowser.this.updateTitleName();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWeiboCustomScheme(String url) {
        return !TextUtils.isEmpty(url) && "sinaweibo".equalsIgnoreCase(Uri.parse(url).getAuthority());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        NetworkHelper.clearCookies(this);
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyUp(keyCode, event);
        }
        if (this.mRequestParam != null) {
            this.mRequestParam.execRequest(this, 3);
        }
        finish();
        return true;
    }

    private BrowserRequestParamBase createBrowserRequestParam(Bundle data) {
        this.isFromGame = false;
        BrowserRequestParamBase result = null;
        BrowserLauncher launcher = (BrowserLauncher) data.getSerializable(BrowserRequestParamBase.EXTRA_KEY_LAUNCHER);
        if (launcher == BrowserLauncher.AUTH) {
            AuthRequestParam authRequestParam = new AuthRequestParam(this);
            authRequestParam.setupRequestParam(data);
            installAuthWeiboWebViewClient(authRequestParam);
            return authRequestParam;
        }
        if (launcher == BrowserLauncher.SHARE) {
            ShareRequestParam shareRequestParam = new ShareRequestParam(this);
            shareRequestParam.setupRequestParam(data);
            installShareWeiboWebViewClient(shareRequestParam);
            result = shareRequestParam;
        } else if (launcher == BrowserLauncher.WIDGET) {
            WidgetRequestParam widgetRequestParam = new WidgetRequestParam(this);
            widgetRequestParam.setupRequestParam(data);
            installWidgetWeiboWebViewClient(widgetRequestParam);
            result = widgetRequestParam;
        } else if (launcher == BrowserLauncher.GAME) {
            this.isFromGame = true;
            GameRequestParam gameRequestParam = new GameRequestParam(this);
            gameRequestParam.setupRequestParam(data);
            installWeiboWebGameClient(gameRequestParam);
            result = gameRequestParam;
        }
        return result;
    }

    private boolean isWeiboShareRequestParam(BrowserRequestParamBase reqParam) {
        return reqParam != null && reqParam.getLauncher() == BrowserLauncher.SHARE;
    }

    private void installAuthWeiboWebViewClient(AuthRequestParam param) {
        this.mWeiboWebViewClient = new AuthWeiboWebViewClient(this, param);
        this.mWeiboWebViewClient.setBrowserRequestCallBack(this);
    }

    private void installShareWeiboWebViewClient(ShareRequestParam param) {
        ShareWeiboWebViewClient client = new ShareWeiboWebViewClient(this, param);
        client.setBrowserRequestCallBack(this);
        this.mWeiboWebViewClient = client;
    }

    private void installWidgetWeiboWebViewClient(WidgetRequestParam param) {
        WidgetWeiboWebViewClient client = new WidgetWeiboWebViewClient(this, param);
        client.setBrowserRequestCallBack(this);
        this.mWeiboWebViewClient = client;
    }

    private void installWeiboWebGameClient(GameRequestParam param) {
        WeiboGameClient client = new WeiboGameClient(this, param);
        client.setBrowserRequestCallBack(this);
        this.mWeiboWebViewClient = client;
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestCallBack
    public void onPageStartedCallBack(WebView view, String url, Bitmap favicon) {
        LogUtil.d(TAG, "onPageStarted URL: " + url);
        this.mUrl = url;
        if (!isWeiboCustomScheme(url)) {
            this.mHtmlTitle = "";
        }
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestCallBack
    public boolean shouldOverrideUrlLoadingCallBack(WebView view, String url) {
        LogUtil.i(TAG, "shouldOverrideUrlLoading URL: " + url);
        return false;
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestCallBack
    public void onPageFinishedCallBack(WebView view, String url) {
        LogUtil.d(TAG, "onPageFinished URL: " + url);
        if (this.isErrorPage) {
            promptError();
        } else {
            this.isErrorPage = false;
            hiddenErrorPrompt();
        }
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestCallBack
    public void onReceivedErrorCallBack(WebView view, int errorCode, String description, String failingUrl) {
        LogUtil.d(TAG, "onReceivedError: errorCode = " + errorCode + ", description = " + description + ", failingUrl = " + failingUrl);
        handleReceivedError(view, errorCode, description, failingUrl);
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestCallBack
    public void onReceivedSslErrorCallBack(WebView view, SslErrorHandler handler, SslError error) {
        LogUtil.d(TAG, "onReceivedSslErrorCallBack.........");
    }

    public static void closeBrowser(Activity act, String authListenerKey, String widgetRequestCallbackKey) {
        WeiboCallbackManager manager = WeiboCallbackManager.getInstance(act.getApplicationContext());
        if (!TextUtils.isEmpty(authListenerKey)) {
            manager.removeWeiboAuthListener(authListenerKey);
            act.finish();
        }
        if (!TextUtils.isEmpty(widgetRequestCallbackKey)) {
            manager.removeWidgetRequestCallback(widgetRequestCallbackKey);
            act.finish();
        }
    }

    public void removeJavascriptInterface(WebView webView) {
        if (Build.VERSION.SDK_INT < 11) {
            try {
                Class<?> clazz = webView.getClass();
                Method m1 = clazz.getDeclaredMethod("removeJavascriptInterface", new Class[0]);
                m1.invoke("searchBoxJavaBridge_", new Object[0]);
            } catch (Exception e) {
                LogUtil.e(TAG, e.toString());
            }
        }
    }
}
