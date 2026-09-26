package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class oe implements DialogInterface.OnClickListener {
    final /* synthetic */ od a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oe(od odVar) {
        this.a = odVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a.a.finish();
    }
}
