package com.netease.mpay;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.ce;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cf extends bf.c {
    final /* synthetic */ ce a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(ce ceVar) {
        this.a = ceVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.e.b.af afVar;
        com.netease.mpay.b.k kVar;
        com.netease.mpay.b.k kVar2;
        ce.a aVar;
        ArrayList arrayList;
        com.netease.mpay.e.b.af afVar2;
        ce.a aVar2;
        ce.a aVar3;
        ce.a aVar4;
        ArrayList arrayList2;
        afVar = this.a.f;
        if (afVar.v) {
            aVar = this.a.g;
            if (aVar != null) {
                arrayList = this.a.h;
                if (arrayList != null) {
                    com.netease.mpay.widget.ay a = com.netease.mpay.widget.ay.a(this.a.a, bk.k);
                    FragmentActivity fragmentActivity = this.a.a;
                    afVar2 = this.a.f;
                    String str = afVar2.b;
                    aVar2 = this.a.g;
                    String str2 = aVar2.a;
                    aVar3 = this.a.g;
                    String str3 = aVar3.b;
                    aVar4 = this.a.g;
                    int i = aVar4.c;
                    arrayList2 = this.a.h;
                    a.a((Context) fragmentActivity, str, str2, str3, i, arrayList2.size() == 1 ? "tctc_1" : "tctc_2", "tc", true);
                }
            }
        }
        cz.a(this.a.a).a();
        com.netease.mpay.widget.ay.a(this.a.a, bk.k).a(this.a.a);
        new com.netease.mpay.b.au().a(this.a.a);
        kVar = this.a.e;
        if (kVar.e != null) {
            Cdo.c("AuthenticationCallback : onDialogFinish");
            kVar2 = this.a.e;
            kVar2.e.onDialogFinish();
        }
        this.a.i = true;
        new Handler().postDelayed(new cg(this), 500L);
    }
}
