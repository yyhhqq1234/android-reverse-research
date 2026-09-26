package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.au;

/* loaded from: classes.dex */
class fu implements au.a {
    final /* synthetic */ MpayApi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fu(MpayApi mpayApi) {
        this.a = mpayApi;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.au.a
    public void a(b.a aVar, String str) {
        BackgroundAuthenticationCallback backgroundAuthenticationCallback;
        backgroundAuthenticationCallback = this.a.j;
        backgroundAuthenticationCallback.onLoginFail(str);
    }

    @Override // com.netease.mpay.f.au.a
    public void a(String str, com.netease.mpay.server.response.m mVar) {
        BackgroundAuthenticationCallback backgroundAuthenticationCallback;
        backgroundAuthenticationCallback = this.a.j;
        backgroundAuthenticationCallback.onLoginSuccess(new UserExt(str, mVar));
    }
}
