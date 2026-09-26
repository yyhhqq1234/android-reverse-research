package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.ck;

/* loaded from: classes.dex */
class fo implements Runnable {
    final /* synthetic */ User a;
    final /* synthetic */ fm b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fo(fm fmVar, User user) {
        this.b = fmVar;
        this.a = user;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Cdo.c("AuthenticationCallback : onGuestBindSuccess");
        ck.a.a().c(this.b.c.c);
        new com.netease.mpay.f.bn(this.b.c.a, this.b.c.c, this.b.c.d).h();
        this.b.b.onGuestBindSuccess(this.a);
        hy.a(this.a == null ? null : this.a.uid);
    }
}
