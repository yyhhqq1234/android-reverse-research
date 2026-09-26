package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class u implements com.netease.mpay.f.a.b {
    final /* synthetic */ t a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar) {
        this.a = tVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        new com.netease.mpay.widget.s(o.this.a).a(str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        if (2 == o.this.d.a) {
            this.a.b.a(new com.netease.mpay.server.a.b.g(aeVar.a));
        } else {
            this.a.b.a(new com.netease.mpay.server.a.b.p(aeVar.a));
        }
    }
}
