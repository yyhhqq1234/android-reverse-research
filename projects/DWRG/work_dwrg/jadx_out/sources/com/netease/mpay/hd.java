package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hd implements DialogInterface.OnClickListener {
    final /* synthetic */ MpayApi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hd(MpayApi mpayApi) {
        this.a = mpayApi;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
    }
}
