package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.r;
import com.netease.mpay.f.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class jv implements com.netease.mpay.f.a.b {
    final /* synthetic */ jt a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jv(jt jtVar) {
        this.a = jtVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(boolean z) {
        com.netease.mpay.e.b.af afVar;
        com.netease.mpay.e.b.af afVar2;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        com.netease.mpay.e.b.o oVar3;
        r rVar;
        afVar = this.a.f;
        if (afVar.v) {
            com.netease.mpay.widget.ay a = com.netease.mpay.widget.ay.a(this.a.a, bk.k);
            FragmentActivity fragmentActivity = this.a.a;
            afVar2 = this.a.f;
            String str = afVar2.b;
            oVar = this.a.g;
            String str2 = oVar.c;
            oVar2 = this.a.g;
            String str3 = oVar2.e;
            oVar3 = this.a.g;
            int i = oVar3.f;
            rVar = this.a.d;
            a.a(fragmentActivity, str, str2, str3, i, "czds", "cz_cz", com.netease.mpay.widget.ay.a(rVar.e.b, "czds"), z);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        com.netease.mpay.widget.s sVar;
        a(false);
        if (aVar.a()) {
            this.a.b(str);
        } else {
            sVar = this.a.j;
            sVar.a(str);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        a(true);
        this.a.i = aeVar.a;
        this.a.v();
    }
}
