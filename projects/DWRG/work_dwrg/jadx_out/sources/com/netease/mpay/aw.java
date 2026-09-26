package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class aw extends bf.c {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        new com.netease.mpay.b.am().a(this.a.a);
    }
}
