package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.r;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jy implements com.netease.mpay.f.a.b {
    final /* synthetic */ com.netease.mpay.b.s a;
    final /* synthetic */ jt b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jy(jt jtVar, com.netease.mpay.b.s sVar) {
        this.b = jtVar;
        this.a = sVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        r rVar;
        r rVar2;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        r rVar3;
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(this.b.a);
        if (aVar.a()) {
            this.b.b(str);
            return;
        }
        if (b.a.ERR_RETRY == aVar) {
            sVar.a(str);
            return;
        }
        if (b.a.ERR_PASS_VERIFY != aVar) {
            sVar.b(str, this.b.a.getString(RIdentifier.h.cn), new kb(this));
            return;
        }
        FragmentActivity fragmentActivity = this.b.a;
        rVar = this.b.d;
        String a = rVar.a();
        rVar2 = this.b.d;
        String b = rVar2.b();
        oVar = this.b.g;
        String str2 = oVar.a;
        oVar2 = this.b.g;
        String str3 = oVar2.c;
        rVar3 = this.b.d;
        com.netease.mpay.f.bj.a(fragmentActivity, a, b, str2, str3, rVar3.c.d, new ka(this));
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.j jVar) {
        if (jVar.a()) {
            new cd(this.b.a, new jz(this)).a(jVar);
        } else {
            b.a(this.b.a, b.a.EpayActivity, new com.netease.mpay.b.f(this.a, jVar.j), null, 1);
        }
    }
}
