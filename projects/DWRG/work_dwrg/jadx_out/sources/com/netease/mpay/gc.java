package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class gc implements Runnable {
    final /* synthetic */ User a;
    final /* synthetic */ gb b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gc(gb gbVar, User user) {
        this.b = gbVar;
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
