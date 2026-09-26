package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class h extends k {
    public boolean a;
    public boolean b;
    public boolean c;

    public h(Intent intent) {
        super(intent);
        this.a = a(intent, ak.IS_BIND);
        this.b = a(intent, ak.TRY_TOKEN_IF_FAILED);
        this.c = a(intent, ak.SELECT_NEW_ACCOUNT);
    }

    public h(a.C0035a c0035a, boolean z, boolean z2, boolean z3, AuthenticationCallback authenticationCallback) {
        super(c0035a, authenticationCallback);
        this.a = z;
        this.b = z2;
        this.c = z3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.IS_BIND, this.a);
        a(bundle, ak.TRY_TOKEN_IF_FAILED, this.b);
        a(bundle, ak.SELECT_NEW_ACCOUNT, this.c);
    }
}
