package com.netease.mpay.codescanner;

import android.app.Activity;
import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.hi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements DialogInterface.OnClickListener {
    final /* synthetic */ y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(y yVar) {
        this.a = yVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.netease.mpay.b.x xVar;
        hi a = hi.a();
        FragmentActivity fragmentActivity = this.a.a;
        xVar = this.a.d;
        a.a((Activity) fragmentActivity, xVar.d(), false, (AuthenticationCallback) new ab(this), (Integer) 2);
    }
}
