package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jf implements DialogInterface.OnClickListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ jb b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jf(jb jbVar, boolean z) {
        this.b = jbVar;
        this.a = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.a) {
            new ii(this.b.a).d();
        } else {
            this.b.t();
        }
        dialogInterface.dismiss();
    }
}
