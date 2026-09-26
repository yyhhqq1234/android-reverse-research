package com.netease.mpay;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.b.m;
import com.netease.mpay.f.an;
import com.netease.mpay.fi;
import com.netease.mpay.view.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fj implements b.a {
    final /* synthetic */ com.netease.mpay.server.response.x a;
    final /* synthetic */ fi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(fi fiVar, com.netease.mpay.server.response.x xVar) {
        this.b = fiVar;
        this.a = xVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.view.b.a
    public void a(boolean z, fi.b bVar) {
        com.netease.mpay.b.a aVar;
        com.netease.mpay.e.b.o oVar;
        if (bVar == null || bVar.a == null) {
            return;
        }
        switch (bVar.a) {
            case SET_PASS:
                if (this.a == null || this.a.d) {
                    this.b.a(an.a.ONLINE_PASSWORD_SET);
                    return;
                }
                hi a = hi.a();
                FragmentActivity fragmentActivity = this.b.a;
                aVar = this.b.d;
                a.C0035a d = aVar.d();
                oVar = this.b.e;
                a.a((Activity) fragmentActivity, (com.netease.mpay.b.m) new m.g(d, oVar.c, m.b.USER_CENTER, null), (Integer) 1);
                return;
            case SET_SEC_EMAIL:
                this.b.a(an.a.ONLINE_SECU_EMAIL_SET);
                return;
            case SET_REAL_NAME:
                this.b.a(an.a.ONLINE_REAL_NAME_SET);
                return;
            case SECURITY_CENTER:
                this.b.a(an.a.ONLINE_MOBILE_CENTER);
                return;
            default:
                return;
        }
    }
}
