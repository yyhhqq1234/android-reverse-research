package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.f.an;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ni implements View.OnClickListener {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ni(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b.a(this.a.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(this.a.d.d(), an.a.LINK_URL).a(this.a.i.t), null, 2);
    }
}
