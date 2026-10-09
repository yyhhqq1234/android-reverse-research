package com.applovin.impl;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class u8 implements j8 {
    public static final n8 o = new n8() { // from class: com.applovin.impl.u8$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return u8.b();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private final byte[] a;
    private final ah b;
    private final boolean c;
    private final v8.a d;
    private l8 e;
    private qo f;
    private int g;
    private af h;
    private z8 i;
    private int j;
    private int k;
    private t8 l;
    private int m;
    private long n;

    @Override // com.applovin.impl.j8
    public void a() {
    }

    public u8() {
        this(0);
    }

    private void d(k8 k8Var) {
        this.h = w8.b(k8Var, !this.c);
        this.g = 1;
    }

    private void c(k8 k8Var) {
        byte[] bArr = this.a;
        k8Var.c(bArr, 0, bArr.length);
        k8Var.b();
        this.g = 2;
    }

    private void f(k8 k8Var) throws ch {
        w8.d(k8Var);
        this.g = 3;
    }

    private void e(k8 k8Var) {
        w8.a aVar = new w8.a(this.i);
        boolean zA = false;
        while (!zA) {
            zA = w8.a(k8Var, aVar);
            this.i = (z8) xp.a(aVar.a);
        }
        b1.a(this.i);
        this.j = Math.max(this.i.c, 6);
        ((qo) xp.a(this.f)).a(this.i.a(this.a, this.h));
        this.g = 4;
    }

    private void b(k8 k8Var) {
        this.k = w8.b(k8Var);
        ((l8) xp.a(this.e)).a(b(k8Var.f(), k8Var.a()));
        this.g = 5;
    }

    public u8(int i) {
        this.a = new byte[42];
        this.b = new ah(new byte[32768], 0);
        this.c = (i & 1) != 0;
        this.d = new v8.a();
        this.g = 0;
    }

    private long a(ah ahVar, boolean z) {
        boolean zA;
        b1.a(this.i);
        int iD = ahVar.d();
        while (iD <= ahVar.e() - 16) {
            ahVar.f(iD);
            if (v8.a(ahVar, this.i, this.k, this.d)) {
                ahVar.f(iD);
                return this.d.a;
            }
            iD++;
        }
        if (z) {
            while (iD <= ahVar.e() - this.j) {
                ahVar.f(iD);
                try {
                    zA = v8.a(ahVar, this.i, this.k, this.d);
                } catch (IndexOutOfBoundsException unused) {
                    zA = false;
                }
                if (ahVar.d() <= ahVar.e() && zA) {
                    ahVar.f(iD);
                    return this.d.a;
                }
                iD++;
            }
            ahVar.f(ahVar.e());
            return -1L;
        }
        ahVar.f(iD);
        return -1L;
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.e = l8Var;
        this.f = l8Var.a(0, 1);
        l8Var.c();
    }

    private ij b(long j, long j2) {
        b1.a(this.i);
        z8 z8Var = this.i;
        if (z8Var.k != null) {
            return new y8(z8Var, j);
        }
        if (j2 != -1 && z8Var.j > 0) {
            t8 t8Var = new t8(z8Var, this.k, j, j2);
            this.l = t8Var;
            return t8Var.a();
        }
        return new ij.b(z8Var.b());
    }

    private void c() {
        ((qo) xp.a(this.f)).a((this.n * 1000000) / ((long) ((z8) xp.a(this.i)).e), 1, this.m, 0, null);
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        int i = this.g;
        if (i == 0) {
            d(k8Var);
            return 0;
        }
        if (i == 1) {
            c(k8Var);
            return 0;
        }
        if (i == 2) {
            f(k8Var);
            return 0;
        }
        if (i == 3) {
            e(k8Var);
            return 0;
        }
        if (i == 4) {
            b(k8Var);
            return 0;
        }
        if (i != 5) {
            throw new IllegalStateException();
        }
        return b(k8Var, thVar);
    }

    private int b(k8 k8Var, th thVar) {
        boolean z;
        b1.a(this.f);
        b1.a(this.i);
        t8 t8Var = this.l;
        if (t8Var != null && t8Var.b()) {
            return this.l.a(k8Var, thVar);
        }
        if (this.n == -1) {
            this.n = v8.a(k8Var, this.i);
            return 0;
        }
        int iE = this.b.e();
        if (iE < 32768) {
            int iA = k8Var.a(this.b.c(), iE, 32768 - iE);
            z = iA == -1;
            if (!z) {
                this.b.e(iE + iA);
            } else if (this.b.a() == 0) {
                c();
                return -1;
            }
        } else {
            z = false;
        }
        int iD = this.b.d();
        int i = this.m;
        int i2 = this.j;
        if (i < i2) {
            ah ahVar = this.b;
            ahVar.g(Math.min(i2 - i, ahVar.a()));
        }
        long jA = a(this.b, z);
        int iD2 = this.b.d() - iD;
        this.b.f(iD);
        this.f.a(this.b, iD2);
        this.m += iD2;
        if (jA != -1) {
            c();
            this.m = 0;
            this.n = jA;
        }
        if (this.b.a() < 16) {
            int iA2 = this.b.a();
            System.arraycopy(this.b.c(), this.b.d(), this.b.c(), 0, iA2);
            this.b.f(0);
            this.b.e(iA2);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] b() {
        return new j8[]{new u8()};
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        if (j == 0) {
            this.g = 0;
        } else {
            t8 t8Var = this.l;
            if (t8Var != null) {
                t8Var.b(j2);
            }
        }
        this.n = j2 != 0 ? -1L : 0L;
        this.m = 0;
        this.b.d(0);
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        w8.a(k8Var, false);
        return w8.a(k8Var);
    }
}
