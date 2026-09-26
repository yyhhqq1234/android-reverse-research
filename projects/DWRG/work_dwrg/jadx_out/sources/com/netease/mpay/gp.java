package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.ay;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gp implements ay.a {
    final /* synthetic */ com.netease.mpay.e.b.f a;
    final /* synthetic */ com.netease.mpay.e.b.o b;
    final /* synthetic */ Integer c;
    final /* synthetic */ MpayApi d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gp(MpayApi mpayApi, com.netease.mpay.e.b.f fVar, com.netease.mpay.e.b.o oVar, Integer num) {
        this.d = mpayApi;
        this.a = fVar;
        this.b = oVar;
        this.c = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.ay.a
    public void a() {
        this.d.a(this.a.j, this.b, this.c);
    }
}
