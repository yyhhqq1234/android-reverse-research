package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class x extends a {
    private com.netease.mpay.b.s d;
    private ii e;

    public x(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void s() {
        super.a(this.d.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        new com.netease.mpay.f.c(this.a, this.d.a(), this.d.b(), this.d.c.d, this.d.q(), new y(this)).h();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.s(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.a.setContentView(RIdentifier.g.V);
        this.e = new ii(this.a);
        s();
        t();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        this.e.c();
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        this.e.c();
        return true;
    }
}
