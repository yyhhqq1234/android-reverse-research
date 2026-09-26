package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.b.r;
import com.netease.mpay.f.bj;

/* loaded from: classes.dex */
class ka implements bj.a {
    final /* synthetic */ jy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ka(jy jyVar) {
        this.a = jyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.bj.a
    public void a() {
    }

    @Override // com.netease.mpay.f.bj.a
    public void a(String str) {
        r rVar;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        this.a.a.c.d = str;
        rVar = this.a.b.d;
        rVar.c.d = str;
        oVar = this.a.b.g;
        if (oVar != null) {
            oVar2 = this.a.b.g;
            oVar2.d = str;
        }
        this.a.b.a(this.a.a);
    }
}
