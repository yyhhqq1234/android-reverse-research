package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class bl extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.s e;

    public bl(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void v() {
        super.a(this.e.n());
    }

    private void x() {
        setBackButton(true);
        w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.ECARD_PAY).a(this.e.q()));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.s(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        super.a(bundle);
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.e.l() == null) {
            super.closeWindow();
        } else {
            v();
            x();
        }
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d(), new c.a(this.e.f, this.e.p()));
    }
}
