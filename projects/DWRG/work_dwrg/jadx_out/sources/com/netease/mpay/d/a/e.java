package com.netease.mpay.d.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.d.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.widget.ay;
import com.netease.mpay.widget.az;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements com.netease.mpay.f.a.b {
    final /* synthetic */ String a;
    final /* synthetic */ boolean b;
    final /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar, String str, boolean z) {
        this.c = aVar;
        this.a = str;
        this.b = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        a.b bVar;
        bVar = this.c.b;
        bVar.a(str);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.v vVar) {
        com.netease.mpay.e.b.af afVar;
        a.b bVar;
        Activity activity;
        Activity activity2;
        com.netease.mpay.e.b.af afVar2;
        Activity activity3;
        afVar = this.c.f;
        if (afVar.v && !vVar.a) {
            activity = this.c.a;
            ay a = ay.a(activity, bk.k);
            activity2 = this.c.a;
            afVar2 = this.c.f;
            String str = afVar2.b;
            activity3 = this.c.a;
            a.a(activity2, str, az.a(activity3), "mobile_account", "click", "");
        }
        bVar = this.c.b;
        bVar.a(this.a, vVar, this.b);
    }
}
