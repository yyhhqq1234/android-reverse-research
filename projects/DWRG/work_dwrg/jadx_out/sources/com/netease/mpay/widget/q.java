package com.netease.mpay.widget;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class q implements Runnable {
    final /* synthetic */ p a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar) {
        this.a = pVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        n.a(this.a.e.getApplicationContext());
    }
}
