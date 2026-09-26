package com.netease.mpay.widget.webview.js;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Message;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k extends WebViewClient {
    final /* synthetic */ WebViewExListener a;
    final /* synthetic */ WebViewEx b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(WebViewEx webViewEx, WebViewExListener webViewExListener) {
        this.b = webViewEx;
        this.a = webViewExListener;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onFormResubmission(WebView webView, Message message, Message message2) {
        message2.sendToTarget();
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.a.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        boolean b;
        super.onPageStarted(webView, str, bitmap);
        b = this.b.b(str);
        if (!b) {
            this.a.onPageStarted(webView, str, bitmap);
        } else {
            webView.stopLoading();
            this.b.a(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.a.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @SuppressLint({"NewApi"})
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        int i;
        Exception e;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        String str = null;
        String str2 = "";
        try {
            str = webResourceRequest.getUrl().toString();
            i = webResourceError.getErrorCode();
            try {
                str2 = String.valueOf(webResourceError.getDescription());
            } catch (Exception e2) {
                e = e2;
                g.a(e);
                this.a.onReceivedError(webView, i, str2, str);
            }
        } catch (Exception e3) {
            i = -1;
            e = e3;
        }
        this.a.onReceivedError(webView, i, str2, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean b;
        b = this.b.b(str);
        if (b) {
            this.b.a(str);
            return true;
        }
        if (this.a.shouldOverrideUrlLoading(webView, str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
