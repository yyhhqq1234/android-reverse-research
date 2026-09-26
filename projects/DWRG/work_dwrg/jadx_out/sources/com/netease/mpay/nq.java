package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.y;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nq implements com.netease.mpay.f.a.b {
    final /* synthetic */ np a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nq(np npVar) {
        this.a = npVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        com.netease.mpay.b.a aVar2;
        com.netease.mpay.b.a aVar3;
        switch (aVar) {
            case ERR_LOGOUT:
                this.a.s();
                return;
            default:
                FragmentActivity fragmentActivity = this.a.a;
                aVar2 = this.a.d;
                String a = aVar2.a();
                aVar3 = this.a.d;
                new com.netease.mpay.f.y(fragmentActivity, a, aVar3.b(), y.a.FETCH_HISTORY_REMOTE, new nr(this)).h();
                return;
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(ArrayList arrayList) {
        if (arrayList != null) {
            this.a.a(arrayList);
        }
    }
}
