package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class lt extends bf.c {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lt(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        new com.netease.mpay.b.am().a(this.a.a);
    }
}
