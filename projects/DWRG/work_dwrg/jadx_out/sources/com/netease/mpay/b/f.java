package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class f extends s {
    public String a;

    public f(Intent intent) {
        super(intent);
        this.a = a.b(intent, ak.PAY_URL);
    }

    public f(o oVar, String str) {
        super(oVar);
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public f(s sVar, String str) {
        super(sVar, sVar.g);
        this.a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.s, com.netease.mpay.b.r, com.netease.mpay.b.t, com.netease.mpay.b.o, com.netease.mpay.b.p, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.PAY_URL, this.a);
    }
}
