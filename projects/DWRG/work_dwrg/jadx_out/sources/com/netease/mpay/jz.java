package com.netease.mpay;

import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.cd;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
class jz implements cd.a {
    final /* synthetic */ jy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jz(jy jyVar) {
        this.a = jyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.cd.a
    public void a() {
        Resources resources;
        jt jtVar = this.a.b;
        resources = this.a.b.e;
        jtVar.a(1, new ar.h(resources.getString(RIdentifier.h.cu)));
    }

    @Override // com.netease.mpay.cd.a
    public void b() {
        this.a.b.a(1, new ar.i());
    }
}
