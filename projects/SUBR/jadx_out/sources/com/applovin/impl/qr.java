package com.applovin.impl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class qr extends pi {
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private WebView c;
    private boolean d;
    private final Set e = Collections.synchronizedSet(new HashSet());

    public qr(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
    }

    public void b(final String str) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("WebTrackerManager", "Failed to fire tracker due to empty script string");
            }
        } else {
            if (!str.startsWith("<script")) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.b("WebTrackerManager", "Failed to fire tracker due to improperly formatted script tag");
                    return;
                }
                return;
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.qr$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        final WebView webViewA = a(str);
        if (webViewA == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("WebTrackerManager", "Failed to fire tracker since web view could not be created");
            }
        } else {
            this.e.add(webViewA);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.qr$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(webViewA);
                }
            }, ((Integer) this.a.a(sj.N2)).intValue());
        }
    }

    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            com.applovin.impl.sdk.n unused = qr.this.b;
            if (com.applovin.impl.sdk.n.a()) {
                qr.this.b.a("WebTrackerManager", "Successfully initialized web view for postbacks");
            }
            qr.this.d = true;
        }
    }

    private boolean d() {
        return ((Boolean) this.a.a(sj.S2)).booleanValue();
    }

    public void c() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.qr$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b();
            }
        });
    }

    @Override // com.applovin.impl.pi, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (webView == this.c) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.qr$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a();
                }
            });
        } else {
            b(webView);
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(final WebView webView) {
        if (webView == null || !this.e.remove(webView)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.qr$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                webView.destroy();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.network.e eVar, AppLovinPostbackListener appLovinPostbackListener) {
        String strAppendQueryParameters = StringUtils.appendQueryParameters(eVar.f(), eVar.i(), ((Boolean) this.a.a(sj.k3)).booleanValue());
        if (this.c == null) {
            WebView webViewA = a("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>", true);
            this.c = webViewA;
            if (webViewA == null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.b("WebTrackerManager", "Failed to fire postback since web view could not be created");
                }
                appLovinPostbackListener.onPostbackFailure(strAppendQueryParameters, -1);
                return;
            }
        }
        if (d() && !this.d) {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("WebTrackerManager", "Failed to fire postback since web view was not initialized in time");
            }
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("top_main_method", "firePostback");
            mapHashMap.put("url", strAppendQueryParameters);
            this.a.D().a(ka.d0, (Map) mapHashMap);
            appLovinPostbackListener.onPostbackFailure(strAppendQueryParameters, -1);
            return;
        }
        tr.a(this.c, "al_firePostback('" + strAppendQueryParameters + "')");
        appLovinPostbackListener.onPostbackSuccess(strAppendQueryParameters);
    }

    private WebView a(String str) {
        return a(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        WebView webViewA = a("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>", true);
        this.c = webViewA;
        if (webViewA == null && com.applovin.impl.sdk.n.a()) {
            this.b.b("WebTrackerManager", "Failed to preload postback web view");
        }
    }

    public void a(final com.applovin.impl.sdk.network.e eVar, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.qr$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(eVar, appLovinPostbackListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.c.destroy();
        this.c = null;
    }

    private WebView a(String str, boolean z) {
        yp.b();
        WebView webViewB = yp.b(com.applovin.impl.sdk.j.m(), "web tracker");
        if (webViewB == null) {
            return null;
        }
        webViewB.getSettings().setJavaScriptEnabled(true);
        webViewB.setWebViewClient(this);
        if (z && d()) {
            webViewB.setWebViewClient(new a());
        }
        webViewB.loadData("<html><head><link rel=\"icon\" href=\"data:,\">" + str + "</head><body></body></html>", "text/html", "UTF-8");
        return webViewB;
    }
}
