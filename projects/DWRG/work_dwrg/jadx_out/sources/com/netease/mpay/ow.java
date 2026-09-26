package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ow implements Runnable {
    final /* synthetic */ or a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ow(or orVar) {
        this.a = orVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.s();
    }
}
