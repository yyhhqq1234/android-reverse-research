package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Button;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.r;
import com.netease.mpay.jt;
import com.netease.mpay.widget.RIdentifier;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
class kc implements View.OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ jt.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kc(jt.a aVar, int i) {
        this.b = aVar;
        this.a = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.e.b.af afVar;
        boolean t;
        boolean[] zArr;
        boolean[] zArr2;
        com.netease.mpay.e.b.af afVar2;
        com.netease.mpay.e.b.o oVar;
        com.netease.mpay.e.b.o oVar2;
        com.netease.mpay.e.b.o oVar3;
        r rVar;
        afVar = jt.this.f;
        if (afVar.v) {
            zArr = jt.this.m;
            if (!zArr[this.a]) {
                zArr2 = jt.this.m;
                zArr2[this.a] = true;
                com.netease.mpay.widget.ay a = com.netease.mpay.widget.ay.a(jt.this.a, bk.k);
                FragmentActivity fragmentActivity = jt.this.a;
                afVar2 = jt.this.f;
                String str = afVar2.b;
                oVar = jt.this.g;
                String str2 = oVar.c;
                oVar2 = jt.this.g;
                String str3 = oVar2.e;
                oVar3 = jt.this.g;
                int i = oVar3.f;
                String str4 = "cz_" + jt.this.l[this.a];
                rVar = jt.this.d;
                a.a(fragmentActivity, str, str2, str3, i, "czds", str4, com.netease.mpay.widget.ay.a(rVar.e.b, "czds"), true);
            }
        }
        jt.this.n = this.a;
        jt.this.h = new DecimalFormat("#0.00").format(jt.this.l[this.a] / 10.0f);
        this.b.notifyDataSetChanged();
        Button button = (Button) jt.this.a.findViewById(RIdentifier.f.P);
        t = jt.this.t();
        com.netease.mpay.widget.bf.a(button, t);
    }
}
