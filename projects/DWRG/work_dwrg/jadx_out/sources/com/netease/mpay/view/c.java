package com.netease.mpay.view;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.view.b;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class c extends bf.c {
    final /* synthetic */ b.c a;
    final /* synthetic */ View b;
    final /* synthetic */ boolean c;
    final /* synthetic */ b d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, b.c cVar, View view, boolean z) {
        this.d = bVar;
        this.a = cVar;
        this.b = view;
        this.c = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        if (this.a == null || this.a.a == null) {
            return;
        }
        this.b.setVisibility(8);
        this.a.a.f = false;
        this.d.d.a(this.c, this.a.b);
    }
}
