package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.an;

/* loaded from: classes.dex */
class w implements com.netease.mpay.f.a.b {
    final /* synthetic */ com.netease.mpay.e.b a;
    final /* synthetic */ v b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(v vVar, com.netease.mpay.e.b bVar) {
        this.b = vVar;
        this.a = bVar;
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
        this.b.b.a(new com.netease.mpay.server.a.b.e(aeVar.a, this.a.e().a(o.this.a), an.a.OFFLINE_MOBILE_CENTER));
    }
}
