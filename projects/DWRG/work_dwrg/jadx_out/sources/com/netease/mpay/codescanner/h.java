package com.netease.mpay.codescanner;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.x;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class h implements com.netease.mpay.f.a.b {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        this.a.a.a(str, false);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.aa aaVar) {
        com.netease.mpay.b.v vVar;
        com.netease.mpay.b.v vVar2;
        switch (l.a[aaVar.b.ordinal()]) {
            case 1:
                this.a.a.a(aaVar);
                return;
            case 2:
                FragmentActivity fragmentActivity = this.a.a.a;
                b.a aVar = b.a.ScanCodePayActivity;
                vVar = this.a.a.d;
                String a = vVar.a();
                vVar2 = this.a.a.d;
                com.netease.mpay.b.a(fragmentActivity, aVar, new com.netease.mpay.b.x(new a.C0035a(a, "webPay", vVar2.c()), new x.b(aaVar)), null, 2);
                return;
            default:
                return;
        }
    }
}
