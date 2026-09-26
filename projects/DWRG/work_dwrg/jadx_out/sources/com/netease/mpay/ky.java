package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.kv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ky implements View.OnClickListener {
    final /* synthetic */ kv a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ky(kv kvVar) {
        this.a = kvVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        kv.b bVar;
        kv.b bVar2;
        int i5 = 2;
        i = this.a.l;
        if (i != 4) {
            i2 = this.a.l;
            if (i2 == 3) {
                i5 = 1;
            } else {
                i3 = this.a.l;
                if (i3 != 2) {
                    i4 = this.a.l;
                    if (i4 != 5) {
                        i5 = 5;
                    }
                }
                i5 = 3;
            }
        }
        bVar = this.a.m;
        if (bVar != null) {
            bVar2 = this.a.m;
            bVar2.a(i5);
        }
        this.a.b.dismiss();
    }
}
