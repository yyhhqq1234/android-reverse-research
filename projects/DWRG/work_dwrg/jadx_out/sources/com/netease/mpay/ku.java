package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ku implements DialogInterface.OnClickListener {
    final /* synthetic */ kr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ku(kr krVar) {
        this.a = krVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new com.netease.mpay.b.aq().a(this.a.a);
    }
}
