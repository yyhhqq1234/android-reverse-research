package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gh implements BackgroundAuthenticationCallback {
    final /* synthetic */ Handler a;
    final /* synthetic */ BackgroundAuthenticationCallback b;
    final /* synthetic */ MpayApi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gh(MpayApi mpayApi, Handler handler, BackgroundAuthenticationCallback backgroundAuthenticationCallback) {
        this.c = mpayApi;
        this.a = handler;
        this.b = backgroundAuthenticationCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.BackgroundAuthenticationCallback
    public void onLoginFail(String str) {
        this.a.post(new gj(this, str));
    }

    @Override // com.netease.mpay.BackgroundAuthenticationCallback
    public void onLoginSuccess(User user) {
        this.a.post(new gi(this, user));
        new com.netease.mpay.f.bn(this.c.a, this.c.c, this.c.d).h();
    }
}
