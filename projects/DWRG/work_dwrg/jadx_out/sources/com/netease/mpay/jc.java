package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class jc implements com.netease.mpay.f.a.b {
    final /* synthetic */ jb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jc(jb jbVar) {
        this.a = jbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        this.a.a(str, aVar.a());
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.e eVar) {
        com.netease.mpay.server.response.e eVar2;
        this.a.o = eVar;
        jb jbVar = this.a;
        StringBuilder append = new StringBuilder().append("");
        eVar2 = this.a.o;
        jbVar.p = append.append(eVar2.a).toString();
        this.a.s();
    }
}
