package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class gi implements Runnable {
    final /* synthetic */ User a;
    final /* synthetic */ gh b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gi(gh ghVar, User user) {
        this.b = ghVar;
        this.a = user;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Cdo.c("BackgroundAuthenticationCallback : onLoginSuccess");
        this.b.b.onLoginSuccess(this.a);
        this.b.c.a();
    }
}
