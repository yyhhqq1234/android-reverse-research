package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class iw implements DialogInterface.OnClickListener {
    final /* synthetic */ iu a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iw(iu iuVar) {
        this.a = iuVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b.B();
    }
}
