package com.netease.mpay;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class oj extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.ai e;
    private Resources f;
    private com.netease.mpay.widget.s g;
    private boolean h;
    private boolean i;

    public oj(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void v() {
        this.g = new com.netease.mpay.widget.s(this.a);
        if (!this.e.a) {
            w().a();
        }
        this.h = false;
        this.i = false;
        w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.WEIBO_LOGIN));
    }

    private void x() {
        super.a(this.f.getString(RIdentifier.h.bq));
    }

    private void y() {
        this.g.a(this.f.getString(RIdentifier.h.aV), this.f.getString(RIdentifier.h.cD), new ok(this), this.f.getString(RIdentifier.h.aU), new ol(this), true);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.ai(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = this.a.getResources();
        x();
        v();
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        if (this.i || !this.h) {
            new com.netease.mpay.b.aq().a(this.a);
        } else {
            y();
        }
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d());
    }
}
