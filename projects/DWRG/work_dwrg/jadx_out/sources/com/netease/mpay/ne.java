package com.netease.mpay;

import android.app.Activity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class ne extends bf.c {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ne(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        hi.a().a((Activity) this.a.a, this.a.d.d(), false, true, false, this.a.d.e, (Integer) 0);
        this.a.c(false);
    }
}
