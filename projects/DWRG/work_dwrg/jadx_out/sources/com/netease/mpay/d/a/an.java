package com.netease.mpay.d.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.af;
import com.netease.mpay.f.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class an implements com.netease.mpay.f.a.b {
    final /* synthetic */ af a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(af afVar) {
        this.a = afVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        af.d dVar;
        dVar = this.a.c;
        dVar.a(str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(Void r2) {
        af.d dVar;
        dVar = this.a.c;
        dVar.a();
    }
}
