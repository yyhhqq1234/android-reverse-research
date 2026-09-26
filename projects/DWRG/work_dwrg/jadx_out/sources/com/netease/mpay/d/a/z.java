package com.netease.mpay.d.a;

import android.app.Activity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.y;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
class z implements View.OnClickListener {
    final /* synthetic */ y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(y yVar) {
        this.a = yVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        y.c cVar;
        activity = this.a.c;
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(activity);
        int i = RIdentifier.e.o;
        cVar = this.a.e;
        sVar.a(i, cVar.f);
    }
}
