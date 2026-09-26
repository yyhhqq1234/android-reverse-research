package com.netease.mpay.d.a;

import android.app.Activity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.widget.ay;
import com.netease.mpay.widget.az;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v extends bf.c {
    final /* synthetic */ o a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(o oVar) {
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        com.netease.mpay.e.b.af afVar;
        com.netease.mpay.e.b.af afVar2;
        this.a.b(false);
        afVar = this.a.f;
        if (afVar.v) {
            ay a = ay.a(this.a.b, bk.k);
            Activity activity = this.a.b;
            afVar2 = this.a.f;
            a.a(activity, afVar2.b, az.a(this.a.b), "mobile_account", "get_code_again", "");
        }
    }
}
