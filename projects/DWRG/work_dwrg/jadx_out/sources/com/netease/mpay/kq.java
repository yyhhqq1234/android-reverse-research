package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.kd;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class kq extends bf.c {
    final /* synthetic */ int a;
    final /* synthetic */ kd.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kq(kd.a aVar, int i) {
        this.b = aVar;
        this.a = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        int[] iArr;
        kd.this.c(0);
        kd kdVar = kd.this;
        iArr = this.b.b;
        kdVar.b(iArr[this.a]);
    }
}
