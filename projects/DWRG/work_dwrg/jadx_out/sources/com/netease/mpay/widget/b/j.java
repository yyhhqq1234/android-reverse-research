package com.netease.mpay.widget.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.server.response.ae;

/* loaded from: classes.dex */
class j implements com.netease.mpay.f.a.b {
    final /* synthetic */ c a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(c cVar) {
        this.a = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ae aeVar) {
        this.a.d.loadUrl(aeVar.a);
    }
}
