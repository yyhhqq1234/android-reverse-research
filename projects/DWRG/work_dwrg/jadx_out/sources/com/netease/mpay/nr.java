package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
class nr implements com.netease.mpay.f.a.b {
    final /* synthetic */ nq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nr(nq nqVar) {
        this.a = nqVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        switch (ob.a[aVar.ordinal()]) {
            case 1:
                this.a.a.s();
                return;
            default:
                this.a.a.a(new ArrayList());
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ArrayList arrayList) {
        if (arrayList != null) {
            this.a.a.a(arrayList);
        }
    }
}
