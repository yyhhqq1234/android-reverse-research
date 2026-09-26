package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ok implements DialogInterface.OnClickListener {
    final /* synthetic */ oj a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ok(oj ojVar) {
        this.a = ojVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new com.netease.mpay.b.aq().a(this.a.a);
    }
}
