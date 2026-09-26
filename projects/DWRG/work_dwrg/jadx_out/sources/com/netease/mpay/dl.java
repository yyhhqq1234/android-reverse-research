package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dl implements DialogInterface.OnClickListener {
    final /* synthetic */ dd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dl(dd ddVar) {
        this.a = ddVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ii iiVar;
        iiVar = this.a.e;
        iiVar.c();
    }
}
