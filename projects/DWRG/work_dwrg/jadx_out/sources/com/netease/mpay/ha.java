package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ha implements DialogInterface.OnClickListener {
    final /* synthetic */ gz a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ha(gz gzVar) {
        this.a = gzVar;
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
