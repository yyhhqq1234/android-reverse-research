package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.User;

/* loaded from: classes.dex */
class ab implements AuthenticationCallback {
    final /* synthetic */ aa a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(aa aaVar) {
        this.a = aaVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onDialogFinish() {
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onEnterGame(String str, String str2) {
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onGuestBindSuccess(User user) {
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onLoginSuccess(User user) {
        this.a.a.t();
    }

    @Override // com.netease.mpay.AuthenticationCallback
    public void onLogout(String str) {
    }
}
