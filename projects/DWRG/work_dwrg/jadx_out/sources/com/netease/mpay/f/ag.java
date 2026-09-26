package com.netease.mpay.f;

import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.af;

/* loaded from: classes.dex */
class ag implements com.netease.mpay.f.a.b {
    final /* synthetic */ af a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar) {
        this.a = afVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        af.b bVar;
        af.b bVar2;
        bVar = this.a.j;
        if (bVar != null) {
            bVar2 = this.a.j;
            bVar2.a(aVar, str);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ah ahVar) {
        af.b bVar;
        af.b bVar2;
        Bitmap bitmap;
        bVar = this.a.j;
        if (bVar != null) {
            bVar2 = this.a.j;
            bitmap = this.a.k;
            bVar2.a(ahVar, bitmap);
        }
    }
}
