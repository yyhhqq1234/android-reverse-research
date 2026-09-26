package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class id implements Runnable {
    final /* synthetic */ hy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public id(hy hyVar) {
        this.a = hyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b bVar2;
        bVar = this.a.e;
        com.netease.mpay.e.b.y a = bVar.i().a();
        bVar2 = this.a.e;
        bVar2.i().b();
        if (a.a()) {
            return;
        }
        this.a.a(a.a, a.b, a.c, a.d, a.e);
    }
}
