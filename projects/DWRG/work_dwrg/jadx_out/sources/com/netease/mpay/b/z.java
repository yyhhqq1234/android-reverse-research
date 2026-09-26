package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.SetRealnameCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class z extends a {
    public SetRealnameCallback a;

    public z(Intent intent) {
        super(intent);
        long d = d(intent, ak.SET_REALNAME_CALLBACK);
        this.a = d != -1 ? (SetRealnameCallback) hi.a().j.b(d) : null;
    }

    public z(a.C0035a c0035a, SetRealnameCallback setRealnameCallback) {
        super(c0035a);
        this.a = setRealnameCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        if (this.a != null) {
            a(bundle, ak.SET_REALNAME_CALLBACK, hi.a().j.a(this.a));
        }
    }
}
