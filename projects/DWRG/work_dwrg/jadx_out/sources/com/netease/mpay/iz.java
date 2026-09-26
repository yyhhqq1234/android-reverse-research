package com.netease.mpay;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.ar;
import com.netease.mpay.b.r;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
public class iz extends com.netease.mpay.widget.b.c {
    private r e;
    private String f;
    private String g;
    private boolean h;
    private Resources i;

    public iz(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.f = null;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void v() {
        super.a(this.i.getString(RIdentifier.h.cq));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new r(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (!(alVar instanceof ar.a)) {
            alVar.a(this.a);
            return;
        }
        this.f = ((ar.a) alVar).d;
        this.g = ((ar.a) alVar).e;
        w().a(((ar.a) alVar).f);
        if (i == 0 || i == 1 || i == 4 || i == 2 || i == 5 || i == 3 || i == 5) {
            this.h = true;
        }
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        this.i = this.a.getResources();
        super.a(bundle);
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        b.a aVar;
        Integer num = null;
        super.b(bundle);
        this.h = false;
        String o = this.e.o();
        if (this.e.f) {
            if (o.equals("mcard")) {
                aVar = b.a.PrepayMcardActivity;
                num = 2;
            } else if (o.equals("ecard")) {
                aVar = b.a.PrepayEcardActivity;
                num = 5;
            } else {
                aVar = b.a.PrepayEcardSelectorActivity;
                num = 3;
            }
        } else if (o.equals("epay")) {
            aVar = b.a.EpayActivity;
            num = 0;
        } else if (o.equals("mcard")) {
            aVar = b.a.McardActivity;
            num = 1;
        } else if (o.equals("weixinpay")) {
            aVar = b.a.WeixinPayActivity;
            num = 4;
        } else if (o.equals("tenpay")) {
            aVar = b.a.TenpayActivity;
            num = 5;
        } else {
            aVar = null;
        }
        if (aVar != null) {
            b.a(this.a, aVar, this.a.getIntent().getExtras(), num);
        }
        this.i = this.a.getResources();
        v();
        setBackButton(false);
    }

    @Override // com.netease.mpay.a
    public void g() {
        super.g();
        if (this.h) {
            setBackButton(false);
            if (TextUtils.isEmpty(this.g)) {
                w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.ORDER_RESULT).a(this.e.f ? this.f : this.e.k()));
            } else {
                w().a(new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.PREPAY_RESULT_WITH_TICKET).b(this.g));
            }
        }
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d(), new c.a(this.e.f, this.e.p()));
    }
}
