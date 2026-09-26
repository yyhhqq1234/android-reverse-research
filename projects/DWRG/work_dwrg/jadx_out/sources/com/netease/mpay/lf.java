package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class lf extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.z e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.o g;

    public lf(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.z(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        super.a(this.a.getString(RIdentifier.h.du));
        this.f = new com.netease.mpay.e.b(this.a, this.e.a());
        this.g = this.f.c().b(this.e.b());
        if (this.g != null && !TextUtils.isEmpty(this.g.d)) {
            w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.SET_REALNAME));
            return;
        }
        if (this.e.a != null) {
            this.e.a.onFinish(null);
        }
        this.a.finish();
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        super.closeWindow();
        if (this.e.a != null) {
            this.e.a.onFinish(new User(this.f.d().a().j, this.g));
        }
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onRealnameVerify() {
        if (this.g.j) {
            return;
        }
        this.g.j = true;
        this.f.c().a(this.g, this.e.b(), this.g.m);
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerify(String str) {
        onRealnameVerify();
        closeWindow();
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d());
    }
}
