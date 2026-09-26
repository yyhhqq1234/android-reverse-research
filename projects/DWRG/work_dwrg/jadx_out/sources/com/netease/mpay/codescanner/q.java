package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class q implements Runnable {
    final /* synthetic */ com.netease.mpay.e.b.o a;
    final /* synthetic */ p b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar, com.netease.mpay.e.b.o oVar) {
        this.b = pVar;
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.a.b(this.a);
    }
}
