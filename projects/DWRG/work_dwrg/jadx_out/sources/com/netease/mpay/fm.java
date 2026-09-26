package com.netease.mpay;

import android.os.Handler;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fm implements AuthenticationCallback {
    final /* synthetic */ Handler a;
    final /* synthetic */ AuthenticationCallback b;
    final /* synthetic */ MpayApi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fm(MpayApi mpayApi, Handler handler, AuthenticationCallback authenticationCallback) {
        this.c = mpayApi;
        this.a = handler;
        this.b = authenticationCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onDialogFinish() {
        this.a.post(new fq(this));
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onEnterGame(String str, String str2) {
        this.a.post(new fr(this, str, str2));
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onGuestBindSuccess(User user) {
        this.a.post(new fo(this, user));
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onLoginSuccess(User user) {
        this.a.post(new fn(this, user));
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onLogout(String str) {
        this.a.post(new fp(this, str));
    }
}
