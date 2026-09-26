package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.o;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
class dm implements o.a {
    final /* synthetic */ dd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dm(dd ddVar) {
        this.a = ddVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.o.a
    public void a() {
        new com.netease.mpay.widget.s(this.a.a).a(this.a.a.getString(RIdentifier.h.cP));
    }

    @Override // com.netease.mpay.f.o.a
    public void b() {
        new com.netease.mpay.widget.s(this.a.a).a(this.a.a.getString(RIdentifier.h.cQ));
    }
}
