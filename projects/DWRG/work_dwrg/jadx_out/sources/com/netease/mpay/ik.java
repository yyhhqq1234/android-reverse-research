package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bc;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ik implements bc.a {
    final /* synthetic */ ij a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ik(ij ijVar) {
        this.a = ijVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.bc.a
    public void a(OrderInit.PayChannel payChannel) {
        boolean z;
        OrderInit orderInit;
        Integer num;
        com.netease.mpay.e.b.o oVar;
        if (payChannel.e) {
            boolean z2 = "weixinpay".equals(payChannel.a) && !m.a(this.a.a);
            boolean z3 = "tenpay".equals(payChannel.a) && !m.b(this.a.a);
            if (z2 || z3) {
                new com.netease.mpay.widget.s(this.a.a).a(this.a.a.getString(z2 ? RIdentifier.h.ed : RIdentifier.h.ec), this.a.a.getString(RIdentifier.h.cn), null, null, null, false);
                return;
            }
            if ("ecard".equals(payChannel.a)) {
                orderInit = this.a.k;
                int b = orderInit.b();
                num = this.a.j;
                if (num.intValue() < b) {
                    this.a.e.a("zf_cz");
                    if (7 != this.a.d.c.e) {
                        this.a.a(payChannel);
                        return;
                    }
                    FragmentActivity fragmentActivity = this.a.a;
                    MpayConfig c = this.a.d.c();
                    String a = this.a.d.a();
                    String b2 = this.a.d.b();
                    il ilVar = new il(this, payChannel);
                    oVar = this.a.m;
                    new com.netease.mpay.f.ay(fragmentActivity, c, a, b2, ilVar, oVar, 7).h();
                    return;
                }
            }
            z = this.a.f;
            if (z) {
                return;
            }
            this.a.e.d();
            this.a.f = true;
            this.a.b(payChannel);
        }
    }
}
