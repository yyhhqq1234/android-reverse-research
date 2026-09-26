package com.netease.mpay;

import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class es implements DialogInterface.OnClickListener {
    final /* synthetic */ com.netease.mpay.e.b.o a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ ed e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public es(ed edVar, com.netease.mpay.e.b.o oVar, String str, String str2, String str3) {
        this.e = edVar;
        this.a = oVar;
        this.b = str;
        this.c = str2;
        this.d = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.b.s sVar;
        com.netease.mpay.b.s sVar2;
        com.netease.mpay.b.s sVar3;
        com.netease.mpay.b.s sVar4;
        com.netease.mpay.b.s sVar5;
        com.netease.mpay.b.s sVar6;
        FragmentActivity fragmentActivity = this.e.a;
        sVar = this.e.d;
        String a = sVar.a();
        sVar2 = this.e.d;
        String b = sVar2.b();
        String str = this.a.d;
        sVar3 = this.e.d;
        boolean z = sVar3.f;
        sVar4 = this.e.d;
        int s = sVar4.s();
        sVar5 = this.e.d;
        String k = sVar5.k();
        sVar6 = this.e.d;
        new com.netease.mpay.f.h(fragmentActivity, a, b, str, z, s, k, sVar6.q(), this.b, this.c, this.d, new et(this)).h();
        dialogInterface.dismiss();
    }
}
