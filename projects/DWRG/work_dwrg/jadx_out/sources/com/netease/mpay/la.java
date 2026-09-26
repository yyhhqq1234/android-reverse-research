package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class la implements Runnable {
    final /* synthetic */ kv a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public la(kv kvVar) {
        this.a = kvVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.netease.mpay.f.aa aaVar;
        com.netease.mpay.f.aa aaVar2;
        aaVar = this.a.n;
        if (aaVar != null) {
            aaVar2 = this.a.n;
            aaVar2.h();
        }
    }
}
