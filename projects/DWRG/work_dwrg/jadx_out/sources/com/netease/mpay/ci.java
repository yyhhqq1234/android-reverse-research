package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.ce;
import com.netease.mpay.e.b.i;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ci extends bf.c {
    final /* synthetic */ ce a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(ce ceVar) {
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
        com.netease.mpay.b.ah ahVar;
        com.netease.mpay.b.k kVar3;
        com.netease.mpay.b.k kVar4;
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
                    a.a(fragmentActivity, str, str2, str3, i, "tctc_1", "tctc_1_1", ((i.a) arrayList2.get(0)).c);
                }
            }
        }
        FragmentActivity fragmentActivity2 = this.a.a;
        kVar = this.a.e;
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(fragmentActivity2, kVar.a());
        com.netease.mpay.e.c.k c = bVar.c();
        kVar2 = this.a.e;
        com.netease.mpay.e.b.o b = c.b(kVar2.b());
        com.netease.mpay.e.b.f a2 = bVar.d().a();
        if (a2 == null || a2.j == null || a2.i == null || b == null || !b.l || !b.m || com.netease.mpay.e.a.a.a(b.f)) {
            kVar3 = this.a.e;
            ahVar = new com.netease.mpay.b.ah(kVar3.d(), an.a.GAME_CENTER);
        } else {
            kVar4 = this.a.e;
            ahVar = new com.netease.mpay.b.ah(kVar4.d(), an.a.OUTGOING).b("gamecenter");
        }
        b.a(this.a.a, b.a.WebLinksActivity, ahVar, null, null);
    }
}
