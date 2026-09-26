package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class gj implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ gh b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gj(gh ghVar, String str) {
        this.b = ghVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Cdo.c("BackgroundAuthenticationCallback : onLoginFail");
        this.b.b.onLoginFail(this.a);
    }
}
