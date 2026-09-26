package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class cg implements Runnable {
    final /* synthetic */ cf a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(cf cfVar) {
        this.a = cfVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a.w();
    }
}
