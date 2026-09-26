package com.netease.mpay.widget;

import android.app.AlertDialog;
import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements View.OnClickListener {
    final /* synthetic */ AlertDialog a;
    final /* synthetic */ s b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(s sVar, AlertDialog alertDialog) {
        this.b = sVar;
        this.a = alertDialog;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
