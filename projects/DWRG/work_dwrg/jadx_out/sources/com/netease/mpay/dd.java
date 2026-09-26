package com.netease.mpay;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.Window;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.webview.js.Config;
import com.netease.mpay.widget.webview.js.WebViewEx;
import com.netease.mpay.widget.webview.js.WebViewExListener;

/* loaded from: classes.dex */
public abstract class dd extends com.netease.mpay.a implements WebViewExListener {
    private com.netease.mpay.b.s d;
    private ii e;
    private boolean f;
    private boolean g;
    private WebViewEx h;
    private com.netease.mpay.widget.av i;
    private com.netease.mpay.server.response.l j;

    /* loaded from: classes.dex */
    public enum a {
        WEIXIN,
        TENPAY;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        void a(Activity activity) {
            TextView textView = (TextView) activity.findViewById(RIdentifier.f.al);
            if (textView == null) {
                return;
            }
            switch (this) {
                case WEIXIN:
                    textView.setText(RIdentifier.h.eb);
                    return;
                case TENPAY:
                    textView.setText(RIdentifier.h.dR);
                    return;
                default:
                    return;
            }
        }

        boolean a(Context context) {
            switch (this) {
                case WEIXIN:
                    return m.a(context);
                case TENPAY:
                    return m.b(context);
                default:
                    return true;
            }
        }
    }

    public dd(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.f = false;
        this.g = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (!s().a((Context) this.a)) {
            this.e.b();
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            this.a.startActivity(intent);
            if (this.i != null && this.i.isShowing()) {
                this.i.dismiss();
            }
            this.a.findViewById(RIdentifier.f.ak).setVisibility(0);
            this.f = true;
        } catch (ActivityNotFoundException e) {
            this.e.b();
        }
    }

    private void t() {
        super.a(this.d.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        Window window = this.a.getWindow();
        if (window != null) {
            window.setFlags(2048, 1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.g = true;
        new com.netease.mpay.f.f(this.a, this.d.a(), this.d.b(), this.d.c.d, this.d.q(), s(), new df(this, new com.netease.mpay.widget.s(this.a))).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.a.isFinishing()) {
            return;
        }
        new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.by), this.a.getString(RIdentifier.h.l), new dl(this), this.a.getString(RIdentifier.h.cJ), null, true);
    }

    private void x() {
        new ar.a(null, null, null).a(this.a);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.s(intent);
        return this.d;
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void alert(String str) {
    }

    @Override // com.netease.mpay.a
    @SuppressLint({"SetJavaScriptEnabled"})
    public void b(Bundle bundle) {
        super.b(bundle);
        this.e = new ii(this.a);
        this.a.setContentView(RIdentifier.g.f);
        Button button = (Button) this.a.findViewById(RIdentifier.f.am);
        button.setText(RIdentifier.h.cJ);
        button.setOnClickListener(new de(this));
        this.h = (WebViewEx) this.a.findViewById(RIdentifier.f.an);
        this.h.regist(this.a, new Config(bj.a(this.d.c().mScreenOrientation), "a2.14.1", bk.b.booleanValue(), bk.d.booleanValue() ? "tv" : "games").enableUploadFile(1080), this);
        this.h.setScrollBarStyle(0);
        s().a((Activity) this.a);
        t();
        v();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void changeNavigationTitle(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
    }

    @Override // com.netease.mpay.a
    public void g() {
        super.g();
        if (this.f) {
            x();
            this.f = false;
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void jumpToMobileChangePage() {
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        if (this.g) {
            w();
            return true;
        }
        this.e.c();
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        if (this.g) {
            w();
            return true;
        }
        this.e.c();
        return true;
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onError(int i) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onMobileBindRelatedAccount(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onMobileChanged(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public void onPageFinished(WebView webView, String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onPayFinished(int i) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onPayRedirect(int i) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onQrcodeLogin(String str, String str2) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onReady() {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onRealnameVerify() {
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public void onReceivedError(WebView webView, int i, String str, String str2) {
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public void onReceivedTitle(WebView webView, String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onTokenRefresh(String str) {
        String b = com.netease.mpay.server.a.d.b(str);
        com.netease.mpay.e.c.k c = new com.netease.mpay.e.b(this.a, this.d.a()).c();
        com.netease.mpay.e.b.o b2 = c.b(this.d.b());
        if (b2 == null || TextUtils.isEmpty(b)) {
            return;
        }
        b2.d = b;
        c.a(b2, this.d.b(), true);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onUrsMobileLogin(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onUserLogin(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onUserLogout() {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerify(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerifyRelatedMobile() {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerifyRelatedMobile(String str) {
    }

    abstract a s();

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void saveImage(String str) {
        new com.netease.mpay.f.o(this.a, str, new dm(this)).execute(new Void[0]);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void saveToClipboard(String str) {
        com.netease.mpay.widget.aa.a(this.a, str);
        new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.cR));
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void setBackButton(boolean z) {
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (TextUtils.isEmpty(str) || !str.matches(this.j.b)) {
            return false;
        }
        u();
        b(str);
        return true;
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void toast(String str) {
    }
}
