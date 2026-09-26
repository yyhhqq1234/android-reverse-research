package com.netease.mpay.widget.webview.js;

import android.app.Activity;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class j extends c {
    final /* synthetic */ WebViewExListener c;
    final /* synthetic */ WebViewEx d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(WebViewEx webViewEx, Activity activity, Config config, e eVar, WebViewExListener webViewExListener) {
        super(activity, config, eVar);
        this.d = webViewEx;
        this.c = webViewExListener;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        this.c.onReceivedTitle(webView, str);
    }
}
