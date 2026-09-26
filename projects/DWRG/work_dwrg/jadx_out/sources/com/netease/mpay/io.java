package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class io implements DialogInterface.OnClickListener {
    final /* synthetic */ ij a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public io(ij ijVar) {
        this.a = ijVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
