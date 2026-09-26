package com.netease.mpay.f;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bh;

/* loaded from: classes.dex */
class bi implements com.netease.mpay.f.a.b {
    final /* synthetic */ bh a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(bh bhVar) {
        this.a = bhVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        bh.a aVar2;
        bh.a aVar3;
        aVar2 = this.a.k;
        if (aVar2 != null) {
            aVar3 = this.a.k;
            aVar3.a(aVar, str);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(Void r4) {
        bh.a aVar;
        bh.a aVar2;
        String str;
        com.netease.mpay.e.b.o oVar;
        aVar = this.a.k;
        if (aVar != null) {
            aVar2 = this.a.k;
            str = this.a.m;
            oVar = this.a.l;
            aVar2.a(str, oVar);
        }
    }
}
