package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.EnterGameActivity;
import com.netease.mpay.bm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hg implements bm.a {
    final /* synthetic */ MpayApi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hg(MpayApi mpayApi) {
        this.a = mpayApi;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.bm.a
    public void a(EnterGameActivity.a aVar) {
        AuthenticationCallback authenticationCallback;
        if (this.a.a == null || this.a.a.isFinishing()) {
            this.a.unregistEnterGame();
            return;
        }
        Activity activity = this.a.a;
        String str = this.a.c;
        String str2 = this.a.d;
        MpayConfig mpayConfig = this.a.f;
        String str3 = hi.a().m;
        String str4 = hi.a().n;
        boolean z = hi.a().l;
        authenticationCallback = this.a.i;
        new bm(activity, str, str2, mpayConfig, str3, str4, z, authenticationCallback).a(aVar);
    }
}
