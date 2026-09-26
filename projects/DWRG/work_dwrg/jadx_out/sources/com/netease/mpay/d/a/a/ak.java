package com.netease.mpay.d.a.a;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.aa;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements View.OnClickListener {
    final /* synthetic */ aa a;
    final /* synthetic */ aa.b b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(aa.b bVar, aa aaVar) {
        this.b = bVar;
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
        bVar.a(true);
        aVar = aa.this.c;
        aVar.a(false);
    }
}
