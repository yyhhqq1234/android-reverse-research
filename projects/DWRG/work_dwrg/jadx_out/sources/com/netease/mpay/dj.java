package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class dj implements DialogInterface.OnClickListener {
    final /* synthetic */ df a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(df dfVar) {
        this.a = dfVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ii iiVar;
        iiVar = this.a.b.e;
        iiVar.b();
    }
}
