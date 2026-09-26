package com.netease.mpay;

import android.content.DialogInterface;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hj implements DialogInterface.OnClickListener {
    final /* synthetic */ AuthenticationCallback a;
    final /* synthetic */ hi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hj(hi hiVar, AuthenticationCallback authenticationCallback) {
        this.b = hiVar;
        this.a = authenticationCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.a(this.a);
    }
}
