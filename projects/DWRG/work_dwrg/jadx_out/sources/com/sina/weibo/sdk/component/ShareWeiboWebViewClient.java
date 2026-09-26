package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.utils.Utility;

/* loaded from: classes.dex */
class ShareWeiboWebViewClient extends WeiboWebViewClient {
    private static final String RESP_PARAM_CODE = "code";
    private static final String RESP_PARAM_MSG = "msg";
    private static final String RESP_SUCC_CODE = "0";
    private Activity mAct;
    private WeiboAuthListener mListener;
    private ShareRequestParam mShareRequestParam;

    public ShareWeiboWebViewClient(Activity activity, ShareRequestParam requestParam) {
        this.mAct = activity;
        this.mShareRequestParam = requestParam;
        this.mListener = requestParam.getAuthListener();
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        if (this.mCallBack != null) {
            this.mCallBack.onPageStartedCallBack(view, url, favicon);
        }
        super.onPageStarted(view, url, favicon);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (this.mCallBack != null) {
            this.mCallBack.shouldOverrideUrlLoadingCallBack(view, url);
        }
        if (url.startsWith(WeiboSdkBrowser.BROWSER_CLOSE_SCHEME)) {
            Bundle bundle = Utility.parseUri(url);
            if (!bundle.isEmpty() && this.mListener != null) {
                this.mListener.onComplete(bundle);
            }
            String errCode = bundle.getString("code");
            String errMsg = bundle.getString("msg");
            if (TextUtils.isEmpty(errCode)) {
                this.mShareRequestParam.sendSdkCancleResponse(this.mAct);
            } else if (!"0".equals(errCode)) {
                this.mShareRequestParam.sendSdkErrorResponse(this.mAct, errMsg);
            } else {
                this.mShareRequestParam.sendSdkOkResponse(this.mAct);
            }
            WeiboSdkBrowser.closeBrowser(this.mAct, this.mShareRequestParam.getAuthListenerKey(), null);
            return true;
        }
        return super.shouldOverrideUrlLoading(view, url);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        if (this.mCallBack != null) {
            this.mCallBack.onPageFinishedCallBack(view, url);
        }
        super.onPageFinished(view, url);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        if (this.mCallBack != null) {
            this.mCallBack.onReceivedErrorCallBack(view, errorCode, description, failingUrl);
        }
        this.mShareRequestParam.sendSdkErrorResponse(this.mAct, description);
        WeiboSdkBrowser.closeBrowser(this.mAct, this.mShareRequestParam.getAuthListenerKey(), null);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        if (this.mCallBack != null) {
            this.mCallBack.onReceivedSslErrorCallBack(view, handler, error);
        }
        handler.cancel();
        this.mShareRequestParam.sendSdkErrorResponse(this.mAct, "ReceivedSslError");
        WeiboSdkBrowser.closeBrowser(this.mAct, this.mShareRequestParam.getAuthListenerKey(), null);
    }
}
