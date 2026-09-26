package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class iy implements DialogInterface.OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ iu b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iy(iu iuVar, String str) {
        this.b = iuVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.b.b(PaymentResult.PAY_CHANNEL_ERROR.setMessage(this.a));
    }
}
