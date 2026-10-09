package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
abstract class gl {
    private qo b;
    private l8 c;
    private jg d;
    private long e;
    private long f;
    private long g;
    private int h;
    private int i;
    private long k;
    private boolean l;
    private boolean m;
    private final hg a = new hg();
    private b j = new b();

    static class b {
        e9 a;
        jg b;

        b() {
        }
    }

    protected abstract long a(ah ahVar);

    protected abstract boolean a(ah ahVar, long j, b bVar);

    private static final class c implements jg {
        private c() {
        }

        @Override // com.applovin.impl.jg
        public long a(k8 k8Var) {
            return -1L;
        }

        @Override // com.applovin.impl.jg
        public void a(long j) {
        }

        @Override // com.applovin.impl.jg
        public ij a() {
            return new ij.b(-9223372036854775807L);
        }
    }

    private void a() {
        b1.b(this.b);
        xp.a(this.c);
    }

    protected long b(long j) {
        return (((long) this.i) * j) / 1000000;
    }

    protected void c(long j) {
        this.g = j;
    }

    protected long a(long j) {
        return (j * 1000000) / ((long) this.i);
    }

    private int b(k8 k8Var) {
        if (!a(k8Var)) {
            return -1;
        }
        e9 e9Var = this.j.a;
        this.i = e9Var.A;
        if (!this.m) {
            this.b.a(e9Var);
            this.m = true;
        }
        jg jgVar = this.j.b;
        if (jgVar != null) {
            this.d = jgVar;
        } else if (k8Var.a() == -1) {
            this.d = new c();
        } else {
            ig igVarA = this.a.a();
            this.d = new i6(this, this.f, k8Var.a(), igVarA.h + igVarA.i, igVarA.c, (igVarA.b & 4) != 0);
        }
        this.h = 2;
        this.a.d();
        return 0;
    }

    void a(l8 l8Var, qo qoVar) {
        this.c = l8Var;
        this.b = qoVar;
        a(true);
    }

    final int a(k8 k8Var, th thVar) {
        a();
        int i = this.h;
        if (i == 0) {
            return b(k8Var);
        }
        if (i == 1) {
            k8Var.a((int) this.f);
            this.h = 2;
            return 0;
        }
        if (i == 2) {
            xp.a(this.d);
            return b(k8Var, thVar);
        }
        if (i == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    private int b(k8 k8Var, th thVar) {
        long jA = this.d.a(k8Var);
        if (jA >= 0) {
            thVar.a = jA;
            return 1;
        }
        if (jA < -1) {
            c(-(jA + 2));
        }
        if (!this.l) {
            this.c.a((ij) b1.b(this.d.a()));
            this.l = true;
        }
        if (this.k <= 0 && !this.a.a(k8Var)) {
            this.h = 3;
            return -1;
        }
        this.k = 0L;
        ah ahVarB = this.a.b();
        long jA2 = a(ahVarB);
        if (jA2 >= 0) {
            long j = this.g;
            if (j + jA2 >= this.e) {
                long jA3 = a(j);
                this.b.a(ahVarB, ahVarB.e());
                this.b.a(jA3, 1, ahVarB.e(), 0, null);
                this.e = -1L;
            }
        }
        this.g += jA2;
        return 0;
    }

    private boolean a(k8 k8Var) {
        while (this.a.a(k8Var)) {
            this.k = k8Var.f() - this.f;
            if (!a(this.a.b(), this.f, this.j)) {
                return true;
            }
            this.f = k8Var.f();
        }
        this.h = 3;
        return false;
    }

    protected void a(boolean z) {
        if (z) {
            this.j = new b();
            this.f = 0L;
            this.h = 0;
        } else {
            this.h = 1;
        }
        this.e = -1L;
        this.g = 0L;
    }

    final void a(long j, long j2) {
        this.a.c();
        if (j == 0) {
            a(!this.l);
        } else if (this.h != 0) {
            this.e = b(j2);
            ((jg) xp.a(this.d)).a(this.e);
            this.h = 2;
        }
    }
}
