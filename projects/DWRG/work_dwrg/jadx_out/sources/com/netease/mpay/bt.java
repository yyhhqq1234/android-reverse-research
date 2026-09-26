package com.netease.mpay;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bu;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bt implements bu.b {
    final /* synthetic */ com.netease.mpay.server.response.i a;
    final /* synthetic */ bm b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(bm bmVar, com.netease.mpay.server.response.i iVar) {
        this.b = bmVar;
        this.a = iVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.bu.b
    public void a() {
        AuthenticationCallback authenticationCallback;
        Activity activity;
        String str;
        String str2;
        AuthenticationCallback authenticationCallback2;
        AuthenticationCallback authenticationCallback3;
        AuthenticationCallback authenticationCallback4;
        authenticationCallback = this.b.h;
        if (authenticationCallback == null) {
            return;
        }
        activity = this.b.a;
        str = this.b.b;
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(activity, str);
        com.netease.mpay.e.b.f a = bVar.d().a();
        com.netease.mpay.e.c.k c = bVar.c();
        str2 = this.b.c;
        com.netease.mpay.e.b.o b = c.b(str2);
        if (a == null || b == null || TextUtils.isEmpty(a.j) || TextUtils.isEmpty(b.d)) {
            authenticationCallback2 = this.b.h;
            authenticationCallback2.onDialogFinish();
            return;
        }
        authenticationCallback3 = this.b.h;
        authenticationCallback3.onLoginSuccess(new User(a.j, b));
        if (b.c.equals(this.a.d.a) && b.f == this.a.d.b) {
            authenticationCallback4 = this.b.h;
            authenticationCallback4.onEnterGame(this.a.a, this.a.b);
        }
    }

    @Override // com.netease.mpay.bu.b
    public void b() {
        AuthenticationCallback authenticationCallback;
        AuthenticationCallback authenticationCallback2;
        authenticationCallback = this.b.h;
        if (authenticationCallback != null) {
            authenticationCallback2 = this.b.h;
            authenticationCallback2.onDialogFinish();
        }
    }
}
