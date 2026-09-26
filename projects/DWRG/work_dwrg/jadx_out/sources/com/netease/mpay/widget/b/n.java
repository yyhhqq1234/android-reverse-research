package com.netease.mpay.widget.b;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.b.m;

/* loaded from: classes.dex */
class n implements DialogInterface.OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ m b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar, String str) {
        this.b = mVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        m.a aVar;
        aVar = this.b.d;
        aVar.a(this.a);
    }
}
