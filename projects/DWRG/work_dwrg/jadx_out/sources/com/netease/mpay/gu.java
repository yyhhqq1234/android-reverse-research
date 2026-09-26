package com.netease.mpay;

import android.app.Activity;
import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gu implements DialogInterface.OnClickListener {
    final /* synthetic */ Integer a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gu(MpayApi mpayApi, Integer num) {
        this.b = mpayApi;
        this.a = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        AuthenticationCallback authenticationCallback;
        Activity activity = this.b.a;
        b.a aVar = b.a.NetTestActivity;
        a.C0035a c0035a = new a.C0035a(this.b.c, this.b.d, this.b.f);
        authenticationCallback = this.b.i;
        b.a(activity, aVar, new com.netease.mpay.b.k(c0035a, authenticationCallback), new b.C0036b(true), this.a);
    }
}
