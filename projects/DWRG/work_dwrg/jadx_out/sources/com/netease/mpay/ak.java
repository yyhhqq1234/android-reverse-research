package com.netease.mpay;

import android.app.Activity;
import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements DialogInterface.OnClickListener {
    final /* synthetic */ ah a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ah ahVar) {
        this.a = ahVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b bVar2;
        bVar = this.a.f;
        com.netease.mpay.e.b.o b = bVar.c().b(this.a.d.b());
        if (b != null) {
            bVar2 = this.a.f;
            bVar2.c().b(b.c, b.d);
        }
        if (this.a.d.e != null) {
            AuthenticationCallback authenticationCallback = this.a.d.e;
            oVar = this.a.h;
            authenticationCallback.onLogout(oVar.c);
        }
        hi.a().a((Activity) this.a.a, this.a.d.d(), true, false, false, this.a.d.e, (Integer) 0);
        if (this.a.m()) {
            return;
        }
        new com.netease.mpay.b.au().a(this.a.a);
    }
}
