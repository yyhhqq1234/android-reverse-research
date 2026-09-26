package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class jx implements DialogInterface.OnClickListener {
    final /* synthetic */ jt a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jx(jt jtVar) {
        this.a = jtVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new ii(this.a.a).d();
    }
}
