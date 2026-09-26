package com.netease.epay.sdk.base.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.netease.environment.config.SdkConstants;
import com.netease.epay.sdk.base.BuildConfig;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.util.CookieUtil;
import java.util.Map;

/* loaded from: classes.dex */
public class BaseWebView extends WebView {
    DownloadListener downloadListener;
    private boolean isDestroy;
    private boolean isPageClosePrompt;
    private String pageClosePromptInfo;

    public BaseWebView(Context context) {
        super(context);
        this.isDestroy = false;
        this.isPageClosePrompt = false;
        this.pageClosePromptInfo = null;
        this.downloadListener = new DownloadListener() { // from class: com.netease.epay.sdk.base.view.BaseWebView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
                if (!TextUtils.isEmpty(url)) {
                    try {
                        BaseWebView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        };
    }

    public BaseWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.isDestroy = false;
        this.isPageClosePrompt = false;
        this.pageClosePromptInfo = null;
        this.downloadListener = new DownloadListener() { // from class: com.netease.epay.sdk.base.view.BaseWebView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
                if (!TextUtils.isEmpty(url)) {
                    try {
                        BaseWebView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        };
    }

    public BaseWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.isDestroy = false;
        this.isPageClosePrompt = false;
        this.pageClosePromptInfo = null;
        this.downloadListener = new DownloadListener() { // from class: com.netease.epay.sdk.base.view.BaseWebView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
                if (!TextUtils.isEmpty(url)) {
                    try {
                        BaseWebView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        };
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public BaseWebView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.isDestroy = false;
        this.isPageClosePrompt = false;
        this.pageClosePromptInfo = null;
        this.downloadListener = new DownloadListener() { // from class: com.netease.epay.sdk.base.view.BaseWebView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
                if (!TextUtils.isEmpty(url)) {
                    try {
                        BaseWebView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        };
    }

    @Override // android.webkit.WebView
    public WebBackForwardList copyBackForwardList() {
        if (this.isDestroy) {
            return null;
        }
        return super.copyBackForwardList();
    }

    @Override // android.webkit.WebView
    public void loadUrl(String url) {
        if (!this.isDestroy) {
            super.loadUrl(url);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String url, Map<String, String> additionalHttpHeaders) {
        if (!this.isDestroy) {
            super.loadUrl(url, additionalHttpHeaders);
        }
    }

    @Override // android.webkit.WebView
    public void postUrl(String url, byte[] postData) {
        if (!this.isDestroy) {
            super.postUrl(url, postData);
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String baseUrl, String data, String mimeType, String encoding, String historyUrl) {
        if (!this.isDestroy) {
            super.loadDataWithBaseURL(baseUrl, data, mimeType, encoding, historyUrl);
        }
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String script, ValueCallback<String> resultCallback) {
        if (!this.isDestroy) {
            super.evaluateJavascript(script, resultCallback);
        }
    }

    @Override // android.webkit.WebView
    public void saveWebArchive(String filename) {
        if (!this.isDestroy) {
            super.saveWebArchive(filename);
        }
    }

    @Override // android.webkit.WebView
    public void saveWebArchive(String basename, boolean autoname, ValueCallback<String> callback) {
        if (!this.isDestroy) {
            super.saveWebArchive(basename, autoname, callback);
        }
    }

    public void setHyBridConfigs() {
        setVerticalScrollBarEnabled(false);
        setDownloadListener(this.downloadListener);
        try {
            getSettings().setJavaScriptEnabled(true);
        } catch (Exception e) {
        }
        getSettings().setDomStorageEnabled(true);
        getSettings().setSaveFormData(false);
        getSettings().setSavePassword(false);
        getSettings().setSupportZoom(false);
        getSettings().setBuiltInZoomControls(false);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setUseWideViewPort(true);
        getSettings().setTextZoom(100);
        if (Build.VERSION.SDK_INT >= 21) {
            getSettings().setMixedContentMode(0);
        }
        String replace = BuildConfig.VERSION_NAME.replace(SdkConstants.SYSTEM, "");
        StringBuilder sb = new StringBuilder(getSettings().getUserAgentString());
        sb.append(" ").append(BaseConstants.WEBVIEW_USER_AGENT).append("/").append(replace);
        getSettings().setUserAgentString(sb.toString());
        if (Build.VERSION.SDK_INT > 10) {
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
            if (Build.VERSION.SDK_INT < 17) {
                removeJavascriptInterface("searchBoxJavaBridge_");
            }
        }
        if (shouldDisableHardwareRenderInLayer()) {
            try {
                setLayerType(1, null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void loadUrlWithCookie(String theUrl, String ntesCookie) {
        if (!TextUtils.isEmpty(ntesCookie)) {
            CookieUtil.setCookie(getContext(), this, theUrl, ntesCookie);
        }
        loadUrl(theUrl);
    }

    @Override // android.webkit.WebView
    public void reload() {
        if (!this.isDestroy) {
            super.reload();
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoBack() {
        if (this.isDestroy) {
            return false;
        }
        return super.canGoBack();
    }

    @Override // android.webkit.WebView
    public void goBack() {
        if (!this.isDestroy) {
            super.goBack();
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoForward() {
        if (this.isDestroy) {
            return false;
        }
        return super.canGoForward();
    }

    @Override // android.webkit.WebView
    public void goForward() {
        if (!this.isDestroy) {
            super.goForward();
        }
    }

    @Override // android.webkit.WebView
    public boolean canGoBackOrForward(int steps) {
        if (this.isDestroy) {
            return false;
        }
        return super.canGoBackOrForward(steps);
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(int steps) {
        if (!this.isDestroy) {
            super.goBackOrForward(steps);
        }
    }

    @Override // android.webkit.WebView
    public boolean pageUp(boolean top) {
        if (this.isDestroy) {
            return false;
        }
        return super.pageUp(top);
    }

    @Override // android.webkit.WebView
    public boolean pageDown(boolean bottom) {
        if (this.isDestroy) {
            return false;
        }
        return super.pageDown(bottom);
    }

    @Override // android.webkit.WebView
    public String getUrl() {
        if (this.isDestroy) {
            return null;
        }
        return super.getUrl();
    }

    @Override // android.webkit.WebView
    public String getOriginalUrl() {
        if (this.isDestroy) {
            return null;
        }
        return super.getOriginalUrl();
    }

    @Override // android.webkit.WebView
    public String getTitle() {
        if (this.isDestroy) {
            return null;
        }
        return super.getTitle();
    }

    @Override // android.webkit.WebView
    public Bitmap getFavicon() {
        if (this.isDestroy) {
            return null;
        }
        return super.getFavicon();
    }

    @Override // android.webkit.WebView
    public int getProgress() {
        if (this.isDestroy) {
            return 0;
        }
        return super.getProgress();
    }

    @Override // android.webkit.WebView
    public int getContentHeight() {
        if (this.isDestroy) {
            return 0;
        }
        return super.getContentHeight();
    }

    @Override // android.webkit.WebView
    public void pauseTimers() {
        if (!this.isDestroy) {
            super.pauseTimers();
        }
    }

    @Override // android.webkit.WebView
    public void resumeTimers() {
        if (!this.isDestroy) {
            super.resumeTimers();
        }
    }

    @Override // android.webkit.WebView
    public void onPause() {
        if (!this.isDestroy) {
            super.onPause();
        }
    }

    @Override // android.webkit.WebView
    public void onResume() {
        if (!this.isDestroy) {
            super.onResume();
        }
    }

    @Override // android.webkit.WebView
    public void clearFormData() {
        if (!this.isDestroy) {
            super.clearFormData();
        }
    }

    @Override // android.webkit.WebView
    public void clearHistory() {
        if (!this.isDestroy) {
            super.clearHistory();
        }
    }

    @Override // android.webkit.WebView
    public void clearSslPreferences() {
        if (!this.isDestroy) {
            super.clearSslPreferences();
        }
    }

    @Override // android.webkit.WebView
    public void findNext(boolean forward) {
        if (!this.isDestroy) {
            super.findNext(forward);
        }
    }

    @Override // android.webkit.WebView
    public void findAllAsync(String find) {
        if (!this.isDestroy) {
            super.findAllAsync(find);
        }
    }

    @Override // android.webkit.WebView
    public WebBackForwardList saveState(Bundle outState) {
        if (this.isDestroy) {
            return null;
        }
        return super.saveState(outState);
    }

    @Override // android.webkit.WebView
    public WebBackForwardList restoreState(Bundle inState) {
        if (this.isDestroy) {
            return null;
        }
        return super.restoreState(inState);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
        this.isDestroy = true;
    }

    public void setPageClosePrompt(boolean isPageClosePrompt, String pageClosePromptInfo) {
        this.isPageClosePrompt = isPageClosePrompt;
        this.pageClosePromptInfo = pageClosePromptInfo;
    }

    public String getPageClosePromptInfo() {
        if (this.isPageClosePrompt) {
            return this.pageClosePromptInfo;
        }
        return null;
    }

    private boolean shouldDisableHardwareRenderInLayer() {
        return (Build.MODEL != null && Build.MODEL.contains("GT-I95") && Build.MANUFACTURER != null && Build.MANUFACTURER.equals("samsung")) && (Build.VERSION.SDK_INT == 18);
    }
}
