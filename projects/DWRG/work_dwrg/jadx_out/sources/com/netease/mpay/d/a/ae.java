package com.netease.mpay.d.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.y;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
class ae implements au.a {
    final /* synthetic */ ad a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ad adVar) {
        this.a = adVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        y.b bVar;
        y.b bVar2;
        y.c cVar;
        if (!aVar.a()) {
            bVar = this.a.a.d;
            bVar.a(str);
        } else {
            bVar2 = this.a.a.d;
            cVar = this.a.a.e;
            bVar2.a(cVar.c, str);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        y.b bVar;
        bVar = this.a.a.d;
        bVar.a(str, mVar);
    }
}
