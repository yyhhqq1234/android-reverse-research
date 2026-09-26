package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
class gg implements au.a {
    final /* synthetic */ RefreshAuthenticatedUserCallback a;
    final /* synthetic */ MpayApi b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gg(MpayApi mpayApi, RefreshAuthenticatedUserCallback refreshAuthenticatedUserCallback) {
        this.b = mpayApi;
        this.a = refreshAuthenticatedUserCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        this.a.onFail(str);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        this.a.onSuccess(new User(str, mVar));
    }
}
