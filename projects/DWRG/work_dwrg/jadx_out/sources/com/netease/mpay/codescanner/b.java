package com.netease.mpay.codescanner;

import android.os.Handler;
import com.dodola.rocoo.Hack;
import com.netease.mpay.PaymentCallback;
import com.netease.mpay.PaymentResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements PaymentCallback {
    final /* synthetic */ Handler a;
    final /* synthetic */ PaymentCallback b;
    final /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, Handler handler, PaymentCallback paymentCallback) {
        this.c = aVar;
        this.a = handler;
        this.b = paymentCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.PaymentCallback
    public void onFinish(int i, PaymentResult paymentResult) {
        this.a.post(new c(this, i, paymentResult));
    }
}
