package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kt implements DialogInterface.OnClickListener {
    final /* synthetic */ kr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kt(kr krVar) {
        this.a = krVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.s();
    }
}
