package com.netease.epay.sdk.base.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.netease.epay.sdk.BuildConfig;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.hybrid.Hybrid;
import com.netease.epay.sdk.base.hybrid.common.JSEventHelper;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.BaseWebView;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes.dex */
public class WebViewFragment extends FullSdkFragment {
    protected static final String COOKIE_KEY = "WebView_cookie";
    protected static final String NEED_TITLE_KEY = "WebView_isNeedTitle";
    protected static final String SCHEME_EPAY_APP = "epay163";
    protected static final String URL_KEY = "WebView_postUrl";
    private ActivityTitleBar bar;
    private String cookie;
    private boolean hideActionMenu;
    private Hybrid hybrid;
    private String postUrl;
    private ProgressBar progressBar;
    private TextView tvHostInfo;
    private View viewBack;
    private View viewClose;
    private BaseWebView webView;
    private boolean needTitle = true;
    WebViewClient webViewClient = new WebViewClient() { // from class: com.netease.epay.sdk.base.ui.WebViewFragment.1
        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (url.startsWith(WebViewFragment.SCHEME_EPAY_APP)) {
                return true;
            }
            if (!url.startsWith("tel:")) {
                if (WebViewFragment.this.progressBar != null) {
                    WebViewFragment.this.progressBar.setVisibility(0);
                }
                return super.shouldOverrideUrlLoading(view, url);
            }
            WebViewFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            WebViewFragment.this.restoreActionMenu();
            super.onPageStarted(view, url, favicon);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            WebViewFragment.this.setTitleText(WebViewFragment.this.webView.getTitle());
            try {
                WebViewFragment.this.tvHostInfo.setText(String.format("网页由 %s 提供", new URL(url).getHost()));
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            JSEventHelper.onWebViewDidFinishLoad(view, null);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            if (WebViewFragment.this.getContext().getPackageName() != null && WebViewFragment.this.getContext().getPackageName().startsWith(BuildConfig.APPLICATION_ID)) {
                handler.proceed();
            } else {
                super.onReceivedSslError(view, handler, error);
            }
        }
    };
    WebChromeClient webChromeClient = new WebChromeClient() { // from class: com.netease.epay.sdk.base.ui.WebViewFragment.2
        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int newProgress) {
            if (WebViewFragment.this.progressBar != null) {
                if (newProgress < 100) {
                    WebViewFragment.this.progressBar.setProgress(newProgress);
                } else {
                    WebViewFragment.this.progressBar.setVisibility(8);
                }
            }
            if (WebViewFragment.this.hybrid != null) {
                WebViewFragment.this.hybrid.initJSBridge(view, newProgress);
            }
            super.onProgressChanged(view, newProgress);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            super.onReceivedTitle(view, title);
            WebViewFragment.this.setTitleText(title);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
            if (WebViewFragment.this.hybrid == null || !WebViewFragment.this.hybrid.handlePrompt(view, message, defaultValue, result)) {
                return super.onJsPrompt(view, url, message, defaultValue, result);
            }
            return true;
        }
    };
    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.netease.epay.sdk.base.ui.WebViewFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (v == WebViewFragment.this.viewBack) {
                WebViewFragment.this.back(v);
            } else if (v == WebViewFragment.this.viewClose) {
                WebViewFragment.this.finish();
            }
        }
    };
    boolean isInited = false;

    public static WebViewFragment newInstance(boolean isNeedTitle, String postUrl) {
        return newInstance(isNeedTitle, postUrl, null);
    }

    public static WebViewFragment newInstance(boolean isNeedTitle, String postUrl, String cookie) {
        WebViewFragment webViewFragment = new WebViewFragment();
        Bundle bundle = new Bundle();
        bundle.putString(URL_KEY, postUrl);
        bundle.putBoolean(NEED_TITLE_KEY, isNeedTitle);
        bundle.putString(COOKIE_KEY, cookie);
        webViewFragment.setArguments(bundle);
        return webViewFragment;
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.epaysdk_frag_webview, (ViewGroup) null);
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.needTitle = arguments.getBoolean(NEED_TITLE_KEY, true);
            this.postUrl = arguments.getString(URL_KEY, "https://epay.163.com");
            this.cookie = arguments.getString(COOKIE_KEY, "");
        }
        this.bar = (ActivityTitleBar) this.rootView.findViewById(R.id.atb);
        this.viewBack = this.bar.findViewById(R.id.ivBack);
        this.viewClose = this.bar.findViewById(R.id.ivClose);
        this.webView = (BaseWebView) view.findViewById(R.id.webView);
        this.webView.setHyBridConfigs();
        this.webView.setWebViewClient(this.webViewClient);
        this.webView.setWebChromeClient(this.webChromeClient);
        this.tvHostInfo = (TextView) view.findViewById(R.id.tv_web_host);
        if (this.needTitle) {
            this.progressBar = (ProgressBar) this.rootView.findViewById(R.id.progressbar);
            initProgressBar();
            this.viewClose.setOnClickListener(this.onClickListener);
            this.viewBack.setOnClickListener(this.onClickListener);
        } else {
            this.bar.setVisibility(8);
        }
        this.hybrid = new Hybrid();
        if (TextUtils.isEmpty(this.cookie)) {
            this.cookie = BaseData.cookie;
        }
        this.webView.loadUrlWithCookie(this.postUrl, this.cookie);
    }

    private void initProgressBar() {
        if (this.progressBar != null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new ColorDrawable(Color.parseColor("#ffffff")), new ClipDrawable(new ColorDrawable(SdkConfig.getMainColor()), 3, 1)});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.progress);
            this.progressBar.setProgressDrawable(layerDrawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitleText(String title) {
        if (title != null && title.length() > 9) {
            title = title.substring(0, 9) + "...";
        }
        if (!TextUtils.isEmpty(title)) {
            this.bar.setTitle(title);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.webView != null) {
            this.webView.setWebChromeClient(null);
            this.webView.setWebViewClient(null);
            ((ViewGroup) this.webView.getParent()).removeView(this.webView);
            this.webView.removeAllViews();
            this.webView.destroy();
        }
    }

    @Deprecated
    public void hideActionMenuAndLostBackKey() {
        this.hideActionMenu = true;
        this.bar.saveActionMenuStates();
        this.bar.setBackShow(false);
        this.bar.setCloseShow(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreActionMenu() {
        this.hideActionMenu = false;
        this.bar.restoreActionMenuStatus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void back(View v) {
        if (!this.hideActionMenu) {
            if (this.webView != null && this.webView.canGoBack()) {
                this.webView.goBack();
            } else {
                this.onClickListener.onClick(this.viewClose);
            }
        }
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment
    public boolean backKeyAction() {
        back(null);
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.isInited) {
            JSEventHelper.onWebViewDidAppear(this.webView, null);
        }
        this.isInited = true;
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        JSEventHelper.onWebViewDidDisappear(this.webView, null);
    }

    public void finish() {
        final String pageClosePromptInfo = this.webView != null ? this.webView.getPageClosePromptInfo() : null;
        if (!TextUtils.isEmpty(pageClosePromptInfo)) {
            TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.base.ui.WebViewFragment.4
                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void rightClick() {
                    if (WebViewFragment.this.getActivity() != null && !WebViewFragment.this.getActivity().isFinishing()) {
                        WebViewFragment.this.getActivity().finish();
                    }
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void leftClick() {
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getMsg() {
                    return pageClosePromptInfo;
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getLeft() {
                    return "取消";
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getRight() {
                    return "关闭";
                }
            }).show(getFragmentManager(), "exitConfirm");
        } else if (getActivity() != null && !getActivity().isFinishing()) {
            getActivity().finish();
        }
    }
}
