package com.netease.mpay.widget.b;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.b.m;

/* loaded from: classes.dex */
class o implements DialogInterface.OnClickListener {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(m mVar) {
        this.a = mVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        m.a aVar;
        aVar = this.a.d;
        aVar.a();
    }
}
