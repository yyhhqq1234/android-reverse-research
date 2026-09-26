package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gq implements MpayApi.a {
    final /* synthetic */ Integer a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gq(MpayApi mpayApi, Integer num) {
        this.b = mpayApi;
        this.a = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        AuthenticationCallback authenticationCallback;
        hi a = hi.a();
        Activity activity = this.b.a;
        a.C0035a c0035a = new a.C0035a(this.b.c, this.b.d, this.b.f);
        authenticationCallback = this.b.i;
        a.a(activity, c0035a, authenticationCallback, true, this.a);
    }
}
