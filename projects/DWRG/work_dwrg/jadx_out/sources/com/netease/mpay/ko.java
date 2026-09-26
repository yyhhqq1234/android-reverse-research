package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ko implements DialogInterface.OnClickListener {
    final /* synthetic */ kn a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ko(kn knVar) {
        this.a = knVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new ii(this.a.a.a).d();
    }
}
