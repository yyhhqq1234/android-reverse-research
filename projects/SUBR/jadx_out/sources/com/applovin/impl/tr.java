package com.applovin.impl;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.ads.adplayer.AndroidWebViewClient;

/* JADX INFO: loaded from: classes.dex */
public abstract class tr {
    public static void d(final WebView webView) {
        if (webView == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.tr$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                tr.c(webView);
            }
        });
    }

    public static void a(final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.tr$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                tr.b(webView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(WebView webView) {
        ViewParent parent = webView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(webView);
        }
        webView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
        webView.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(WebView webView, String str) {
        if (z3.e()) {
            webView.evaluateJavascript(str, null);
            return;
        }
        webView.loadUrl("javascript:" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(WebView webView) {
        a(webView);
        webView.removeAllViews();
        webView.destroyDrawingCache();
        webView.destroy();
    }

    public static void a(final WebView webView, final String str) {
        if (webView == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.tr$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                tr.b(webView, str);
            }
        });
    }

    public static void a(final WebView webView, final String str, String str2, com.applovin.impl.sdk.j jVar) {
        if (webView == null) {
            return;
        }
        try {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().a(str2, "Forwarding \"" + str + "\" to WebView");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.tr$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    webView.loadUrl(str);
                }
            });
        } catch (Throwable th) {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().a(str2, "Unable to forward to WebView", th);
            }
            jVar.D().a(str2, th, CollectionUtils.hashMap("operation", str));
        }
    }
}
