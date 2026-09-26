package com.netease.mpay;

import android.content.DialogInterface;
import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
class kb implements DialogInterface.OnClickListener {
    final /* synthetic */ jy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kb(jy jyVar) {
        this.a = jyVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Resources resources;
        jt jtVar = this.a.b;
        resources = this.a.b.e;
        jtVar.a(1, new ar.h(resources.getString(RIdentifier.h.cu)));
    }
}
