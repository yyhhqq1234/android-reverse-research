package com.netease.mpay;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class le extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.u e;
    private Resources f;

    public le(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void v() {
        if (!this.e.a) {
            w().a();
        }
        w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.REGIST_URS));
    }

    private void x() {
        super.a(this.f.getString(RIdentifier.h.bd));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.u(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = this.a.getResources();
        x();
        v();
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d());
    }
}
