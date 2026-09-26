package com.netease.mpay.widget;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;
import com.netease.mpay.widget.e;

/* loaded from: classes.dex */
class k extends bf.c {
    final /* synthetic */ e.a a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar, e.a aVar) {
        this.b = eVar;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        if (this.a != null) {
            this.a.a();
        }
        this.b.dismiss();
    }
}
