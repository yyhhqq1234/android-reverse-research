package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;
import com.netease.mpay.ja;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gx implements ja.b {
    final /* synthetic */ MpayApi.a a;
    final /* synthetic */ Integer b;
    final /* synthetic */ MpayApi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gx(MpayApi mpayApi, MpayApi.a aVar, Integer num) {
        this.c = mpayApi;
        this.a = aVar;
        this.b = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.ja.b
    public void a(ja.a aVar) {
        if (aVar == null || !aVar.a()) {
            this.c.a(this.a, this.b);
        } else {
            new com.netease.mpay.widget.s(this.c.a).a(this.c.a.getString(RIdentifier.h.ds), this.c.a.getString(RIdentifier.h.j), new gy(this));
        }
    }
}
