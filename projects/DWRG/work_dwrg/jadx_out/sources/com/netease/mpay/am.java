package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am implements View.OnClickListener {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.b.d dVar;
        com.netease.mpay.b.d dVar2;
        FragmentActivity fragmentActivity = this.a.a;
        b.a aVar = b.a.AppealActivity;
        dVar = this.a.d;
        a.C0035a d = dVar.d();
        dVar2 = this.a.d;
        b.a(fragmentActivity, aVar, new com.netease.mpay.b.b(d, 1, dVar2.e), null, 2);
    }
}
