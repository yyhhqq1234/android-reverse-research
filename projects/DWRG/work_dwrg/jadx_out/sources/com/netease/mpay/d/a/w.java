package com.netease.mpay.d.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.d.a.o;
import com.netease.mpay.f.am;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.ay;
import com.netease.mpay.widget.az;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements am.a {
    final /* synthetic */ boolean a;
    final /* synthetic */ o b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(o oVar, boolean z) {
        this.b = oVar;
        this.a = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.am.a
    public void a() {
        o.b bVar;
        com.netease.mpay.e.b.af afVar;
        com.netease.mpay.e.b.af afVar2;
        bVar = this.b.c;
        bVar.a(this.b.b.getString(RIdentifier.h.aR));
        afVar = this.b.f;
        if (afVar.v && this.a) {
            ay a = ay.a(this.b.b, bk.k);
            Activity activity = this.b.b;
            afVar2 = this.b.f;
            a.a(activity, afVar2.b, az.a(this.b.b), "mobile_account", "get_code", "");
        }
    }

    @Override // com.netease.mpay.f.am.a
    public void a(String str, a.q qVar) {
        o.b bVar;
        o.d dVar;
        if (qVar != null) {
            o oVar = this.b;
            dVar = this.b.d;
            oVar.a(dVar.c, qVar.b, qVar.a);
        } else {
            bVar = this.b.c;
            bVar.a(str);
            this.b.b();
        }
    }
}
