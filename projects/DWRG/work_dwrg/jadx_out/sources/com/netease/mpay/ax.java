package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax implements View.OnClickListener {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.b.d dVar;
        com.netease.mpay.b.d dVar2;
        dVar = this.a.d;
        if (dVar.e != null) {
            dVar2 = this.a.d;
            dVar2.e.onDialogFinish();
        }
        new com.netease.mpay.b.au().a(this.a.a);
    }
}
