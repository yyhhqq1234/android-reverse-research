package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class ae extends k {
    public String a;

    public ae(Intent intent) {
        super(intent);
        this.a = b(intent, ak.PREFER_ACCOUNT);
    }

    public ae(a.C0035a c0035a, String str, AuthenticationCallback authenticationCallback) {
        super(c0035a, authenticationCallback);
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.PREFER_ACCOUNT, this.a);
    }
}
