package com.applovin.impl;

import android.content.Intent;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.google.firebase.messaging.Constants;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f0 extends WebChromeClient {
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private final com.applovin.impl.adview.a c;

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = consoleMessage.messageLevel() + ": " + consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message();
        if (com.applovin.impl.sdk.n.a()) {
            this.b.a("AdWebView", str);
        }
        if (consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.ERROR) {
            return true;
        }
        if (!consoleMessage.message().contains("al_onPoststitialShow") && !consoleMessage.message().contains("al_showPostitial")) {
            return true;
        }
        a(consoleMessage);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (!com.applovin.impl.sdk.n.a()) {
            return true;
        }
        this.b.k("AdWebView", "Alert attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        if (!com.applovin.impl.sdk.n.a()) {
            return true;
        }
        this.b.k("AdWebView", "JS onBeforeUnload attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (!com.applovin.impl.sdk.n.a()) {
            return true;
        }
        this.b.k("AdWebView", "JS confirm attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        if (com.applovin.impl.sdk.n.a()) {
            this.b.k("AdWebView", "console.log[" + i + "] :" + str);
        }
    }

    public f0(com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.c = aVar;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        com.applovin.impl.adview.a aVar;
        if (i != 100 || (aVar = this.c) == null) {
            return;
        }
        aVar.c(webView);
    }

    private void a(ConsoleMessage consoleMessage) {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.al_onPoststitialShow_evaluation_error"), null);
        com.applovin.impl.sdk.ad.b bVarI = this.c.i();
        if (bVarI != null) {
            String str = consoleMessage.messageLevel() + ": " + consoleMessage.sourceId() + ": " + consoleMessage.lineNumber();
            Map mapA = la.a(bVarI);
            mapA.put(Constants.ScionAnalytics.PARAM_SOURCE, "AdWebView:onPoststitialShowEvaluationError");
            mapA.put("top_main_method", str);
            mapA.put("error_message", consoleMessage.message());
            this.a.D().a(ka.b0, mapA);
        }
    }
}
