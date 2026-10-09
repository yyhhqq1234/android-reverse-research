package com.applovin.impl.adview;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;

/* JADX INFO: loaded from: classes.dex */
class d {
    private final com.applovin.impl.sdk.j a;
    private final WebViewRenderProcessClient b = new a();

    class a extends WebViewRenderProcessClient {
        a() {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof b) {
                com.applovin.impl.sdk.ad.b currentAd = ((b) webView).getCurrentAd();
                d.this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    d.this.a.I().b("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
                }
            }
        }
    }

    d(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
    }

    WebViewRenderProcessClient a() {
        return this.b;
    }
}
