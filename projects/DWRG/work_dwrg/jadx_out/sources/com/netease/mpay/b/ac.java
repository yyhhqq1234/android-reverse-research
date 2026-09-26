package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class ac extends a {
    public String a;

    public ac(Intent intent) {
        super(intent);
        this.a = b(intent, ak.URL);
    }

    public ac(String str) {
        super(new a.C0035a(null, "login", new MpayConfig()));
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.URL, this.a);
    }
}
