package com.netease.mpay.d.a;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.o;
import com.netease.mpay.f.an;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements View.OnClickListener {
    final /* synthetic */ o a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(o oVar) {
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        o.b bVar;
        bVar = this.a.c;
        bVar.a(an.a.MOBILE_SERVICE_RULE);
    }
}
