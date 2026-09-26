package com.netease.mpay.sharer;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class h extends WebViewClient {
    final /* synthetic */ WebView a;
    final /* synthetic */ g b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, WebView webView) {
        this.b = gVar;
        this.a = webView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.a.loadUrl(str);
        return true;
    }
}
