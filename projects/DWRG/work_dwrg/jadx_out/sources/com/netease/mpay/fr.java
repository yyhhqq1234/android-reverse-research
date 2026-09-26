package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class fr implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ fm c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fr(fm fmVar, String str, String str2) {
        this.c = fmVar;
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Cdo.c("AuthenticationCallback : onEnterGame");
        this.c.b.onEnterGame(this.a, this.b);
    }
}
