package com.netease.mpay;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.Window;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class e extends com.netease.mpay.widget.b.c {
    private static Handler j;
    private ii e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.a g;
    private boolean h;
    private com.netease.mpay.b.s i;

    public e(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.h = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void b(String str) {
        new ar.d(str).a(this.a);
    }

    private void x() {
        super.a(this.i.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        Window window = this.a.getWindow();
        if (window != null) {
            window.setFlags(2048, 1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        this.h = true;
        new com.netease.mpay.f.a(this.a, this.i.a(), this.i.b(), this.i.c.d, this.i.q(), new f(this)).h();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.i = new com.netease.mpay.b.s(intent);
        return this.i;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    @SuppressLint({"SetJavaScriptEnabled"})
    public void b(Bundle bundle) {
        super.b(bundle);
        this.e = new ii(this.a);
        x();
        this.f = new com.netease.mpay.e.b(this.a, this.i.a());
        this.g = this.f.f().b();
        z();
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        b("0");
    }

    @Override // com.netease.mpay.a
    public void j() {
        super.j();
        j = null;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public boolean l() {
        if (!this.h && this.d != null) {
            return super.l();
        }
        this.e.c();
        return true;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public boolean o() {
        super.o();
        if (!this.h) {
            b("0");
        }
        return true;
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.i.d(), new c.a(this.i.f, this.i.p()));
    }

    @Override // com.netease.mpay.widget.b.c
    public void t() {
        super.t();
        if (this.g == null) {
            this.g = new com.netease.mpay.e.b.a();
        }
        this.g.a = 0;
        this.g.b = 0.0d;
        this.f.f().a(this.g);
        z();
    }

    @Override // com.netease.mpay.widget.b.c
    public void u() {
        super.u();
        b("1");
    }
}
