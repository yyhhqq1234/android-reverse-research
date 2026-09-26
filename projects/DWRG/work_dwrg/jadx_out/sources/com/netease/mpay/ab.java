package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.bj;

/* loaded from: classes.dex */
class ab implements bj.a {
    final /* synthetic */ y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(y yVar) {
        this.a = yVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.bj.a
    public void a() {
        ii iiVar;
        iiVar = this.a.a.e;
        iiVar.c();
    }

    @Override // com.netease.mpay.f.bj.a
    public void a(String str) {
        com.netease.mpay.b.s sVar;
        sVar = this.a.a.d;
        sVar.c.d = str;
        this.a.a.t();
    }
}
