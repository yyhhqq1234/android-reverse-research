package com.netease.mpay.codescanner;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.animation.AnimationUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.PaymentCallback;
import com.netease.mpay.PaymentResult;
import com.netease.mpay.b.al;
import com.netease.mpay.b.am;
import com.netease.mpay.b.an;
import com.netease.mpay.b.ao;
import com.netease.mpay.b.at;
import com.netease.mpay.b.au;
import com.netease.mpay.b.x;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class y extends com.netease.mpay.a {
    private com.netease.mpay.b.x d;
    private com.netease.mpay.codescanner.a e;
    private Resources f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements PaymentCallback {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(y yVar, z zVar) {
            this();
        }

        @Override // com.netease.mpay.PaymentCallback
        public void onFinish(int i, PaymentResult paymentResult) {
            switch (i) {
                case 1:
                    y.this.b(y.this.f.getString(RIdentifier.h.db));
                    return;
                default:
                    y.this.v();
                    return;
            }
        }
    }

    public y(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new an(str, false).a(this.a);
    }

    private void s() {
        this.a.setContentView(RIdentifier.g.n);
        this.a.findViewById(RIdentifier.f.ap).startAnimation(AnimationUtils.loadAnimation(this.a, RIdentifier.a.a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.d.a());
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        com.netease.mpay.e.b.o a3 = bVar.c().a(this.d.a.a());
        if (a3 == null || TextUtils.isEmpty(a3.d)) {
            if ((this.d.a instanceof x.b) && ((x.b) this.d.a).a.d.b == 2 && bVar.c().a(2).size() > 0) {
                new com.netease.mpay.widget.s(this.a).b(this.f.getString(RIdentifier.h.cW), this.f.getString(RIdentifier.h.cn), new z(this));
                return;
            } else {
                new com.netease.mpay.widget.s(this.a).a(this.f.getString(RIdentifier.h.dc), this.f.getString(RIdentifier.h.cn), new aa(this), this.f.getString(RIdentifier.h.g), new ac(this), false);
                return;
            }
        }
        if (this.d.a instanceof x.b) {
            this.e.a(((x.b) this.d.a).a.e, a2.j, a3, 1, new a(this, null));
        } else if (this.d.a instanceof x.a) {
            new at().a(this.a);
        }
    }

    private void u() {
        new am().a(this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        new au().a(this.a);
    }

    private void w() {
        super.a(this.a.getResources().getString(RIdentifier.h.co));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.x(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, al alVar) {
        super.a(i, i2, intent, alVar);
        if (i != 2 || (alVar instanceof ao)) {
            return;
        }
        u();
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        s();
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        super.a(bundle);
    }

    @Override // com.netease.mpay.a
    public void a(boolean z) {
        super.a(z);
        if (this.g || !z) {
            return;
        }
        this.g = true;
        t();
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        s();
        this.f = this.a.getResources();
        if (this.d.a == null || !this.d.a.b()) {
            b(this.f.getString(RIdentifier.h.cY));
            return;
        }
        this.g = false;
        this.e = new com.netease.mpay.codescanner.a(this.a, this.d.c(), this.d.a(), this.d.b());
        w();
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        u();
        return super.o();
    }
}
