package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mf implements View.OnClickListener {
    final /* synthetic */ mb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mf(mb mbVar) {
        this.a = mbVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.b.ae aeVar;
        com.netease.mpay.b.ae aeVar2;
        FragmentActivity fragmentActivity = this.a.a;
        b.a aVar = b.a.AppealActivity;
        aeVar = this.a.d;
        a.C0035a d = aeVar.d();
        aeVar2 = this.a.d;
        b.a(fragmentActivity, aVar, new com.netease.mpay.b.b(d, 1, aeVar2.e), null, 1);
    }
}
