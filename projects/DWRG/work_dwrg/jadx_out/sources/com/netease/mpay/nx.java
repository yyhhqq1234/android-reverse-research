package com.netease.mpay;

import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.y;
import com.netease.mpay.widget.pull2refresh.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nx implements a.g {
    final /* synthetic */ np a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nx(np npVar) {
        this.a = npVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.pull2refresh.a.g
    public void a() {
        com.netease.mpay.b.a aVar;
        com.netease.mpay.b.a aVar2;
        FragmentActivity fragmentActivity = this.a.a;
        aVar = this.a.d;
        String a = aVar.a();
        aVar2 = this.a.d;
        new com.netease.mpay.f.y(fragmentActivity, a, aVar2.b(), y.a.FETCH_MORE_HISTORY_REMOTE, new ny(this)).h();
    }
}
