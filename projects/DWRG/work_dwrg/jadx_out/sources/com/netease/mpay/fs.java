package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.b.m;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fs implements au.a {
    final /* synthetic */ com.netease.mpay.e.b.o a;
    final /* synthetic */ Integer b;
    final /* synthetic */ com.netease.mpay.e.b c;
    final /* synthetic */ MpayApi d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fs(MpayApi mpayApi, com.netease.mpay.e.b.o oVar, Integer num, com.netease.mpay.e.b bVar) {
        this.d = mpayApi;
        this.a = oVar;
        this.b = num;
        this.c = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        AuthenticationCallback authenticationCallback;
        AuthenticationCallback authenticationCallback2;
        this.c.c().c(this.a.c, this.d.d);
        switch (aVar) {
            case ERR_SMS_VERIFY:
                hi a = hi.a();
                Activity activity = this.d.a;
                a.C0035a c0035a = new a.C0035a(this.d.c, this.d.d, this.d.f);
                String str2 = this.a.c;
                authenticationCallback2 = this.d.i;
                a.a(activity, (com.netease.mpay.b.m) new m.d(c0035a, str2, authenticationCallback2), true, this.b);
                return;
            case ERR_SET_PASS:
                hi a2 = hi.a();
                Activity activity2 = this.d.a;
                a.C0035a c0035a2 = new a.C0035a(this.d.c, this.d.d, this.d.f);
                String str3 = this.a.c;
                m.b bVar = m.b.LOGIN;
                authenticationCallback = this.d.i;
                a2.a(activity2, (com.netease.mpay.b.m) new m.g(c0035a2, str3, bVar, authenticationCallback), true, this.b);
                return;
            default:
                this.d.a(str, b.a.ERR_LOGOUT == aVar && com.netease.mpay.e.a.a.b(this.a.f) && com.netease.mpay.server.response.u.a(this.d.a, this.d.c).a(this.d.a, this.a.f), this.b);
                return;
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        AuthenticationCallback authenticationCallback;
        AuthenticationCallback authenticationCallback2;
        if (!mVar.d()) {
            new oy(this.d.a, this.d.c, mVar.i, mVar.c, this.d.d).a(mVar.e, mVar.f);
            authenticationCallback = this.d.i;
            authenticationCallback.onLoginSuccess(new User(str, mVar));
            return;
        }
        hi a = hi.a();
        Activity activity = this.d.a;
        a.C0035a c0035a = new a.C0035a(this.d.c, this.d.d, this.d.f);
        String str2 = this.a.c;
        com.netease.mpay.server.response.ai aiVar = mVar.v;
        authenticationCallback2 = this.d.i;
        a.a(activity, (com.netease.mpay.b.m) new m.e(c0035a, str2, aiVar, authenticationCallback2), true, this.b);
    }
}
