package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class it implements DialogInterface.OnClickListener {
    final /* synthetic */ b.a a;
    final /* synthetic */ String b;
    final /* synthetic */ iq c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public it(iq iqVar, b.a aVar, String str) {
        this.c = iqVar;
        this.a = aVar;
        this.b = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.a.a()) {
            this.c.a.B();
        } else {
            this.c.a.b(PaymentResult.ORDER_ERROR.setMessage(this.b));
        }
    }
}
