package com.netease.mpay.a;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.google.android.gms.common.GoogleApiAvailability;
import com.netease.mpay.b.al;
import com.netease.mpay.b.an;
import com.netease.mpay.e.b.o;
import com.netease.mpay.f.bm;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.av;

/* loaded from: classes.dex */
public class k extends com.netease.mpay.a {
    private com.netease.mpay.b.h d;
    private f e;
    private av f;

    public k(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        new an(this.a.getString(RIdentifier.h.ae), false).a(this.a);
    }

    private void t() {
        this.f = av.a(this.a, false);
        this.f.show();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.h(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, al alVar) {
        super.a(i, i2, intent, alVar);
        if (this.e != null) {
            this.e.a(i, i2, intent);
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        this.a.setTheme(RIdentifier.i.b);
        super.b(bundle);
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.a) == 0) {
            this.e = new f(this.a, this.d.a(), this.d.b(), this.d.a, this.d.c, this.d.b);
            this.e.a();
            return;
        }
        if (!this.d.b) {
            s();
            return;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.d.a());
        o b = bVar.c().b(this.d.b());
        com.netease.mpay.e.b.f a = bVar.d().a();
        if (a == null || a.j == null || a.i == null || b == null || b.f != 5 || TextUtils.isEmpty(b.d)) {
            s();
        } else {
            new bm(this.a, this.d.a(), this.d.b(), b, false, new l(this)).h();
        }
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        t();
    }

    @Override // com.netease.mpay.a
    public void i() {
        super.i();
        if (this.f == null || !this.f.isShowing()) {
            return;
        }
        this.f.dismiss();
    }
}
