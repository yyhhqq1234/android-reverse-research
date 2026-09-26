package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.an;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ff implements DialogInterface.OnClickListener {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(ex exVar) {
        this.a = exVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(an.a.ONLINE_ACCOUNT_INDEX);
    }
}
