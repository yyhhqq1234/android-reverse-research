package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class bp {
    private final int a;
    private boolean d;
    private boolean e;
    private boolean f;
    private final ho b = new ho(0);
    private long g = -9223372036854775807L;
    private long h = -9223372036854775807L;
    private long i = -9223372036854775807L;
    private final ah c = new ah();

    bp(int i) {
        this.a = i;
    }

    public boolean c() {
        return this.d;
    }

    public ho b() {
        return this.b;
    }

    private int a(k8 k8Var) {
        this.c.a(xp.f);
        this.d = true;
        k8Var.b();
        return 0;
    }

    private int c(k8 k8Var, th thVar, int i) {
        long jA = k8Var.a();
        int iMin = (int) Math.min(this.a, jA);
        long j = jA - ((long) iMin);
        if (k8Var.f() != j) {
            thVar.a = j;
            return 1;
        }
        this.c.d(iMin);
        k8Var.b();
        k8Var.c(this.c.c(), 0, iMin);
        this.h = b(this.c, i);
        this.f = true;
        return 0;
    }

    public long a() {
        return this.i;
    }

    private int b(k8 k8Var, th thVar, int i) {
        int iMin = (int) Math.min(this.a, k8Var.a());
        long j = 0;
        if (k8Var.f() != j) {
            thVar.a = j;
            return 1;
        }
        this.c.d(iMin);
        k8Var.b();
        k8Var.c(this.c.c(), 0, iMin);
        this.g = a(this.c, i);
        this.e = true;
        return 0;
    }

    public int a(k8 k8Var, th thVar, int i) {
        if (i <= 0) {
            return a(k8Var);
        }
        if (!this.f) {
            return c(k8Var, thVar, i);
        }
        if (this.h == -9223372036854775807L) {
            return a(k8Var);
        }
        if (!this.e) {
            return b(k8Var, thVar, i);
        }
        long j = this.g;
        if (j == -9223372036854775807L) {
            return a(k8Var);
        }
        long jB = this.b.b(this.h) - this.b.b(j);
        this.i = jB;
        if (jB < 0) {
            oc.d("TsDurationReader", "Invalid duration: " + this.i + ". Using TIME_UNSET instead.");
            this.i = -9223372036854775807L;
        }
        return a(k8Var);
    }

    private long b(ah ahVar, int i) {
        int iD = ahVar.d();
        int iE = ahVar.e();
        for (int i2 = iE - 188; i2 >= iD; i2--) {
            if (ep.a(ahVar.c(), iD, iE, i2)) {
                long jA = ep.a(ahVar, i2, i);
                if (jA != -9223372036854775807L) {
                    return jA;
                }
            }
        }
        return -9223372036854775807L;
    }

    private long a(ah ahVar, int i) {
        int iE = ahVar.e();
        for (int iD = ahVar.d(); iD < iE; iD++) {
            if (ahVar.c()[iD] == 71) {
                long jA = ep.a(ahVar, iD, i);
                if (jA != -9223372036854775807L) {
                    return jA;
                }
            }
        }
        return -9223372036854775807L;
    }
}
