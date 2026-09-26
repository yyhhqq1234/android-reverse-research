package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class dg implements DialogInterface.OnCancelListener {
    final /* synthetic */ df a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dg(df dfVar) {
        this.a = dfVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        ii iiVar;
        iiVar = this.a.b.e;
        iiVar.c();
    }
}
