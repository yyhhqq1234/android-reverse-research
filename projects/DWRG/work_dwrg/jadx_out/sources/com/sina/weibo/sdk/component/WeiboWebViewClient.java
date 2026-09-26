package com.sina.weibo.sdk.component;

import android.webkit.WebViewClient;

/* loaded from: classes.dex */
abstract class WeiboWebViewClient extends WebViewClient {
    protected BrowserRequestCallBack mCallBack;

    public void setBrowserRequestCallBack(BrowserRequestCallBack callback) {
        this.mCallBack = callback;
    }
}
