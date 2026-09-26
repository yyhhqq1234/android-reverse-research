package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class gf implements Runnable {
    final /* synthetic */ User a;
    final /* synthetic */ ge b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(ge geVar, User user) {
        this.b = geVar;
        this.a = user;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b.a.b != null) {
            this.b.a.b.onFinish(this.a);
        }
    }
}
