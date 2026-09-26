package com.netease.mpay.widget.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.o;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;

/* loaded from: classes.dex */
class k implements o.a {
    final /* synthetic */ c a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(c cVar) {
        this.a = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.o.a
    public void a() {
        c.C0059c c0059c;
        c0059c = this.a.f;
        c0059c.c().a(this.a.a.getString(RIdentifier.h.cP));
    }

    @Override // com.netease.mpay.f.o.a
    public void b() {
        c.C0059c c0059c;
        c0059c = this.a.f;
        c0059c.c().a(this.a.a.getString(RIdentifier.h.cQ));
    }
}
