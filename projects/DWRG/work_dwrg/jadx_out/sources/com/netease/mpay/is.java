package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class is implements DialogInterface.OnClickListener {
    final /* synthetic */ iq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public is(iq iqVar) {
        this.a = iqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.a.b(PaymentResult.NETWORK_ERROR);
    }
}
