package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gn implements PaymentCallback {
    final /* synthetic */ Handler a;
    final /* synthetic */ PaymentCallback b;
    final /* synthetic */ MpayApi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gn(MpayApi mpayApi, Handler handler, PaymentCallback paymentCallback) {
        this.c = mpayApi;
        this.a = handler;
        this.b = paymentCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.PaymentCallback
    public void onFinish(int i, PaymentResult paymentResult) {
        this.a.post(new go(this, i, paymentResult));
    }
}
