package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.bj;

/* loaded from: classes.dex */
class ix implements bj.a {
    final /* synthetic */ iu a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ix(iu iuVar) {
        this.a = iuVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.bj.a
    public void a() {
    }

    @Override // com.netease.mpay.f.bj.a
    public void a(String str) {
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        this.a.b.d.c.d = str;
        oVar = this.a.b.m;
        if (oVar != null) {
            oVar2 = this.a.b.m;
            oVar2.d = str;
        }
        this.a.b.a(this.a.a);
    }
}
