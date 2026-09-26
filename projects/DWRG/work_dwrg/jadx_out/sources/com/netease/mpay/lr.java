package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class lr extends bf.c {
    final /* synthetic */ lq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lr(lq lqVar) {
        this.a = lqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.e.b.af afVar;
        com.netease.mpay.e.b.af afVar2;
        afVar = this.a.h;
        if (afVar.v) {
            com.netease.mpay.widget.ay a = com.netease.mpay.widget.ay.a(this.a.a, bk.k);
            FragmentActivity fragmentActivity = this.a.a;
            afVar2 = this.a.h;
            a.a(fragmentActivity, afVar2.b, com.netease.mpay.widget.az.a(this.a.a), "email", "click", "");
        }
        this.a.A();
    }
}
