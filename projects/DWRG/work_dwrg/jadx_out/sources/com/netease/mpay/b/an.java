package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class an extends al {
    public String b;
    public boolean c;

    /* JADX INFO: Access modifiers changed from: protected */
    public an(Intent intent) {
        this(a.b(intent, ak.RESULT_REASON), a.a(intent, ak.RESULT_RE_LOGIN));
    }

    public an(String str, boolean z) {
        super(1004);
        this.b = str;
        this.c = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.al
    void a(Bundle bundle) {
        a.a(bundle, ak.RESULT_REASON, this.b);
        a.a(bundle, ak.RESULT_RE_LOGIN, this.c);
    }
}
