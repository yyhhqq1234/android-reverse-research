package com.netease.mpay.codescanner;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements DialogInterface.OnClickListener {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(m mVar) {
        this.a = mVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.j = null;
        new au().a(this.a.a);
    }
}
