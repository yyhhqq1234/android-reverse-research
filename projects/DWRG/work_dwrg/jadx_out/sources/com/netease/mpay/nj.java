package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
class nj implements com.netease.mpay.f.a.b {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nj(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (b.a.ERR_LOGOUT == aVar) {
            this.a.w();
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ArrayList arrayList) {
    }
}
