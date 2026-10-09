package com.applovin.impl;

import android.net.Uri;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j0 implements j8 {
    public static final n8 m = new n8() { // from class: com.applovin.impl.j0$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return j0.b();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private final int a;
    private final k0 b;
    private final ah c;
    private final ah d;
    private final zg e;
    private l8 f;
    private long g;
    private long h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;

    @Override // com.applovin.impl.j8
    public void a() {
    }

    public j0() {
        this(0);
    }

    public j0(int i) {
        this.a = (i & 2) != 0 ? i | 1 : i;
        this.b = new k0(true);
        this.c = new ah(2048);
        this.i = -1;
        this.h = -1L;
        ah ahVar = new ah(10);
        this.d = ahVar;
        this.e = new zg(ahVar.c());
    }

    private int c(k8 k8Var) {
        int i = 0;
        while (true) {
            k8Var.c(this.d.c(), 0, 10);
            this.d.f(0);
            if (this.d.z() != 4801587) {
                break;
            }
            this.d.g(3);
            int iV = this.d.v();
            i += iV + 10;
            k8Var.c(iV);
        }
        k8Var.b();
        k8Var.c(i);
        if (this.h == -1) {
            this.h = i;
        }
        return i;
    }

    private void b(k8 k8Var) throws ch {
        if (this.j) {
            return;
        }
        this.i = -1;
        k8Var.b();
        long j = 0;
        if (k8Var.f() == 0) {
            c(k8Var);
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                if (k8Var.b(this.d.c(), 0, 2, true)) {
                    this.d.f(0);
                    if (!k0.a(this.d.C())) {
                        break;
                    }
                    if (k8Var.b(this.d.c(), 0, 4, true)) {
                        this.e.c(14);
                        int iA = this.e.a(13);
                        if (iA > 6) {
                            j += (long) iA;
                            i2++;
                            if (i2 != 1000 && k8Var.a(iA - 6, true)) {
                            }
                        } else {
                            this.j = true;
                            throw ch.a("Malformed ADTS stream", null);
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i = i2;
            break;
        }
        k8Var.b();
        if (i > 0) {
            this.i = (int) (j / ((long) i));
        } else {
            this.i = -1;
        }
        this.j = true;
    }

    private static int a(int i, long j) {
        return (int) ((((long) (i * 8)) * 1000000) / j);
    }

    private void b(long j, boolean z) {
        if (this.l) {
            return;
        }
        boolean z2 = (this.a & 1) != 0 && this.i > 0;
        if (z2 && this.b.d() == -9223372036854775807L && !z) {
            return;
        }
        if (z2 && this.b.d() != -9223372036854775807L) {
            this.f.a(a(j, (this.a & 2) != 0));
        } else {
            this.f.a(new ij.b(-9223372036854775807L));
        }
        this.l = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] b() {
        return new j8[]{new j0()};
    }

    private ij a(long j, boolean z) {
        return new o4(j, this.h, a(this.i, this.b.d()), this.i, z);
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.f = l8Var;
        this.b.a(l8Var, new dp.d(0, 1));
        l8Var.c();
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        b1.b(this.f);
        long jA = k8Var.a();
        int i = this.a;
        if ((i & 2) != 0 || ((i & 1) != 0 && jA != -1)) {
            b(k8Var);
        }
        int iA = k8Var.a(this.c.c(), 0, 2048);
        boolean z = iA == -1;
        b(jA, z);
        if (z) {
            return -1;
        }
        this.c.f(0);
        this.c.e(iA);
        if (!this.k) {
            this.b.a(this.g, 4);
            this.k = true;
        }
        this.b.a(this.c);
        return 0;
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        this.k = false;
        this.b.a();
        this.g = j2;
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        int iC = c(k8Var);
        int i = iC;
        int i2 = 0;
        int i3 = 0;
        do {
            k8Var.c(this.d.c(), 0, 2);
            this.d.f(0);
            if (k0.a(this.d.C())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                k8Var.c(this.d.c(), 0, 4);
                this.e.c(14);
                int iA = this.e.a(13);
                if (iA <= 6) {
                    i++;
                    k8Var.b();
                    k8Var.c(i);
                } else {
                    k8Var.c(iA - 6);
                    i3 += iA;
                }
            } else {
                i++;
                k8Var.b();
                k8Var.c(i);
            }
            i2 = 0;
            i3 = 0;
        } while (i - iC < 8192);
        return false;
    }
}
