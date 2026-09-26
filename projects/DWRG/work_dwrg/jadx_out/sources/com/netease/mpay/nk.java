package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nk implements DialogInterface.OnClickListener {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nk(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b bVar2;
        bVar = this.a.h;
        com.netease.mpay.e.b.o b = bVar.c().b(this.a.d.b());
        if (b != null) {
            bVar2 = this.a.h;
            bVar2.c().b(b.c, b.d);
        }
        this.a.x();
        this.a.o = false;
    }
}
