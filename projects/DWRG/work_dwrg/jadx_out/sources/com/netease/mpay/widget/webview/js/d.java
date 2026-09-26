package com.netease.mpay.widget.webview.js;

import android.webkit.WebView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class d {
    final int a = 25;
    boolean b = false;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.c = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(WebView webView, int i) {
        if (i <= 25) {
            this.b = true;
        } else if (this.b) {
            g.a("inject " + webView.getUrl());
            this.b = false;
            return true;
        }
        return false;
    }
}
