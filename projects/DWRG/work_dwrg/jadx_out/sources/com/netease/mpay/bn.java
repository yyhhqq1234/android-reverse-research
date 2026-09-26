package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.EnterGameActivity;
import com.netease.mpay.cz;
import com.netease.mpay.f.t;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bn implements cz.a {
    final /* synthetic */ EnterGameActivity.a a;
    final /* synthetic */ bm b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(bm bmVar, EnterGameActivity.a aVar) {
        this.b = bmVar;
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.cz.a
    public void a() {
        Activity activity;
        String str;
        String str2;
        com.netease.mpay.f.a.b bVar;
        activity = this.b.a;
        str = this.b.b;
        str2 = this.b.c;
        String str3 = this.a.a;
        bVar = this.b.i;
        new com.netease.mpay.f.x(activity, str, str2, str3, bVar).h();
    }

    @Override // com.netease.mpay.cz.a
    public void a(t.c cVar, String str) {
        Activity activity;
        Activity activity2;
        n.a().f();
        if (str == null || str.equals("")) {
            return;
        }
        activity = this.b.a;
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(activity);
        activity2 = this.b.a;
        sVar.a(str, activity2.getString(RIdentifier.h.j), new bo(this));
    }
}
