package org.json;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class r6 {
    private static final int q = 0;
    private e4 a;
    private int b;
    private long c;
    private boolean d;
    private ArrayList<e7> e;
    private e7 f;
    private int g;
    private int h;
    private l5 i;
    private boolean j;
    private boolean k;
    private long l;
    private boolean m;
    private boolean n;
    private boolean o;
    private long p;

    public r6() {
        this.a = new e4();
        this.e = new ArrayList<>();
    }

    public r6(int i, long j, boolean z, e4 e4Var, int i2, l5 l5Var, int i3, boolean z2, boolean z3, long j2, boolean z4, boolean z5, boolean z6, long j3) {
        this.e = new ArrayList<>();
        this.b = i;
        this.c = j;
        this.d = z;
        this.a = e4Var;
        this.g = i2;
        this.h = i3;
        this.i = l5Var;
        this.j = z2;
        this.k = z3;
        this.l = j2;
        this.m = z4;
        this.n = z5;
        this.o = z6;
        this.p = j3;
    }

    public int a() {
        return this.b;
    }

    public e7 a(String str) {
        for (e7 e7Var : this.e) {
            if (e7Var.getPlacementName().equals(str)) {
                return e7Var;
            }
        }
        return null;
    }

    public void a(e7 e7Var) {
        if (e7Var != null) {
            this.e.add(e7Var);
            if (this.f == null || e7Var.isPlacementId(0)) {
                this.f = e7Var;
            }
        }
    }

    public long b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public l5 d() {
        return this.i;
    }

    public boolean e() {
        return this.k;
    }

    public long f() {
        return this.l;
    }

    public int g() {
        return this.h;
    }

    public e4 h() {
        return this.a;
    }

    public int i() {
        return this.g;
    }

    public e7 j() {
        for (e7 e7Var : this.e) {
            if (e7Var.getIsDefault()) {
                return e7Var;
            }
        }
        return this.f;
    }

    public long k() {
        return this.p;
    }

    public boolean l() {
        return this.j;
    }

    public boolean m() {
        return this.m;
    }

    public boolean n() {
        return this.o;
    }

    public boolean o() {
        return this.n;
    }

    public String toString() {
        return "BannerConfigurations{parallelLoad=" + this.b + ", bidderExclusive=" + this.d + '}';
    }
}
