package com.netease.mpay.f;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.f.bd;

/* loaded from: classes.dex */
class be implements au.a {
    final /* synthetic */ bd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(bd bdVar) {
        this.a = bdVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        com.netease.mpay.server.response.w wVar;
        bd.a aVar2;
        bd.a aVar3;
        com.netease.mpay.server.response.w wVar2;
        wVar = this.a.n;
        if (wVar == null) {
            aVar2 = this.a.m;
            aVar2.a(aVar, str);
        } else {
            aVar3 = this.a.m;
            wVar2 = this.a.n;
            aVar3.a(wVar2);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        bd.a aVar;
        aVar = this.a.m;
        aVar.a(str, mVar);
    }
}
