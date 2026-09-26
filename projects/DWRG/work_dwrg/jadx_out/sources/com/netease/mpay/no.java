package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.aj;
import com.netease.mpay.e.b.al;
import com.netease.mpay.nn;
import com.netease.mpay.view.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class no implements b.a {
    final /* synthetic */ nn a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public no(nn nnVar) {
        this.a = nnVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.view.b.a
    public void a(boolean z, aj.a aVar) {
        nn.a aVar2;
        nn.a aVar3;
        com.netease.mpay.e.b.al alVar;
        com.netease.mpay.e.b bVar;
        String str;
        com.netease.mpay.e.b bVar2;
        String str2;
        if (z) {
            alVar = this.a.g;
            al.a a = alVar.a(aVar.a);
            if (a != null) {
                a.a = true;
            }
            bVar = this.a.c;
            com.netease.mpay.e.c.b e = bVar.e();
            str = this.a.e;
            com.netease.mpay.e.b.al c = e.c(str);
            c.b(aVar.a);
            bVar2 = this.a.c;
            com.netease.mpay.e.c.b e2 = bVar2.e();
            str2 = this.a.e;
            e2.a(str2, c);
        }
        aVar2 = this.a.h;
        if (aVar2 != null) {
            aVar3 = this.a.h;
            aVar3.a(aVar);
        }
    }
}
