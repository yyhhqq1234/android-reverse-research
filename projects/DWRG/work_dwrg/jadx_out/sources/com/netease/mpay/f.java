package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements com.netease.mpay.f.a.b {
    final /* synthetic */ e a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.a = eVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (aVar.a()) {
            new com.netease.mpay.widget.s(this.a.a).b(this.a.a.getString(RIdentifier.h.u), this.a.a.getString(RIdentifier.h.cn), new i(this));
        } else if (b.a.ERR_RETRY == aVar) {
            new com.netease.mpay.widget.s(this.a.a).a(str, this.a.a.getString(RIdentifier.h.cH), new j(this), this.a.a.getString(RIdentifier.h.g), new k(this), false);
        } else {
            new com.netease.mpay.widget.s(this.a.a).b(str, this.a.a.getString(RIdentifier.h.cn), new l(this));
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        this.a.y();
        Handler unused = e.j = new g(this);
        new Thread(new h(this, aeVar)).start();
    }
}
