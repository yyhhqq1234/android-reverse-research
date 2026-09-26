package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements View.OnClickListener {
    final /* synthetic */ ah a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ah ahVar) {
        this.a = ahVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.a.d.a == 1 && this.a.d.e != null) {
            this.a.d.e.onDialogFinish();
        }
        new com.netease.mpay.b.au().a(this.a.a);
    }
}
