package com.netease.mpay;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class iq implements com.netease.mpay.f.a.b {
    final /* synthetic */ ij a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iq(ij ijVar) {
        this.a = ijVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        OrderInit orderInit;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        com.netease.mpay.e.b.o oVar3;
        if (this.a.a.isFinishing()) {
            return;
        }
        if (aVar.a()) {
            oVar = this.a.m;
            if (oVar != null) {
                com.netease.mpay.server.response.u a = com.netease.mpay.server.response.u.a(this.a.a, this.a.d.a());
                FragmentActivity fragmentActivity = this.a.a;
                oVar2 = this.a.m;
                if (a.a(fragmentActivity, oVar2.f)) {
                    hi a2 = hi.a();
                    FragmentActivity fragmentActivity2 = this.a.a;
                    a.C0035a d = this.a.d.d();
                    oVar3 = this.a.m;
                    if (a2.a((Activity) fragmentActivity2, d, oVar3, (Integer) 9)) {
                        return;
                    }
                }
            }
        }
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(this.a.a);
        orderInit = this.a.k;
        if (orderInit != null) {
            sVar.a(str);
        } else if (b.a.ERR_RETRY == aVar) {
            sVar.a(str, this.a.a.getString(RIdentifier.h.cH), new ir(this), this.a.a.getString(RIdentifier.h.g), new is(this), false);
        } else {
            sVar.b(str, this.a.a.getString(RIdentifier.h.cn), new it(this, aVar, str));
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(OrderInit orderInit) {
        OrderInit orderInit2;
        orderInit2 = this.a.k;
        boolean z = orderInit2 != null;
        this.a.k = orderInit;
        if (z) {
            this.a.u();
        } else {
            this.a.t();
        }
    }
}
