package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class u extends k {
    public boolean a;

    public u(Intent intent) {
        super(intent);
        this.a = a(intent, ak.POP_WELCOME);
    }

    public u(a.C0035a c0035a, boolean z) {
        super(c0035a, null);
        this.a = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.POP_WELCOME, this.a);
    }
}
