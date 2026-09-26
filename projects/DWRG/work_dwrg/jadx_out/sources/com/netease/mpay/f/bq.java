package com.netease.mpay.f;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bp;

/* loaded from: classes.dex */
class bq implements com.netease.mpay.f.a.b {
    final /* synthetic */ bp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(bp bpVar) {
        this.a = bpVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        bp.a aVar2;
        bp.a aVar3;
        String str2;
        aVar2 = this.a.b;
        if (aVar2 != null) {
            aVar3 = this.a.b;
            str2 = this.a.k;
            aVar3.a(aVar, str, str2);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.af afVar) {
        bp.a aVar;
        bp.a aVar2;
        String str;
        aVar = this.a.b;
        if (aVar != null) {
            aVar2 = this.a.b;
            str = this.a.k;
            aVar2.a(afVar, str);
        }
    }
}
