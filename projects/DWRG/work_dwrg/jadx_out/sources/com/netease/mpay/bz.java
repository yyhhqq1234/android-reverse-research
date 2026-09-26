package com.netease.mpay;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes.dex */
public class bz extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.f e;
    private a f;
    private Resources g;
    private lo h;
    private int i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum a {
        LOADING,
        EPAY_PREPARE,
        EPAY_PAYING,
        EPAY_RESULT;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public bz(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.i = -100;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void v() {
        super.a(this.e.n());
    }

    private void x() {
        this.f = a.LOADING;
        w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.LINK_URL).d(this.e.a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        new ar.a(null, null, null).a(this.a);
    }

    private void z() {
        if (this.a.isFinishing()) {
            return;
        }
        if (!w().b()) {
            super.closeWindow();
            return;
        }
        new com.netease.mpay.widget.s(this.a).a(this.g.getString(RIdentifier.h.by), this.g.getString(RIdentifier.h.l), new ca(this), this.g.getString(RIdentifier.h.cJ), new cb(this), true);
        if (this.e.f) {
            return;
        }
        new com.netease.mpay.f.aa(this.a, this.e.a(), this.e.b(), this.e.c.d, this.e.q(), new cc(this)).h();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.f(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        this.g = this.a.getResources();
        super.a(bundle);
    }

    @Override // com.netease.mpay.widget.b.c
    public boolean a(WebView webView, String str) {
        try {
            if (TextUtils.equals(new URL(str).getHost(), new URL(bk.h).getHost())) {
                if (this.f == a.LOADING) {
                    this.f = a.EPAY_PREPARE;
                } else if (this.f == a.EPAY_PAYING) {
                    this.f = a.EPAY_RESULT;
                }
            } else if (this.f == a.EPAY_PREPARE) {
                this.f = a.EPAY_PAYING;
                setBackButton(true);
            }
        } catch (NullPointerException e) {
        } catch (MalformedURLException e2) {
        }
        if (str == null || str.length() < 1) {
            return true;
        }
        if (str.startsWith("about:")) {
            return super.a(webView, str);
        }
        if (this.h.a(str)) {
            return true;
        }
        if (str.matches("http(s)?://.*") || str.equals("file:///android_asset/netease_mpay/loading.html")) {
            return super.a(webView, str);
        }
        try {
            this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (ActivityNotFoundException e3) {
            Cdo.a((Throwable) e3);
            return true;
        }
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.e.c.a == null || this.e.c.d == null) {
            super.closeWindow();
            return;
        }
        this.h = new lo(this.a, this.e.a());
        this.g = this.a.getResources();
        v();
        x();
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        if (this.f == a.EPAY_PAYING) {
            z();
        } else {
            super.closeWindow();
        }
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d(), new c.a(this.e.f, this.e.p()));
    }
}
