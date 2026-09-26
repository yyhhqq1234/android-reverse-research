package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.oc;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class og implements com.netease.mpay.f.a.b {
    final /* synthetic */ com.netease.mpay.e.b a;
    final /* synthetic */ com.netease.mpay.e.b.w b;
    final /* synthetic */ com.netease.mpay.e.b.o c;
    final /* synthetic */ com.netease.mpay.e.b.u d;
    final /* synthetic */ oc.a e;
    final /* synthetic */ oc f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public og(oc ocVar, com.netease.mpay.e.b bVar, com.netease.mpay.e.b.w wVar, com.netease.mpay.e.b.o oVar, com.netease.mpay.e.b.u uVar, oc.a aVar) {
        this.f = ocVar;
        this.a = bVar;
        this.b = wVar;
        this.c = oVar;
        this.d = uVar;
        this.e = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (this.e == null) {
            return;
        }
        switch (aVar) {
            case ERR_LOGOUT:
                this.e.a();
                return;
            default:
                this.e.a(str);
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        this.f.a(this.a, this.b, this.c, aeVar.a, this.d, this.e);
    }
}
