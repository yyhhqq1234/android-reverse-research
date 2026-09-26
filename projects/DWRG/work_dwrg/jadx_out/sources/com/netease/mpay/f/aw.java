package com.netease.mpay.f;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aw implements com.netease.mpay.f.a.b {
    final /* synthetic */ au.a a;
    final /* synthetic */ au b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(au auVar, au.a aVar) {
        this.b = auVar;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (this.a != null) {
            this.a.a(aVar, str);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.m mVar) {
        au.b bVar;
        if (this.a != null) {
            au.a aVar = this.a;
            bVar = this.b.j;
            aVar.a(bVar.c.j, mVar);
        }
    }
}
