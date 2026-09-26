package com.netease.mpay;

import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class co implements com.netease.mpay.f.a.b {
    final /* synthetic */ ck a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public co(ck ckVar) {
        this.a = ckVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        com.netease.mpay.widget.s sVar;
        sVar = this.a.f;
        sVar.a(str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(Void r5) {
        com.netease.mpay.widget.s sVar;
        Resources resources;
        Resources resources2;
        sVar = this.a.f;
        resources = this.a.i;
        String string = resources.getString(RIdentifier.h.B);
        resources2 = this.a.i;
        sVar.b(string, resources2.getString(RIdentifier.h.cn), new cp(this));
    }
}
