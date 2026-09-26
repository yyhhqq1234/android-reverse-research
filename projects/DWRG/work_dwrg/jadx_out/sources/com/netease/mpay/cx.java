package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cx implements DialogInterface.OnClickListener {
    final /* synthetic */ cw a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cx(cw cwVar) {
        this.a = cwVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.f.aq aqVar;
        aqVar = this.a.g;
        aqVar.h();
    }
}
