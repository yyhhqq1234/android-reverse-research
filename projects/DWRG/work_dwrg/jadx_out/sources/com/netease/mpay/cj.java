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
public class cj extends bf.c {
    final /* synthetic */ int a;
    final /* synthetic */ i.a b;
    final /* synthetic */ ce c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(ce ceVar, int i, i.a aVar) {
        this.c = ceVar;
        this.a = i;
        this.b = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.e.b.af afVar;
        com.netease.mpay.b.k kVar;
        ce.a aVar;
        ArrayList arrayList;
        com.netease.mpay.e.b.af afVar2;
        ce.a aVar2;
        ce.a aVar3;
        ce.a aVar4;
        ArrayList arrayList2;
        afVar = this.c.f;
        if (afVar.v) {
            aVar = this.c.g;
            if (aVar != null) {
                arrayList = this.c.h;
                if (arrayList != null) {
                    com.netease.mpay.widget.ay a = com.netease.mpay.widget.ay.a(this.c.a, bk.k);
                    FragmentActivity fragmentActivity = this.c.a;
                    afVar2 = this.c.f;
                    String str = afVar2.b;
                    aVar2 = this.c.g;
                    String str2 = aVar2.a;
                    aVar3 = this.c.g;
                    String str3 = aVar3.b;
                    aVar4 = this.c.g;
                    int i = aVar4.c;
                    arrayList2 = this.c.h;
                    a.a(fragmentActivity, str, str2, str3, i, arrayList2.size() == 1 ? "tctc_1" : "tctc_2", this.a == 0 ? "tctc_1_1" : this.a == 1 ? "tctc_2_1" : "tctc_2_2", this.b.c);
                }
            }
        }
        kVar = this.c.e;
        b.a(this.c.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(kVar.d(), an.a.LINK_URL).a(this.b.a), null, null);
    }
}
