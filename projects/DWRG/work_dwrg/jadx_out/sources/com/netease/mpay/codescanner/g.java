package com.netease.mpay.codescanner;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.QrCodeScannerCallback;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.x;
import com.netease.mpay.codescanner.e;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class g implements com.netease.mpay.f.a.b {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
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
    public void a(com.netease.mpay.server.response.ab abVar) {
        com.netease.mpay.b.v vVar;
        e.b bVar;
        com.netease.mpay.b.v vVar2;
        com.netease.mpay.b.v vVar3;
        e.b bVar2;
        com.netease.mpay.b.v vVar4;
        e.b bVar3;
        e.b bVar4;
        FragmentActivity fragmentActivity = this.a.a.a;
        vVar = this.a.a.d;
        com.netease.mpay.e.c.k c = new com.netease.mpay.e.b(fragmentActivity, vVar.a()).c();
        bVar = this.a.a.j;
        com.netease.mpay.e.b.o a = c.a(((e.c) bVar).b);
        if (a != null && !TextUtils.isEmpty(a.d)) {
            this.a.a.a.finish();
            vVar4 = this.a.a.d;
            QrCodeScannerCallback qrCodeScannerCallback = vVar4.b;
            bVar3 = this.a.a.j;
            String str = ((e.c) bVar3).b;
            bVar4 = this.a.a.j;
            qrCodeScannerCallback.onFetchOrder(str, ((e.c) bVar4).c);
            return;
        }
        FragmentActivity fragmentActivity2 = this.a.a.a;
        b.a aVar = b.a.ScanCodePayActivity;
        vVar2 = this.a.a.d;
        String a2 = vVar2.a();
        vVar3 = this.a.a.d;
        a.C0035a c0035a = new a.C0035a(a2, "webPay", vVar3.c());
        bVar2 = this.a.a.j;
        com.netease.mpay.b.a(fragmentActivity2, aVar, new com.netease.mpay.b.x(c0035a, new x.a(((e.c) bVar2).b, abVar)), null, 3);
    }
}
