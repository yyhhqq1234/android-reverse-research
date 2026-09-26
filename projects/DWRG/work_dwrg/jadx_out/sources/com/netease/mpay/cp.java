package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cp implements DialogInterface.OnClickListener {
    final /* synthetic */ co a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(co coVar) {
        this.a = coVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a.a.finish();
    }
}
