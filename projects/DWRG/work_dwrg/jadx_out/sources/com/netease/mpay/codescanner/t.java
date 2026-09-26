package com.netease.mpay.codescanner;

import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ao;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bh;
import com.netease.mpay.oy;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements bh.a {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(m mVar) {
        this.a = mVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.bh.a
    public void a(b.a aVar, String str) {
        this.a.a(aVar, str);
    }

    @Override // com.netease.mpay.f.bh.a
    public void a(String str, com.netease.mpay.e.b.o oVar) {
        Resources resources;
        resources = this.a.e;
        new oy(this.a.a, this.a.d.a(), oVar.a, oVar.f, this.a.d.b()).a(oVar.h, oVar.i, String.format(resources.getString(RIdentifier.h.bg), this.a.d.b.c, this.a.d.b.f));
        new ao(str, oVar).a(this.a.a);
    }
}
