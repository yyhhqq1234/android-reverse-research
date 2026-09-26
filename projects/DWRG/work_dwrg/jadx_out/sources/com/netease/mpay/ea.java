package com.netease.mpay;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.b.m;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ea implements au.a {
    final /* synthetic */ dp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ea(dp dpVar) {
        this.a = dpVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b.o oVar3;
        com.netease.mpay.e.b.o oVar4;
        com.netease.mpay.e.b.o oVar5;
        com.netease.mpay.e.b.o oVar6;
        com.netease.mpay.e.b.o oVar7;
        switch (aVar) {
            case ERR_SMS_VERIFY:
                hi a = hi.a();
                FragmentActivity fragmentActivity = this.a.a;
                a.C0035a d = this.a.d.d();
                oVar2 = this.a.h;
                a.a((Activity) fragmentActivity, (com.netease.mpay.b.m) new m.d(d, oVar2.c, null), (Integer) 4);
                return;
            case ERR_SET_PASS:
                hi a2 = hi.a();
                FragmentActivity fragmentActivity2 = this.a.a;
                a.C0035a d2 = this.a.d.d();
                oVar = this.a.h;
                a2.a((Activity) fragmentActivity2, (com.netease.mpay.b.m) new m.g(d2, oVar.c, m.b.LOGIN, null), (Integer) 4);
                return;
            default:
                bVar = this.a.f;
                com.netease.mpay.e.c.k c = bVar.c();
                oVar3 = this.a.h;
                com.netease.mpay.e.b.o a3 = c.a(oVar3.c);
                oVar4 = this.a.h;
                oVar4.d = a3 != null ? a3.d : null;
                if (a3 == null || TextUtils.isEmpty(a3.d)) {
                    oVar5 = this.a.h;
                    switch (oVar5.f) {
                        case 1:
                            dp dpVar = this.a;
                            oVar6 = this.a.h;
                            dpVar.a(oVar6, str);
                            return;
                        case 4:
                            this.a.b(a3);
                            return;
                        case 7:
                            dp dpVar2 = this.a;
                            oVar7 = this.a.h;
                            dpVar2.b(oVar7, str);
                            return;
                    }
                }
                this.a.a(str, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
                return;
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.e.b.o oVar;
        if (!mVar.d()) {
            this.a.a(new com.netease.mpay.b.ao(str, mVar), true);
            return;
        }
        hi a = hi.a();
        FragmentActivity fragmentActivity = this.a.a;
        a.C0035a d = this.a.d.d();
        oVar = this.a.h;
        a.a((Activity) fragmentActivity, (com.netease.mpay.b.m) new m.e(d, oVar.c, mVar.v, null), (Integer) 4);
    }
}
