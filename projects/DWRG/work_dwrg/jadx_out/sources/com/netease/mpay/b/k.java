package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class k extends a {
    public long d;
    public AuthenticationCallback e;

    public k(Intent intent) {
        super(intent);
        this.d = d(intent, ak.AUTH_CALLBACK_ID);
        this.e = this.d == -1 ? null : (AuthenticationCallback) hi.a().b.b(this.d);
    }

    public k(@NonNull a.C0035a c0035a, AuthenticationCallback authenticationCallback) {
        super(c0035a);
        this.d = authenticationCallback == null ? -1L : hi.a().b.a(authenticationCallback);
        this.e = authenticationCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        if (this.d != -1) {
            bundle.putLong(ak.AUTH_CALLBACK_ID.a(), this.d);
        }
    }
}
