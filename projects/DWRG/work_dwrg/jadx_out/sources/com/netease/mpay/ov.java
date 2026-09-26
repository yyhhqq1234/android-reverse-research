package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ov implements DialogInterface.OnClickListener {
    final /* synthetic */ or a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ov(or orVar) {
        this.a = orVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new com.netease.mpay.b.aq().a(this.a.a);
    }
}
