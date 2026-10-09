package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class k3 implements vd, vd.a {
    public final vd a;
    private vd.a b;
    private a[] c = new a[0];
    private long d;
    long f;
    long g;

    public k3(vd vdVar, boolean z, long j, long j2) {
        this.a = vdVar;
        this.d = z ? j : -9223372036854775807L;
        this.f = j;
        this.g = j2;
    }

    @Override // com.applovin.impl.vd
    public void f() {
        this.a.f();
    }

    @Override // com.applovin.impl.vd
    public void a(long j, boolean z) {
        this.a.a(j, z);
    }

    @Override // com.applovin.impl.vd
    public long h() {
        if (c()) {
            long j = this.d;
            this.d = -9223372036854775807L;
            long jH = h();
            return jH != -9223372036854775807L ? jH : j;
        }
        long jH2 = this.a.h();
        if (jH2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z = true;
        b1.b(jH2 >= this.f);
        long j2 = this.g;
        if (j2 != Long.MIN_VALUE && jH2 > j2) {
            z = false;
        }
        b1.b(z);
        return jH2;
    }

    @Override // com.applovin.impl.vd
    public long e() {
        long jE = this.a.e();
        if (jE != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || jE < j) {
                return jE;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.applovin.impl.vd
    public long g() {
        long jG = this.a.g();
        if (jG != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || jG < j) {
                return jG;
            }
        }
        return Long.MIN_VALUE;
    }

    boolean c() {
        return this.d != -9223372036854775807L;
    }

    private jj b(long j, jj jjVar) {
        long jB = xp.b(jjVar.a, 0L, j - this.f);
        long j2 = jjVar.b;
        long j3 = this.g;
        long jB2 = xp.b(j2, 0L, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (jB == jjVar.a && jB2 == jjVar.b) ? jjVar : new jj(jB, jB2);
    }

    private final class a implements cj {
        public final cj a;
        private boolean b;

        public a(cj cjVar) {
            this.a = cjVar;
        }

        public void b() {
            this.b = false;
        }

        @Override // com.applovin.impl.cj
        public boolean d() {
            return !k3.this.c() && this.a.d();
        }

        @Override // com.applovin.impl.cj
        public void a() {
            this.a.a();
        }

        @Override // com.applovin.impl.cj
        public int a(f9 f9Var, o5 o5Var, int i) {
            if (k3.this.c()) {
                return -3;
            }
            if (this.b) {
                o5Var.e(4);
                return -4;
            }
            int iA = this.a.a(f9Var, o5Var, i);
            if (iA == -5) {
                e9 e9Var = (e9) b1.a(f9Var.b);
                int i2 = e9Var.C;
                if (i2 != 0 || e9Var.D != 0) {
                    k3 k3Var = k3.this;
                    if (k3Var.f != 0) {
                        i2 = 0;
                    }
                    f9Var.b = e9Var.a().e(i2).f(k3Var.g == Long.MIN_VALUE ? e9Var.D : 0).a();
                }
                return -5;
            }
            k3 k3Var2 = k3.this;
            long j = k3Var2.g;
            if (j == Long.MIN_VALUE || ((iA != -4 || o5Var.f < j) && !(iA == -3 && k3Var2.e() == Long.MIN_VALUE && !o5Var.d))) {
                return iA;
            }
            o5Var.b();
            o5Var.e(4);
            this.b = true;
            return -4;
        }

        @Override // com.applovin.impl.cj
        public int a(long j) {
            if (k3.this.c()) {
                return -3;
            }
            return this.a.a(j);
        }
    }

    @Override // com.applovin.impl.vd
    public long a(long j, jj jjVar) {
        long j2 = this.f;
        if (j == j2) {
            return j2;
        }
        return this.a.a(j, b(j, jjVar));
    }

    @Override // com.applovin.impl.vd
    public void c(long j) {
        this.a.c(j);
    }

    @Override // com.applovin.impl.vd
    public boolean b(long j) {
        return this.a.b(j);
    }

    @Override // com.applovin.impl.vd
    public boolean a() {
        return this.a.a();
    }

    @Override // com.applovin.impl.vd
    public po b() {
        return this.a.b();
    }

    @Override // com.applovin.impl.pj.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(vd vdVar) {
        ((vd.a) b1.a(this.b)).a((pj) this);
    }

    @Override // com.applovin.impl.vd.a
    public void a(vd vdVar) {
        ((vd.a) b1.a(this.b)).a((vd) this);
    }

    @Override // com.applovin.impl.vd
    public void a(vd.a aVar, long j) {
        this.b = aVar;
        this.a.a(this, j);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // com.applovin.impl.vd
    public long a(long j) {
        this.d = -9223372036854775807L;
        boolean z = false;
        for (a aVar : this.c) {
            if (aVar != null) {
                aVar.b();
            }
        }
        long jA = this.a.a(j);
        if (jA == j) {
            z = true;
        } else if (jA >= this.f) {
            long j2 = this.g;
            if (j2 == Long.MIN_VALUE || jA <= j2) {
                z = true;
            }
        }
        b1.b(z);
        return jA;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override // com.applovin.impl.vd
    public long a(g8[] g8VarArr, boolean[] zArr, cj[] cjVarArr, boolean[] zArr2, long j) {
        long j2;
        boolean z;
        this.c = new a[cjVarArr.length];
        cj[] cjVarArr2 = new cj[cjVarArr.length];
        int i = 0;
        while (true) {
            cj cjVar = null;
            if (i >= cjVarArr.length) {
                break;
            }
            a[] aVarArr = this.c;
            a aVar = (a) cjVarArr[i];
            aVarArr[i] = aVar;
            if (aVar != null) {
                cjVar = aVar.a;
            }
            cjVarArr2[i] = cjVar;
            i++;
        }
        long jA = this.a.a(g8VarArr, zArr, cjVarArr2, zArr2, j);
        if (c()) {
            long j3 = this.f;
            if (j == j3 && a(j3, g8VarArr)) {
                j2 = jA;
            } else {
                j2 = -9223372036854775807L;
            }
        } else {
            j2 = -9223372036854775807L;
        }
        this.d = j2;
        if (jA != j) {
            if (jA >= this.f) {
                long j4 = this.g;
                z = j4 == Long.MIN_VALUE || jA <= j4;
            }
        }
        b1.b(z);
        for (int i2 = 0; i2 < cjVarArr.length; i2++) {
            cj cjVar2 = cjVarArr2[i2];
            if (cjVar2 == null) {
                this.c[i2] = null;
            } else {
                a[] aVarArr2 = this.c;
                a aVar2 = aVarArr2[i2];
                if (aVar2 == null || aVar2.a != cjVar2) {
                    aVarArr2[i2] = new a(cjVar2);
                }
            }
            cjVarArr[i2] = this.c[i2];
        }
        return jA;
    }

    private static boolean a(long j, g8[] g8VarArr) {
        if (j != 0) {
            for (g8 g8Var : g8VarArr) {
                if (g8Var != null) {
                    e9 e9VarG = g8Var.g();
                    if (!hf.a(e9VarG.m, e9VarG.j)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void a(long j, long j2) {
        this.f = j;
        this.g = j2;
    }
}
