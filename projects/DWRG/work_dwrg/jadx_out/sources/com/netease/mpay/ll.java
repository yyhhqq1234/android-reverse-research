package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ll implements DialogInterface.OnClickListener {
    final /* synthetic */ lj a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ll(lj ljVar) {
        this.a = ljVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b.t();
    }
}
