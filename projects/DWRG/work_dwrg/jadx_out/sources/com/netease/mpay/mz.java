package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class mz extends bf.c {
    final /* synthetic */ mk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mz(mk mkVar) {
        this.a = mkVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.widget.bf.a(this.a.a, view.getWindowToken());
        this.a.D();
    }
}
