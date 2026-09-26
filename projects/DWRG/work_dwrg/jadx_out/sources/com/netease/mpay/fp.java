package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class fp implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ fm b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fp(fm fmVar, String str) {
        this.b = fmVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Cdo.c("AuthenticationCallback : onLogout");
        this.b.c.c();
        this.b.b.onLogout(this.a);
    }
}
