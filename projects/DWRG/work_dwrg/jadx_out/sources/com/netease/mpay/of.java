package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.oc;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class of extends bf.c {
    final /* synthetic */ oc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public of(oc ocVar) {
        this.a = ocVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.e.b.u uVar;
        com.netease.mpay.e.b.u uVar2;
        com.netease.mpay.e.b.u uVar3;
        com.netease.mpay.e.b.u uVar4;
        com.netease.mpay.e.b.u uVar5;
        com.netease.mpay.e.b.u uVar6;
        uVar = this.a.i;
        if (uVar == null) {
            return;
        }
        oc ocVar = this.a;
        uVar2 = this.a.i;
        String str = uVar2.d;
        uVar3 = this.a.i;
        String str2 = uVar3.b;
        uVar4 = this.a.i;
        String str3 = uVar4.h;
        uVar5 = this.a.i;
        String str4 = uVar5.c;
        uVar6 = this.a.i;
        new oc.b(str, str2, str3, str4, uVar6.f).execute(new Void[0]);
    }
}
