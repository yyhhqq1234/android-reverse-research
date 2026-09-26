package com.netease.mpay.f;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.h;

/* loaded from: classes.dex */
class i implements com.netease.mpay.f.a.b {
    final /* synthetic */ h a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.a = hVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        h.a aVar2;
        h.a aVar3;
        String str2;
        aVar2 = this.a.p;
        if (aVar2 != null) {
            aVar3 = this.a.p;
            str2 = this.a.j;
            aVar3.a(str2, aVar, str);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(Void r3) {
        h.a aVar;
        h.a aVar2;
        String str;
        aVar = this.a.p;
        if (aVar != null) {
            aVar2 = this.a.p;
            str = this.a.j;
            aVar2.a(str);
        }
    }
}
