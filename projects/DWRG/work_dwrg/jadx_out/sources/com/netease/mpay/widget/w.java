package com.netease.mpay.widget;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements View.OnClickListener {
    final /* synthetic */ DialogInterface.OnClickListener a;
    final /* synthetic */ AlertDialog b;
    final /* synthetic */ int c;
    final /* synthetic */ s d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(s sVar, DialogInterface.OnClickListener onClickListener, AlertDialog alertDialog, int i) {
        this.d = sVar;
        this.a = onClickListener;
        this.b = alertDialog;
        this.c = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.onClick(this.b, this.c);
        this.b.dismiss();
    }
}
