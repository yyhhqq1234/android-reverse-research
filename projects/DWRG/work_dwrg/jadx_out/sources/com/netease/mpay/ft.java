package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ft implements DialogInterface.OnClickListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ Integer b;
    final /* synthetic */ MpayApi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ft(MpayApi mpayApi, boolean z, Integer num) {
        this.c = mpayApi;
        this.a = z;
        this.b = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.c.a(this.a, this.b);
    }
}
