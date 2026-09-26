package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bx implements DialogInterface.OnClickListener {
    final /* synthetic */ com.netease.mpay.e.b a;
    final /* synthetic */ com.netease.mpay.e.b.o b;
    final /* synthetic */ bu c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(bu buVar, com.netease.mpay.e.b bVar, com.netease.mpay.e.b.o oVar) {
        this.c = buVar;
        this.a = bVar;
        this.b = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.c().c(this.b.c, this.c.d.b());
        this.c.a(false, false);
    }
}
