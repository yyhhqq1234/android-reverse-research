package com.netease.mpay.d.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.f;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements bd.a {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.bd.a
    public void a(b.a aVar, String str) {
        f.d dVar;
        dVar = this.a.d;
        dVar.a(str);
    }

    @Override // com.netease.mpay.f.bd.a
    public void a(com.netease.mpay.server.response.w wVar) {
        com.netease.mpay.d.a.a.k kVar;
        f.d dVar;
        com.netease.mpay.d.a.a.k kVar2;
        kVar = this.a.e;
        if (kVar != null) {
            kVar2 = this.a.e;
            kVar2.e();
        }
        dVar = this.a.d;
        dVar.a(wVar);
    }

    @Override // com.netease.mpay.f.bd.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        com.netease.mpay.d.a.a.k kVar;
        f.d dVar;
        com.netease.mpay.d.a.a.k kVar2;
        kVar = this.a.e;
        if (kVar != null) {
            kVar2 = this.a.e;
            kVar2.e();
        }
        dVar = this.a.d;
        dVar.a(str, mVar);
    }
}
