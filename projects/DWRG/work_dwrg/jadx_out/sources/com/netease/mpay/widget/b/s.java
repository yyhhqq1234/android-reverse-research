package com.netease.mpay.widget.b;

import android.app.Activity;
import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.aq;

/* loaded from: classes.dex */
class s implements DialogInterface.OnClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ q b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(q qVar, Activity activity) {
        this.b = qVar;
        this.a = activity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        new aq().a(this.a);
    }
}
