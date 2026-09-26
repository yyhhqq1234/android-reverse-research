package com.netease.mpay;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class av extends bf.c {
    final /* synthetic */ al a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(al alVar) {
        this.a = alVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.b.d dVar;
        com.netease.mpay.b.d dVar2;
        hi a = hi.a();
        FragmentActivity fragmentActivity = this.a.a;
        dVar = this.a.d;
        a.C0035a d = dVar.d();
        dVar2 = this.a.d;
        a.a((Activity) fragmentActivity, d, 3, dVar2.e, (Integer) 3);
    }
}
