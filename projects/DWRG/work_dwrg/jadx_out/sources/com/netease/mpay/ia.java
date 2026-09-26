package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ia implements Runnable {
    final /* synthetic */ hy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ia(hy hyVar) {
        this.a = hyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean d;
        d = this.a.d();
        if (d) {
            this.a.c();
        }
    }
}
