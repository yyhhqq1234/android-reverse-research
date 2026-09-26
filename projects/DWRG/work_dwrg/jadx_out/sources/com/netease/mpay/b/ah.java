package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.f.an;
import com.netease.mpay.hi;
import com.netease.mpay.server.e;

/* loaded from: classes.dex */
public class ah extends a {
    public an.a a;
    public String b;
    public String c;
    public e.a d;
    public String e;
    public String f;

    public ah(Intent intent) {
        super(intent);
        this.a = an.a.a(c(intent, ak.WEB_LINK_TARGET));
        this.b = b(intent, ak.URL);
        this.c = b(intent, ak.WEB_LINK_OUTGOING);
        this.e = b(intent, ak.WEB_LOGIN_URL);
        this.f = b(intent, ak.UID);
        long d = d(intent, ak.WEB_VERIFY_CALLBACK);
        if (d > 0) {
            this.d = (e.a) hi.a().d.a(d);
        }
    }

    public ah(a.C0035a c0035a, an.a aVar) {
        super(c0035a);
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public ah a(e.a aVar) {
        this.d = aVar;
        return this;
    }

    public ah a(String str) {
        this.b = str;
        return this;
    }

    public ah a(String str, String str2) {
        this.e = str;
        this.f = str2;
        return this;
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        if (this.a != null) {
            a(bundle, ak.WEB_LINK_TARGET, this.a.ordinal());
        }
        a(bundle, ak.URL, this.b);
        a(bundle, ak.WEB_LINK_OUTGOING, this.c);
        a(bundle, ak.WEB_LOGIN_URL, this.e);
        a(bundle, ak.UID, this.f);
        if (this.d != null) {
            a(bundle, ak.WEB_VERIFY_CALLBACK, hi.a().d.a(this.d));
        }
    }

    public ah b(String str) {
        this.c = str;
        return this;
    }
}
