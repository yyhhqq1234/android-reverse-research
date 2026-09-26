package com.netease.mpay;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class li extends a {
    private com.netease.mpay.b.s d;
    private boolean e;
    private ii f;
    private Resources g;

    public li(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.e = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void s() {
        super.a(this.d.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        new com.netease.mpay.f.k(this.a, this.d.a(), this.d.b(), this.d.c.d, this.d.q(), new lj(this, new com.netease.mpay.widget.s(this.a))).h();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.s(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (intent == null || intent.getExtras() == null) {
            if (this.f != null) {
                this.f.c();
                return;
            }
            return;
        }
        String string = intent.getExtras().getString("pay_result");
        if (string == null) {
            this.f.c();
            return;
        }
        if (string.equalsIgnoreCase("success")) {
            this.f.a();
            return;
        }
        if (string.equalsIgnoreCase("fail")) {
            this.f.b();
        } else if (string.equalsIgnoreCase("cancel")) {
            this.f.b();
        } else {
            this.f.c();
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.a.setContentView(RIdentifier.g.V);
        this.g = this.a.getResources();
        this.f = new ii(this.a);
        s();
        t();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        this.f.c();
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        this.f.c();
        return true;
    }
}
