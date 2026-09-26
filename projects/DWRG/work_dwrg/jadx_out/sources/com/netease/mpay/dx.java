package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class dx implements Runnable {
    final /* synthetic */ com.netease.mpay.e.b.o a;
    final /* synthetic */ dw b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(dw dwVar, com.netease.mpay.e.b.o oVar) {
        this.b = dwVar;
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.a.a(this.a);
    }
}
