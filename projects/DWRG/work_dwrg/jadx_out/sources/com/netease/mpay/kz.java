package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.kv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class kz implements com.netease.mpay.f.a.b {
    final /* synthetic */ kv a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kz(kv kvVar) {
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
            if (b.a.ERR_RETRY == aVar) {
                this.a.a(1);
                return;
            } else {
                this.a.a(4);
                return;
            }
        }
        bVar = this.a.m;
        if (bVar != null) {
            bVar2 = this.a.m;
            bVar2.a(4);
        }
        this.a.b.dismiss();
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        this.a.k = aeVar.a;
        new kv.a(this.a, null).execute(new Void[0]);
    }
}
