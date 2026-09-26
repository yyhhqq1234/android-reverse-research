package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class hm extends bf.c {
    final /* synthetic */ hl a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm(hl hlVar) {
        this.a = hlVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        this.a.s();
        if (this.a.d.e != null) {
            this.a.d.e.onDialogFinish();
        }
        this.a.a.finish();
    }
}
