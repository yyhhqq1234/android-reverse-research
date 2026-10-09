package org.json.sdk.controller;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes3.dex */
class r {
    private s a;
    private boolean b = false;

    r(s sVar) {
        this.a = sVar;
    }

    @JavascriptInterface
    public String getTokenForMessaging() {
        if (this.b) {
            return "";
        }
        this.b = true;
        return this.a.b();
    }
}
