package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fz implements MpayApi.a {
    final /* synthetic */ MpayApi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fz(MpayApi mpayApi) {
        this.a = mpayApi;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        com.netease.mpay.e.b.af a = new com.netease.mpay.e.b(this.a.a, this.a.c).e().a();
        if (!a.m) {
            new com.netease.mpay.widget.s(this.a.a).a(a.n, this.a.a.getString(RIdentifier.h.cJ));
        } else if (a.q && cr.a(this.a.a)) {
            new cr(this.a.a, this.a.c, this.a.d).a(a.r, a.p);
        } else {
            b.a(this.a.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(new a.C0035a(this.a.c, this.a.d, this.a.f), an.a.LINK_URL).a(a.o), null, 10);
        }
    }
}
