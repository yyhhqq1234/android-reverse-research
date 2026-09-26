package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class me implements View.OnClickListener {
    final /* synthetic */ mb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public me(mb mbVar) {
        this.a = mbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        new com.netease.mpay.b.au().a(this.a.a);
    }
}
