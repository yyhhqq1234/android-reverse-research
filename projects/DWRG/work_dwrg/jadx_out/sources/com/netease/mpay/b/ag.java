package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class ag extends a {
    public String a;

    public ag(Intent intent) {
        super(intent);
        this.a = b(intent, ak.MESSAGE_ID);
    }

    public ag(a.C0035a c0035a, String str) {
        super(c0035a);
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.MESSAGE_ID, this.a);
    }
}
