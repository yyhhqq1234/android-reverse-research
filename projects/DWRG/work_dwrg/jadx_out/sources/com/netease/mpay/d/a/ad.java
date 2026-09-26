package com.netease.mpay.d.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.q;
import com.netease.mpay.d.a.y;
import com.netease.mpay.f.bb;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements q.a {
    final /* synthetic */ y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(y yVar) {
        this.a = yVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.q.a
    public void a(String str) {
        Activity activity;
        y.c cVar;
        y.c cVar2;
        y.c cVar3;
        y.c cVar4;
        activity = this.a.c;
        cVar = this.a.e;
        String str2 = cVar.a;
        cVar2 = this.a.e;
        String str3 = cVar2.b;
        cVar3 = this.a.e;
        String str4 = cVar3.c;
        cVar4 = this.a.e;
        new bb(activity, str2, str3, str4, cVar4.e, str, new ae(this)).h();
    }
}
