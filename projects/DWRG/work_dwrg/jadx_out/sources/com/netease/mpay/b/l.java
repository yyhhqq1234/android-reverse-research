package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.BackgroundAuthenticationCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class l extends a {
    public String a;
    public BackgroundAuthenticationCallback b;

    public l(Intent intent) {
        super(intent);
        this.a = b(intent, ak.LOGIN_LOAD_ACTION);
        long d = d(intent, ak.BACKGROUND_AUTH_CALLBACK_ID);
        this.b = d != -1 ? (BackgroundAuthenticationCallback) hi.a().c.b(d) : null;
    }

    public l(a.C0035a c0035a, String str, BackgroundAuthenticationCallback backgroundAuthenticationCallback) {
        super(c0035a);
        this.a = str;
        this.b = backgroundAuthenticationCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.LOGIN_LOAD_ACTION, this.a);
        if (this.b != null) {
            a(bundle, ak.BACKGROUND_AUTH_CALLBACK_ID, hi.a().c.a(this.b));
        }
    }
}
