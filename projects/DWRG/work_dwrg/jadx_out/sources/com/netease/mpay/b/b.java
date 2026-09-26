package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class b extends k {
    public int a;

    public b(Intent intent) {
        super(intent);
        this.a = c(intent, ak.FROM);
        if (this.a == -1) {
            this.a = 1;
        }
    }

    public b(a.C0035a c0035a, int i, AuthenticationCallback authenticationCallback) {
        super(c0035a, authenticationCallback);
        this.a = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.FROM, this.a);
    }
}
