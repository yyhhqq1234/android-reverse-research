package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class xb implements j8 {
    private l8 b;
    private int c;
    private int d;
    private int e;
    private mf g;
    private k8 h;
    private dl i;
    private of j;
    private final ah a = new ah(6);
    private long f = -1;

    private int c(k8 k8Var) {
        this.a.d(2);
        k8Var.c(this.a.c(), 0, 2);
        return this.a.C();
    }

    private void b(k8 k8Var) {
        this.a.d(2);
        k8Var.c(this.a.c(), 0, 2);
        k8Var.c(this.a.C() - 2);
    }

    private void d(k8 k8Var) {
        this.a.d(2);
        k8Var.d(this.a.c(), 0, 2);
        int iC = this.a.C();
        this.d = iC;
        if (iC == 65498) {
            if (this.f != -1) {
                this.c = 4;
                return;
            } else {
                b();
                return;
            }
        }
        if ((iC < 65488 || iC > 65497) && iC != 65281) {
            this.c = 1;
        }
    }

    private void f(k8 k8Var) {
        this.a.d(2);
        k8Var.d(this.a.c(), 0, 2);
        this.e = this.a.C() - 2;
        this.c = 2;
    }

    private void e(k8 k8Var) {
        String strT;
        if (this.d == 65505) {
            ah ahVar = new ah(this.e);
            k8Var.d(ahVar.c(), 0, this.e);
            if (this.g == null && "http://ns.adobe.com/xap/1.0/".equals(ahVar.t()) && (strT = ahVar.t()) != null) {
                mf mfVarA = a(strT, k8Var.a());
                this.g = mfVarA;
                if (mfVarA != null) {
                    this.f = mfVarA.d;
                }
            }
        } else {
            k8Var.a(this.e);
        }
        this.c = 0;
    }

    private void g(k8 k8Var) {
        if (!k8Var.b(this.a.c(), 0, 1, true)) {
            b();
            return;
        }
        k8Var.b();
        if (this.j == null) {
            this.j = new of();
        }
        dl dlVar = new dl(k8Var, this.f);
        this.i = dlVar;
        if (this.j.a(dlVar)) {
            this.j.a(new el(this.f, (l8) b1.a(this.b)));
            c();
        } else {
            b();
        }
    }

    private static mf a(String str, long j) {
        lf lfVarA;
        if (j == -1 || (lfVarA = hs.a(str)) == null) {
            return null;
        }
        return lfVarA.a(j);
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.b = l8Var;
    }

    private void c() {
        a((af.b) b1.a(this.g));
        this.c = 5;
    }

    private void b() {
        a(new af.b[0]);
        ((l8) b1.a(this.b)).c();
        this.b.a(new ij.b(-9223372036854775807L));
        this.c = 6;
    }

    private void a(af.b... bVarArr) {
        ((l8) b1.a(this.b)).a(1024, 4).a(new e9.b().b("image/jpeg").a(new af(bVarArr)).a());
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) {
        int i = this.c;
        if (i == 0) {
            d(k8Var);
            return 0;
        }
        if (i == 1) {
            f(k8Var);
            return 0;
        }
        if (i == 2) {
            e(k8Var);
            return 0;
        }
        if (i == 4) {
            long jF = k8Var.f();
            long j = this.f;
            if (jF != j) {
                thVar.a = j;
                return 1;
            }
            g(k8Var);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.i == null || k8Var != this.h) {
            this.h = k8Var;
            this.i = new dl(k8Var, this.f);
        }
        int iA = ((of) b1.a(this.j)).a(this.i, thVar);
        if (iA == 1) {
            thVar.a += this.f;
        }
        return iA;
    }

    @Override // com.applovin.impl.j8
    public void a() {
        of ofVar = this.j;
        if (ofVar != null) {
            ofVar.a();
        }
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        if (j == 0) {
            this.c = 0;
            this.j = null;
        } else if (this.c == 5) {
            ((of) b1.a(this.j)).a(j, j2);
        }
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        if (c(k8Var) != 65496) {
            return false;
        }
        int iC = c(k8Var);
        this.d = iC;
        if (iC == 65504) {
            b(k8Var);
            this.d = c(k8Var);
        }
        if (this.d != 65505) {
            return false;
        }
        k8Var.c(2);
        this.a.d(6);
        k8Var.c(this.a.c(), 0, 6);
        return this.a.y() == 1165519206 && this.a.C() == 0;
    }
}
