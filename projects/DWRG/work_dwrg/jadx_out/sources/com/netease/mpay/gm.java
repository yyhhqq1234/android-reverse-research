package com.netease.mpay;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gm implements MpayApi.a {
    final /* synthetic */ String a;
    final /* synthetic */ PaymentCallback b;
    final /* synthetic */ String c;
    final /* synthetic */ Integer d;
    final /* synthetic */ MpayApi e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gm(MpayApi mpayApi, String str, PaymentCallback paymentCallback, String str2, Integer num) {
        this.e = mpayApi;
        this.a = str;
        this.b = paymentCallback;
        this.c = str2;
        this.d = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.e.a, this.e.c);
        com.netease.mpay.e.b.f a = bVar.d().a();
        com.netease.mpay.e.b.o a2 = bVar.c().a(this.a);
        if (a != null && !TextUtils.isEmpty(a.j) && a2 != null && !TextUtils.isEmpty(a2.d)) {
            bVar.c().a(a2.c, a2.f, a2.a(true));
            this.e.a(this.c, a.j, a2, a2.a, this.d, this.b);
        } else {
            Cdo.c("LOGOUT");
            if (this.b != null) {
                this.b.onFinish(3, PaymentResult.USER_ERROR);
            }
        }
    }
}
