package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class oq implements DialogInterface.OnClickListener {
    final /* synthetic */ oo a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oq(oo ooVar) {
        this.a = ooVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new com.netease.mpay.b.aq().a(this.a.a.a.a);
    }
}
