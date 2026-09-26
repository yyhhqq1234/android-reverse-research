package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.ay;
import com.netease.mpay.server.response.OrderInit;

/* loaded from: classes.dex */
class il implements ay.a {
    final /* synthetic */ OrderInit.PayChannel a;
    final /* synthetic */ ik b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public il(ik ikVar, OrderInit.PayChannel payChannel) {
        this.b = ikVar;
        this.a = payChannel;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.ay.a
    public void a() {
        this.b.a.a(this.a);
    }
}
