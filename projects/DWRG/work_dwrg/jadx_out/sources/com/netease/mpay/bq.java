package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class bq implements DialogInterface.OnClickListener {
    final /* synthetic */ com.netease.mpay.server.response.i a;
    final /* synthetic */ bp b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(bp bpVar, com.netease.mpay.server.response.i iVar) {
        this.b = bpVar;
        this.a = iVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.a.a(this.a);
    }
}
