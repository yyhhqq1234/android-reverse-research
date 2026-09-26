package com.netease.mpay.widget;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements View.OnClickListener {
    final /* synthetic */ DialogInterface.OnClickListener a;
    final /* synthetic */ AlertDialog b;
    final /* synthetic */ s c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(s sVar, DialogInterface.OnClickListener onClickListener, AlertDialog alertDialog) {
        this.c = sVar;
        this.a = onClickListener;
        this.b = alertDialog;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.a != null) {
            this.a.onClick(this.b, -2);
        }
        this.b.dismiss();
    }
}
