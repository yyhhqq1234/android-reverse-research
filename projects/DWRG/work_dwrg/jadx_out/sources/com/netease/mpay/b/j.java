package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.b;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class j extends a {
    public boolean a;
    public b.a b;
    private a c;

    public j(Intent intent) {
        super(intent);
        this.a = a(intent, ak.FROM_API);
        try {
            this.b = b.a.values()[c(intent, ak.REAL_ACTIVITY_CLASS)];
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            this.b = b.a.LoginActivity;
        }
    }

    public j(a.C0035a c0035a, boolean z, b.a aVar, a aVar2) {
        super(c0035a);
        this.a = z;
        this.b = aVar;
        this.c = aVar2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.FROM_API, this.a);
        a(bundle, ak.REAL_ACTIVITY_CLASS, this.b.ordinal());
    }

    @Override // com.netease.mpay.b.a
    public Bundle e() {
        Bundle e = this.c.e();
        a(e);
        return e;
    }
}
