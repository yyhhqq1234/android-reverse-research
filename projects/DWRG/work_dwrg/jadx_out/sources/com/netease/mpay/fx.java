package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
class fx implements au.a {
    final /* synthetic */ fw a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fx(fw fwVar) {
        this.a = fwVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        new com.netease.mpay.widget.s(this.a.b.a).a(str, this.a.b.a.getString(RIdentifier.h.cn));
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        AuthenticationCallback authenticationCallback;
        new oy(this.a.b.a, this.a.b.c, mVar.i, mVar.c, this.a.b.d).a(mVar.e, mVar.f);
        authenticationCallback = this.a.b.i;
        authenticationCallback.onLoginSuccess(new User(str, mVar));
    }
}
