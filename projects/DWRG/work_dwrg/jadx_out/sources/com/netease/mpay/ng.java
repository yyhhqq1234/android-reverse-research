package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ng implements DialogInterface.OnClickListener {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ng(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
