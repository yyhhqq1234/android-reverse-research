package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.np;
import com.netease.mpay.widget.af;
import com.netease.mpay.widget.pull2refresh.Pull2RefreshList;
import java.util.ArrayList;

/* loaded from: classes.dex */
class nw implements com.netease.mpay.f.a.b {
    final /* synthetic */ nv a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nw(nv nvVar) {
        this.a = nvVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        Pull2RefreshList pull2RefreshList;
        com.netease.mpay.widget.s sVar;
        switch (aVar) {
            case ERR_LOGOUT:
                this.a.a.s();
                return;
            default:
                pull2RefreshList = this.a.a.g;
                pull2RefreshList.completeRefresh();
                sVar = this.a.a.f;
                sVar.a(str);
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ArrayList arrayList) {
        Pull2RefreshList pull2RefreshList;
        af.b bVar;
        pull2RefreshList = this.a.a.g;
        pull2RefreshList.completeRefresh();
        np npVar = this.a.a;
        bVar = this.a.a.i;
        npVar.a(bVar, arrayList, np.a.RESET);
    }
}
