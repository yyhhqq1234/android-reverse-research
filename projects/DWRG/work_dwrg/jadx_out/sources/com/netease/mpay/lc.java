package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.kv;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lc extends bf.c {
    final /* synthetic */ kv a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lc(kv kvVar) {
        this.a = kvVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        kv.b bVar;
        kv.b bVar2;
        bVar = this.a.m;
        if (bVar != null) {
            bVar2 = this.a.m;
            bVar2.a(2);
        }
        this.a.b.dismiss();
    }
}
