package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class fq implements Runnable {
    final /* synthetic */ fm a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fq(fm fmVar) {
        this.a = fmVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Cdo.c("AuthenticationCallback : onDialogFinish");
        this.a.b.onDialogFinish();
    }
}
