package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au extends bf.c {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.b.d dVar;
        dVar = this.a.d;
        b.a(this.a.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(dVar.d(), an.a.GUEST_BIND_URS), null, 1);
    }
}
