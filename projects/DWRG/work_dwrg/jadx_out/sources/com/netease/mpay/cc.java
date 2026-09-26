package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cc implements com.netease.mpay.f.a.b {
    final /* synthetic */ bz a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(bz bzVar) {
        this.a = bzVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        this.a.i = aVar.a() ? -101 : this.a.i;
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.k kVar) {
        this.a.i = kVar.a.intValue();
    }
}
