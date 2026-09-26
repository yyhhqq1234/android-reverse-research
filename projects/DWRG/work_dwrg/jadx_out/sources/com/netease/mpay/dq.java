package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dq implements View.OnClickListener {
    final /* synthetic */ dp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dq(dp dpVar) {
        this.a = dpVar;
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
        i = this.a.s;
        if (i >= 2) {
            dp dpVar = this.a;
            i4 = this.a.s;
            dpVar.s = i4 & (-3);
            this.a.u();
            return;
        }
        i2 = this.a.s;
        if (i2 == 1) {
            dp dpVar2 = this.a;
            i3 = this.a.s;
            dpVar2.s = i3 & (-2);
            this.a.v();
        }
    }
}
