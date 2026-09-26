package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw implements au.a {
    final /* synthetic */ com.netease.mpay.e.b.o a;
    final /* synthetic */ AuthenticationCallback b;
    final /* synthetic */ Integer c;
    final /* synthetic */ bu d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bu buVar, com.netease.mpay.e.b.o oVar, AuthenticationCallback authenticationCallback, Integer num) {
        this.d = buVar;
        this.a = oVar;
        this.b = authenticationCallback;
        this.c = num;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        com.netease.mpay.e.b bVar;
        if (this.a != null) {
            switch (aVar) {
                case ERR_SMS_VERIFY:
                    hi.a().a((Activity) this.d.a, (com.netease.mpay.b.m) new m.d(this.d.d.d(), this.a.c, this.b), true, this.c);
                    return;
                case ERR_SET_PASS:
                    hi.a().a((Activity) this.d.a, (com.netease.mpay.b.m) new m.g(this.d.d.d(), this.a.c, m.b.LOGIN, this.b), true, this.c);
                    return;
            }
        }
        bu buVar = this.d;
        bVar = this.d.e;
        buVar.a(bVar, this.a, str, this.b, this.c);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        if (mVar.d()) {
            hi.a().a((Activity) this.d.a, (com.netease.mpay.b.m) new m.e(this.d.d.d(), this.a.c, mVar.v, this.b), true, this.c);
        } else {
            new oy(this.d.a, this.d.d.a(), mVar.i, mVar.c, this.d.d.b()).a(mVar.e, mVar.f);
            this.b.onLoginSuccess(new User(str, mVar));
        }
    }
}
