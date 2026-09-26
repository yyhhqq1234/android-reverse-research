package com.netease.mpay.d.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.f;
import com.netease.mpay.f.am;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements am.a {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.am.a
    public void a() {
        f.d dVar;
        Activity activity;
        dVar = this.a.d;
        activity = this.a.b;
        dVar.a(activity.getString(RIdentifier.h.aR));
    }

    @Override // com.netease.mpay.f.am.a
    public void a(String str, a.q qVar) {
        f.d dVar;
        com.netease.mpay.d.a.a.k kVar;
        Activity activity;
        if (qVar != null) {
            activity = this.a.b;
            new com.netease.mpay.d.a.a.an(activity, qVar.b, qVar.a).a();
        } else {
            dVar = this.a.d;
            dVar.a(str);
        }
        kVar = this.a.e;
        kVar.d();
    }
}
