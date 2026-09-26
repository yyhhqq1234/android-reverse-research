package com.netease.mpay;

import android.app.Activity;
import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at implements DialogInterface.OnClickListener {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.e.b bVar;
        com.netease.mpay.b.d dVar;
        com.netease.mpay.b.d dVar2;
        com.netease.mpay.b.d dVar3;
        com.netease.mpay.b.d dVar4;
        com.netease.mpay.b.d dVar5;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b bVar2;
        bVar = this.a.g;
        com.netease.mpay.e.c.k c = bVar.c();
        dVar = this.a.d;
        com.netease.mpay.e.b.o b = c.b(dVar.b());
        if (b != null) {
            bVar2 = this.a.g;
            bVar2.c().b(b.c, b.d);
        }
        dVar2 = this.a.d;
        if (dVar2.e != null) {
            dVar5 = this.a.d;
            AuthenticationCallback authenticationCallback = dVar5.e;
            oVar = this.a.o;
            authenticationCallback.onLogout(oVar.c);
        }
        hi a = hi.a();
        FragmentActivity fragmentActivity = this.a.a;
        dVar3 = this.a.d;
        a.C0035a d = dVar3.d();
        dVar4 = this.a.d;
        a.a((Activity) fragmentActivity, d, false, false, true, dVar4.e, (Integer) 0);
        if (this.a.m()) {
            return;
        }
        new com.netease.mpay.b.ap().a(this.a.a);
    }
}
