package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lu implements View.OnClickListener {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lu(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.b.ad adVar;
        com.netease.mpay.b.ad adVar2;
        com.netease.mpay.b.ad adVar3;
        adVar = this.a.d;
        if (adVar.c) {
            adVar2 = this.a.d;
            if (adVar2.e != null) {
                adVar3 = this.a.d;
                adVar3.e.onDialogFinish();
                new com.netease.mpay.b.am().a(this.a.a);
                return;
            }
        }
        new com.netease.mpay.b.au().a(this.a.a);
    }
}
