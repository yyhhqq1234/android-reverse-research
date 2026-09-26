package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.PaymentResult;

/* loaded from: classes.dex */
class c implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ PaymentResult b;
    final /* synthetic */ b c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, int i, PaymentResult paymentResult) {
        this.c = bVar;
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
