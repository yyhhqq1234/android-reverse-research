package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class i extends k {
    public boolean a;
    public boolean b;
    public boolean c;

    public i(Intent intent) {
        super(intent);
        this.a = a(intent, ak.IS_DIRECT_LOGIN);
        this.b = a(intent, ak.IS_SCAN_CODE_OTHER_LOGIN);
        this.c = a(intent, ak.IS_SWITCH_ACCOUNT);
    }

    public i(a.C0035a c0035a, boolean z, boolean z2, boolean z3, AuthenticationCallback authenticationCallback) {
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
        a(bundle, ak.IS_DIRECT_LOGIN, this.a);
        a(bundle, ak.IS_SCAN_CODE_OTHER_LOGIN, this.b);
        a(bundle, ak.IS_SWITCH_ACCOUNT, this.c);
    }
}
