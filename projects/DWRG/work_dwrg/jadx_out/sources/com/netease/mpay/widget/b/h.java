package com.netease.mpay.widget.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.server.response.ae;

/* loaded from: classes.dex */
class h implements com.netease.mpay.f.a.b {
    final /* synthetic */ c a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(c cVar) {
        this.a = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (aVar.a()) {
            this.a.a(aVar);
        } else {
            this.a.toast(str);
            this.a.closeWindow();
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ae aeVar) {
        if (this.a.d == null || aeVar == null) {
            return;
        }
        this.a.d.loadUrl(aeVar.a);
    }
}
