package com.applovin.impl.adview;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.j3;
import com.applovin.impl.rr;
import com.applovin.impl.z3;

/* JADX INFO: loaded from: classes.dex */
public class l extends j3 {
    private final String c;

    public void a(String str) {
        loadDataWithBaseURL(this.c, str, "text/html", null, "");
    }

    public l(String str, com.applovin.impl.sdk.ad.b bVar, rr rrVar, Context context) {
        super(context);
        this.c = str;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        if (bVar.P0()) {
            applySettings(bVar);
        } else {
            settings.setAllowFileAccess(true);
            if (z3.e() && bVar.L0()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        }
        setWebViewClient(rrVar);
        setWebChromeClient(new WebChromeClient());
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
    }
}
