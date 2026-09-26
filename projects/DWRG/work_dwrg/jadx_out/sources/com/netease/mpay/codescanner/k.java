package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements a.b {
    final /* synthetic */ e a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar) {
        this.a = eVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.a.b
    public void a() {
        this.a.h = true;
    }

    @Override // com.netease.mpay.widget.a.b
    public void b() {
        com.netease.mpay.b.v vVar;
        this.a.a.finish();
        vVar = this.a.d;
        vVar.e.onDialogFinish();
    }
}
