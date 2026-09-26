package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.kv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kx implements com.netease.mpay.f.a.b {
    final /* synthetic */ kv a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kx(kv kvVar) {
        this.a = kvVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        kv.b bVar;
        kv.b bVar2;
        if (!aVar.a()) {
            this.a.d();
            return;
        }
        bVar = this.a.m;
        if (bVar != null) {
            bVar2 = this.a.m;
            bVar2.a(4);
        }
        this.a.b.dismiss();
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.k kVar) {
        switch (kVar.a.intValue()) {
            case 0:
                this.a.d();
                return;
            case 1:
                this.a.d();
                return;
            case 2:
            case 3:
            case 5:
            case 6:
            default:
                return;
            case 4:
                this.a.a(3);
                return;
            case 7:
                this.a.a(4);
                return;
        }
    }
}
