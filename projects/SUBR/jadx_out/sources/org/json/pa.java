package org.json;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class pa {
    private static pa h;
    private String a;
    private String b;
    private String c;
    private String d;
    private int e;
    private String f;
    private final oe g;

    private pa(Context context) {
        oe oeVarF = jl.P().f();
        this.g = oeVarF;
        this.a = oeVarF.g();
        this.b = oeVarF.e();
        this.c = oeVarF.l();
        this.d = oeVarF.o();
        this.e = oeVarF.k();
        this.f = oeVarF.j(context);
    }

    public static pa b(Context context) {
        if (h == null) {
            h = new pa(context);
        }
        return h;
    }

    public static void g() {
        h = null;
    }

    public float a(Context context) {
        return this.g.m(context);
    }

    public int a() {
        return this.e;
    }

    public String b() {
        return this.f;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.a;
    }

    public String e() {
        return this.c;
    }

    public String f() {
        return this.d;
    }
}
