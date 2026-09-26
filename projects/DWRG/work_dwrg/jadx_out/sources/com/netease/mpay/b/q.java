package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.hi;
import com.netease.mpay.ja;

/* loaded from: classes.dex */
public class q extends a {
    public ja.a a;
    public ja.b b;

    public q(Intent intent) {
        super(intent);
        ja.b bVar;
        this.a = (ja.a) e(intent, ak.PERMISSION_REQUEST);
        long d = d(intent, ak.PERMISSION_CALLBACK_ID);
        if (d != -1) {
            hi.a();
            bVar = (ja.b) hi.i.b(d);
        } else {
            bVar = null;
        }
        this.b = bVar;
    }

    public q(a.C0035a c0035a, ja.a aVar, ja.b bVar) {
        super(c0035a);
        this.a = aVar;
        this.b = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.PERMISSION_REQUEST, this.a);
        ak akVar = ak.PERMISSION_CALLBACK_ID;
        hi.a();
        a(bundle, akVar, hi.i.a(this.b));
    }
}
