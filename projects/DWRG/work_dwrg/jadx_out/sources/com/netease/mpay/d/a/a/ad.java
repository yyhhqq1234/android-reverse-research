package com.netease.mpay.d.a.a;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.aa;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements View.OnClickListener {
    final /* synthetic */ aa a;
    final /* synthetic */ aa.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(aa.a aVar, aa aaVar) {
        this.b = aVar;
        this.a = aaVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        aa.b bVar;
        aa.a aVar;
        bVar = aa.this.b;
        bVar.a(false);
        aVar = aa.this.c;
        aVar.a(true);
    }
}
