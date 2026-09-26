package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class gy implements DialogInterface.OnClickListener {
    final /* synthetic */ gx a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gy(gx gxVar) {
        this.a = gxVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        AuthenticationCallback authenticationCallback;
        authenticationCallback = this.a.c.i;
        authenticationCallback.onDialogFinish();
    }
}
