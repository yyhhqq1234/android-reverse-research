package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fe implements DialogInterface.OnClickListener {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fe(ex exVar) {
        this.a = exVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.t();
    }
}
