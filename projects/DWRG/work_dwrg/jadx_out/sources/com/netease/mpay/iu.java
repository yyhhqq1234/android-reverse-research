package com.netease.mpay;

import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class iu implements com.netease.mpay.f.a.b {
    final /* synthetic */ com.netease.mpay.b.o a;
    final /* synthetic */ ij b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iu(ij ijVar, com.netease.mpay.b.o oVar) {
        this.b = ijVar;
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        Resources resources;
        Resources resources2;
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(this.b.a);
        if (aVar.a()) {
            resources = this.b.g;
            String string = resources.getString(RIdentifier.h.u);
            resources2 = this.b.g;
            sVar.b(string, resources2.getString(RIdentifier.h.cn), new iw(this));
            return;
        }
        if (b.a.ERR_PASS_VERIFY != aVar) {
            sVar.b(str, this.b.a.getString(RIdentifier.h.cn), new iy(this, str));
        } else {
            this.b.f = false;
            com.netease.mpay.f.bj.a(this.b.a, this.b.d.a(), this.b.d.b(), this.b.d.c.f, this.b.d.c.b, this.b.d.c.d, new ix(this));
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.j jVar) {
        if (jVar.a()) {
            new cd(this.b.a, new iv(this)).a(jVar);
        } else {
            b.a(this.b.a, b.a.PayLoaderActivity, new com.netease.mpay.b.f(this.a, jVar.j), null, 1);
        }
    }
}
