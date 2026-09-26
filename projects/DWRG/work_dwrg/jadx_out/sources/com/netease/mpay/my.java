package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class my implements View.OnClickListener {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public my(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.b.af afVar;
        com.netease.mpay.b.af afVar2;
        FragmentActivity fragmentActivity = this.a.a;
        b.a aVar = b.a.AppealActivity;
        afVar = this.a.d;
        a.C0035a d = afVar.d();
        afVar2 = this.a.d;
        b.a(fragmentActivity, aVar, new com.netease.mpay.b.b(d, 1, afVar2.e), null, 1);
    }
}
