package org.json.mediationsdk;

import org.json.l5;
import org.json.r6;

/* JADX INFO: loaded from: classes3.dex */
public class k {
    private String a;
    private String b;
    private r6 c;

    k(String str, String str2, r6 r6Var) {
        this.a = str;
        this.b = str2;
        this.c = r6Var;
    }

    public String a() {
        return this.a;
    }

    public l5 b() {
        return this.c.d();
    }

    public r6 c() {
        return this.c;
    }

    public int d() {
        return this.c.g();
    }

    public long e() {
        return this.c.b();
    }

    public int f() {
        return this.c.i();
    }

    public boolean g() {
        return this.c.e();
    }

    public long h() {
        return this.c.f();
    }

    public long i() {
        return this.c.d().k();
    }

    public String j() {
        return this.b;
    }

    public boolean k() {
        return this.c.d().g() > 0;
    }
}
