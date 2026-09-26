package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.bu;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class e extends a {
    public String a;
    public String b;
    public int c;
    public bu.b d;

    public e(Intent intent) {
        super(intent);
        this.a = b(intent, ak.UID);
        this.b = b(intent, ak.USERNAME);
        this.c = c(intent, ak.LOGIN_TYPE);
        long d = d(intent, ak.ENTER_GAME_LOGIN_CALLBACK);
        if (d != -1) {
            this.d = (bu.b) hi.a().h.b(d);
        }
    }

    public e(a.C0035a c0035a, String str, String str2, int i, bu.b bVar) {
        super(c0035a);
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.UID, this.a);
        a(bundle, ak.USERNAME, this.b);
        a(bundle, ak.LOGIN_TYPE, this.c);
        if (this.d != null) {
            a(bundle, ak.ENTER_GAME_LOGIN_CALLBACK, hi.a().h.a(this.d));
        }
    }
}
