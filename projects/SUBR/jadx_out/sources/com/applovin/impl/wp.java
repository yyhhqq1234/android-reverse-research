package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class wp {
    private final com.applovin.impl.sdk.j a;
    private String b;
    private final String c = a(uj.i, (String) vj.a(uj.h, (Object) null, com.applovin.impl.sdk.j.m()));
    private final String d;

    public wp(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.d = a(uj.j, (String) jVar.a(sj.g));
        a(d());
    }

    private String d() {
        if (!((Boolean) this.a.a(sj.J3)).booleanValue()) {
            this.a.c(uj.g);
        }
        String str = (String) this.a.a(uj.g);
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("AppLovinSdk", "Using identifier (" + str + ") from previous session");
        }
        return str;
    }

    public String c() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String a() {
        return this.d;
    }

    public static String a(com.applovin.impl.sdk.j jVar) {
        uj ujVar = uj.k;
        String str = (String) jVar.a(ujVar);
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strValueOf = String.valueOf(((int) (Math.random() * 100.0d)) + 1);
        jVar.b(ujVar, strValueOf);
        return strValueOf;
    }

    private String a(uj ujVar, String str) {
        String str2 = (String) vj.a(ujVar, (Object) null, com.applovin.impl.sdk.j.m());
        if (StringUtils.isValidString(str2)) {
            return str2;
        }
        if (!StringUtils.isValidString(str)) {
            str = UUID.randomUUID().toString().toLowerCase(Locale.US);
        }
        vj.b(ujVar, str, com.applovin.impl.sdk.j.m());
        return str;
    }

    public void a(String str) {
        if (((Boolean) this.a.a(sj.J3)).booleanValue()) {
            this.a.b(uj.g, str);
        }
        this.b = str;
        this.a.q().b(str, a());
    }
}
