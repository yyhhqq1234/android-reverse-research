package com.netease.mpay.widget;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements DialogInterface.OnCancelListener {
    final /* synthetic */ s.a a;
    final /* synthetic */ s b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(s sVar, s.a aVar) {
        this.b = sVar;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.a.a();
    }
}
