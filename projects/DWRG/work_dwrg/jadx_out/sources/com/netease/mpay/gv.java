package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gv implements Runnable {
    final /* synthetic */ MpayApi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gv(MpayApi mpayApi) {
        this.a = mpayApi;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.b();
    }
}
