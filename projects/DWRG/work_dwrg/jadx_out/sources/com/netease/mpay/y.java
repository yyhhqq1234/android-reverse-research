package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y implements com.netease.mpay.f.a.b {
    final /* synthetic */ x a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.a = xVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        com.netease.mpay.b.s sVar;
        com.netease.mpay.b.s sVar2;
        com.netease.mpay.b.s sVar3;
        com.netease.mpay.b.s sVar4;
        com.netease.mpay.b.s sVar5;
        com.netease.mpay.widget.s sVar6 = new com.netease.mpay.widget.s(this.a.a);
        if (aVar.a()) {
            sVar6.b(this.a.a.getString(RIdentifier.h.u), this.a.a.getString(RIdentifier.h.cn), new aa(this));
            return;
        }
        if (b.a.ERR_PASS_VERIFY != aVar) {
            if (b.a.ERR_RETRY == aVar) {
                new com.netease.mpay.widget.s(this.a.a).a(str, this.a.a.getString(RIdentifier.h.cH), new ac(this), this.a.a.getString(RIdentifier.h.g), new ad(this), false);
                return;
            } else {
                sVar6.b(str, this.a.a.getString(RIdentifier.h.cn), new ae(this));
                return;
            }
        }
        FragmentActivity fragmentActivity = this.a.a;
        sVar = this.a.d;
        String a = sVar.a();
        sVar2 = this.a.d;
        String b = sVar2.b();
        sVar3 = this.a.d;
        String str2 = sVar3.c.f;
        sVar4 = this.a.d;
        String str3 = sVar4.c.b;
        sVar5 = this.a.d;
        com.netease.mpay.f.bj.a(fragmentActivity, a, b, str2, str3, sVar5.c.d, new ab(this));
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.b bVar) {
        new cd(this.a.a, new z(this)).a(bVar);
    }
}
