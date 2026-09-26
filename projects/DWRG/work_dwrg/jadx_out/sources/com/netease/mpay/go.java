package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class go implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ PaymentResult b;
    final /* synthetic */ gn c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public go(gn gnVar, int i, PaymentResult paymentResult) {
        this.c = gnVar;
        this.a = i;
        this.b = paymentResult;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.b.onFinish(this.a, this.b);
    }
}
