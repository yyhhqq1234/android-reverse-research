package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class fl extends bf.c {
    final /* synthetic */ a a;
    final /* synthetic */ MpayActivity b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(MpayActivity mpayActivity, a aVar) {
        this.b = mpayActivity;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        this.a.o();
    }
}
