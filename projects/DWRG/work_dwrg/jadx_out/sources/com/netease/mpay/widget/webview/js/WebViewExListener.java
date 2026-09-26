package com.netease.mpay.widget.webview.js;

import android.graphics.Bitmap;
import android.webkit.WebView;

/* loaded from: classes.dex */
public interface WebViewExListener extends InjectedJsExternalInterface {
    void onPageFinished(WebView webView, String str);

    void onPageStarted(WebView webView, String str, Bitmap bitmap);

    void onReceivedError(WebView webView, int i, String str, String str2);

    void onReceivedTitle(WebView webView, String str);

    boolean shouldOverrideUrlLoading(WebView webView, String str);
}
