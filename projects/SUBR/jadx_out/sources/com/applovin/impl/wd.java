package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class wd {
    public final vd a;
    public final Object b;
    public final cj[] c;
    public boolean d;
    public boolean e;
    public yd f;
    public boolean g;
    private final boolean[] h;
    private final ri[] i;
    private final vo j;
    private final ee k;
    private wd l;
    private po m;
    private wo n;
    private long o;

    public wd(ri[] riVarArr, long j, vo voVar, n0 n0Var, ee eeVar, yd ydVar, wo woVar) {
        this.i = riVarArr;
        this.o = j;
        this.j = voVar;
        this.k = eeVar;
        ae.a aVar = ydVar.a;
        this.b = aVar.a;
        this.f = ydVar;
        this.m = po.d;
        this.n = woVar;
        this.c = new cj[riVarArr.length];
        this.h = new boolean[riVarArr.length];
        this.a = a(aVar, eeVar, n0Var, ydVar.b, ydVar.d);
    }

    public long f() {
        return this.o;
    }

    public long g() {
        return this.f.b + this.o;
    }

    public boolean j() {
        return this.d && (!this.e || this.a.e() == Long.MIN_VALUE);
    }

    public long c() {
        if (!this.d) {
            return this.f.b;
        }
        long jE = this.e ? this.a.e() : Long.MIN_VALUE;
        return jE == Long.MIN_VALUE ? this.f.e : jE;
    }

    public long e() {
        if (this.d) {
            return this.a.g();
        }
        return 0L;
    }

    public long a(wo woVar, long j, boolean z) {
        return a(woVar, j, z, new boolean[this.i.length]);
    }

    public long e(long j) {
        return j + f();
    }

    public void c(long j) {
        this.o = j;
    }

    public void l() {
        a();
        a(this.k, this.a);
    }

    public wd d() {
        return this.l;
    }

    public po h() {
        return this.m;
    }

    public wo i() {
        return this.n;
    }

    public void m() {
        vd vdVar = this.a;
        if (vdVar instanceof k3) {
            long j = this.f.d;
            if (j == -9223372036854775807L) {
                j = Long.MIN_VALUE;
            }
            ((k3) vdVar).a(0L, j);
        }
    }

    private void b(cj[] cjVarArr) {
        int i = 0;
        while (true) {
            ri[] riVarArr = this.i;
            if (i >= riVarArr.length) {
                return;
            }
            if (riVarArr[i].e() == -2) {
                cjVarArr[i] = null;
            }
            i++;
        }
    }

    private boolean k() {
        return this.l == null;
    }

    public long d(long j) {
        return j - f();
    }

    public long a(wo woVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= woVar.a) {
                break;
            }
            boolean[] zArr2 = this.h;
            if (z || !woVar.a(this.n, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        b(this.c);
        a();
        this.n = woVar;
        b();
        long jA = this.a.a(woVar.c, this.h, this.c, zArr, j);
        a(this.c);
        this.e = false;
        int i2 = 0;
        while (true) {
            cj[] cjVarArr = this.c;
            if (i2 >= cjVarArr.length) {
                return jA;
            }
            if (cjVarArr[i2] != null) {
                b1.b(woVar.a(i2));
                if (this.i[i2].e() != -2) {
                    this.e = true;
                }
            } else {
                b1.b(woVar.c[i2] == null);
            }
            i2++;
        }
    }

    private void b() {
        if (!k()) {
            return;
        }
        int i = 0;
        while (true) {
            wo woVar = this.n;
            if (i >= woVar.a) {
                return;
            }
            boolean zA = woVar.a(i);
            g8 g8Var = this.n.c[i];
            if (zA && g8Var != null) {
                g8Var.i();
            }
            i++;
        }
    }

    public void b(long j) {
        b1.b(k());
        if (this.d) {
            this.a.c(d(j));
        }
    }

    private void a(cj[] cjVarArr) {
        int i = 0;
        while (true) {
            ri[] riVarArr = this.i;
            if (i >= riVarArr.length) {
                return;
            }
            if (riVarArr[i].e() == -2 && this.n.a(i)) {
                cjVarArr[i] = new r7();
            }
            i++;
        }
    }

    public void a(long j) {
        b1.b(k());
        this.a.b(d(j));
    }

    public wo b(float f, fo foVar) {
        wo woVarA = this.j.a(this.i, h(), this.f.a, foVar);
        for (g8 g8Var : woVarA.c) {
            if (g8Var != null) {
                g8Var.a(f);
            }
        }
        return woVarA;
    }

    private static vd a(ae.a aVar, ee eeVar, n0 n0Var, long j, long j2) {
        vd vdVarA = eeVar.a(aVar, n0Var, j);
        return j2 != -9223372036854775807L ? new k3(vdVarA, true, 0L, j2) : vdVarA;
    }

    private void a() {
        if (!k()) {
            return;
        }
        int i = 0;
        while (true) {
            wo woVar = this.n;
            if (i >= woVar.a) {
                return;
            }
            boolean zA = woVar.a(i);
            g8 g8Var = this.n.c[i];
            if (zA && g8Var != null) {
                g8Var.f();
            }
            i++;
        }
    }

    public void a(float f, fo foVar) {
        this.d = true;
        this.m = this.a.b();
        wo woVarB = b(f, foVar);
        yd ydVar = this.f;
        long jMax = ydVar.b;
        long j = ydVar.e;
        if (j != -9223372036854775807L && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jA = a(woVarB, jMax, false);
        long j2 = this.o;
        yd ydVar2 = this.f;
        this.o = j2 + (ydVar2.b - jA);
        this.f = ydVar2.b(jA);
    }

    private static void a(ee eeVar, vd vdVar) {
        try {
            if (vdVar instanceof k3) {
                eeVar.a(((k3) vdVar).a);
            } else {
                eeVar.a(vdVar);
            }
        } catch (RuntimeException e) {
            oc.a("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public void a(wd wdVar) {
        if (wdVar == this.l) {
            return;
        }
        a();
        this.l = wdVar;
        b();
    }
}
