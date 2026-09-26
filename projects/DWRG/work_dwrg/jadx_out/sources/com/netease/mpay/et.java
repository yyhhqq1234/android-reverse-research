package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.h;

/* loaded from: classes.dex */
class et implements h.a {
    final /* synthetic */ es a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public et(es esVar) {
        this.a = esVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.h.a
    public void a(String str) {
        com.netease.mpay.b.s sVar;
        com.netease.mpay.e.b bVar;
        com.netease.mpay.b.s sVar2;
        com.netease.mpay.b.s sVar3;
        com.netease.mpay.e.b bVar2;
        com.netease.mpay.e.b.s sVar4 = new com.netease.mpay.e.b.s();
        sVar4.c = this.a.b;
        sVar4.a = this.a.c;
        sVar4.b = this.a.d;
        sVar = this.a.e.d;
        sVar4.d = sVar.c.b;
        bVar = this.a.e.f;
        com.netease.mpay.e.c.p f = bVar.f();
        sVar2 = this.a.e.d;
        String str2 = sVar2.c.b;
        sVar3 = this.a.e.d;
        f.b(str2, sVar3.c.c);
        bVar2 = this.a.e.f;
        bVar2.f().a(sVar4);
        this.a.e.b(3);
        this.a.e.v();
    }

    @Override // com.netease.mpay.f.h.a
    public void a(String str, b.a aVar, String str2) {
        boolean z;
        com.netease.mpay.widget.s sVar;
        com.netease.mpay.e.b bVar;
        com.netease.mpay.b.s sVar2;
        com.netease.mpay.b.s sVar3;
        z = this.a.e.t;
        if (z) {
            bVar = this.a.e.f;
            com.netease.mpay.e.c.p f = bVar.f();
            sVar2 = this.a.e.d;
            String str3 = sVar2.c.b;
            sVar3 = this.a.e.d;
            f.b(str3, sVar3.c.c);
            this.a.e.t = false;
        }
        switch (aVar) {
            case ERR_LOGOUT:
                this.a.e.b(4);
                new ii(this.a.e.a).d();
                return;
            case ERR_RETRY:
                this.a.e.b(4);
                sVar = this.a.e.i;
                sVar.a(str2);
                return;
            default:
                this.a.e.b(3);
                this.a.e.v();
                return;
        }
    }
}
