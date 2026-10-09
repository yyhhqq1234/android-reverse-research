package org.json;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes3.dex */
public class yf {
    private bg a;

    yf(bg bgVar) {
        this.a = bgVar;
    }

    @JavascriptInterface
    public void receiveMessageFromExternal(String str) {
        this.a.handleMessageFromAd(str);
    }
}
