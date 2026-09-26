package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MobileBindCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class aa extends a {
    public MobileBindCallback a;

    public aa(Intent intent) {
        super(intent);
        long d = d(intent, ak.SET_RELATED_MOBILE_CALLBACK);
        this.a = d != -1 ? (MobileBindCallback) hi.a().k.b(d) : null;
    }

    public aa(a.C0035a c0035a, MobileBindCallback mobileBindCallback) {
        super(c0035a);
        this.a = mobileBindCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        if (this.a != null) {
            a(bundle, ak.SET_RELATED_MOBILE_CALLBACK, hi.a().k.a(this.a));
        }
    }
}
