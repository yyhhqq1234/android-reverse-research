package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.b.p;

/* loaded from: classes.dex */
public class t extends o {
    String h;

    public t(Intent intent) {
        super(intent);
        this.h = b(intent, ak.PREPAY_FROM);
    }

    public t(a.C0035a c0035a, p.a aVar, String str) {
        this(new o(new p(c0035a, aVar, null), null), str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public t(o oVar, String str) {
        super(oVar);
        this.h = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public t(t tVar) {
        super(tVar);
        this.h = tVar.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.o, com.netease.mpay.b.p, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.PREPAY_FROM, this.h);
    }

    public int s() {
        if ("manage".equals(this.h)) {
            return 2;
        }
        return "pay".equals(this.h) ? 1 : 3;
    }
}
