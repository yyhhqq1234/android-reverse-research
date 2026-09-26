package com.netease.mpay;

import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lj implements com.netease.mpay.f.a.b {
    final /* synthetic */ com.netease.mpay.widget.s a;
    final /* synthetic */ li b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lj(li liVar, com.netease.mpay.widget.s sVar) {
        this.b = liVar;
        this.a = sVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        Resources resources;
        Resources resources2;
        Resources resources3;
        if (aVar.a()) {
            com.netease.mpay.widget.s sVar = this.a;
            resources2 = this.b.g;
            String string = resources2.getString(RIdentifier.h.u);
            resources3 = this.b.g;
            sVar.b(string, resources3.getString(RIdentifier.h.cn), new lk(this));
            return;
        }
        if (b.a.ERR_RETRY != aVar) {
            this.a.b(str, this.b.a.getString(RIdentifier.h.cn), new ln(this));
            return;
        }
        com.netease.mpay.widget.s sVar2 = this.a;
        resources = this.b.g;
        sVar2.a(str, resources.getString(RIdentifier.h.cH), new ll(this), this.b.a.getString(RIdentifier.h.g), new lm(this), false);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
    }
}
