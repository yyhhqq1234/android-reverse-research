package com.applovin.impl;

import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class k0 implements p7 {
    private static final byte[] v = {73, 68, 51};
    private final boolean a;
    private final zg b;
    private final ah c;
    private final String d;
    private String e;
    private qo f;
    private qo g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private long q;
    private int r;
    private long s;
    private qo t;
    private long u;

    public static boolean a(int i) {
        return (i & 65526) == 65520;
    }

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public k0(boolean z) {
        this(z, null);
    }

    public long d() {
        return this.q;
    }

    private void g() {
        this.l = false;
        i();
    }

    public k0(boolean z, String str) {
        this.b = new zg(new byte[7]);
        this.c = new ah(Arrays.copyOf(v, 10));
        i();
        this.m = -1;
        this.n = -1;
        this.q = -9223372036854775807L;
        this.s = -9223372036854775807L;
        this.a = z;
        this.d = str;
    }

    private void i() {
        this.h = 0;
        this.i = 0;
        this.j = 256;
    }

    private void k() {
        this.h = 2;
        this.i = v.length;
        this.r = 0;
        this.c.f(0);
    }

    private void j() {
        this.h = 3;
        this.i = 0;
    }

    private void h() {
        this.h = 1;
        this.i = 0;
    }

    private void b(ah ahVar) {
        if (ahVar.a() == 0) {
            return;
        }
        this.b.a[0] = ahVar.c()[ahVar.d()];
        this.b.c(2);
        int iA = this.b.a(4);
        int i = this.n;
        if (i != -1 && iA != i) {
            g();
            return;
        }
        if (!this.l) {
            this.l = true;
            this.m = this.o;
            this.n = iA;
        }
        j();
    }

    private boolean a(ah ahVar, int i) {
        ahVar.f(i + 1);
        if (!b(ahVar, this.b.a, 1)) {
            return false;
        }
        this.b.c(4);
        int iA = this.b.a(1);
        int i2 = this.m;
        if (i2 != -1 && iA != i2) {
            return false;
        }
        if (this.n != -1) {
            if (!b(ahVar, this.b.a, 1)) {
                return true;
            }
            this.b.c(2);
            if (this.b.a(4) != this.n) {
                return false;
            }
            ahVar.f(i + 2);
        }
        if (!b(ahVar, this.b.a, 4)) {
            return true;
        }
        this.b.c(14);
        int iA2 = this.b.a(13);
        if (iA2 < 7) {
            return false;
        }
        byte[] bArrC = ahVar.c();
        int iE = ahVar.e();
        int i3 = i + iA2;
        if (i3 >= iE) {
            return true;
        }
        byte b = bArrC[i3];
        if (b == -1) {
            int i4 = i3 + 1;
            if (i4 == iE) {
                return true;
            }
            return a((byte) -1, bArrC[i4]) && ((bArrC[i4] & 8) >> 3) == iA;
        }
        if (b != 73) {
            return false;
        }
        int i5 = i3 + 1;
        if (i5 == iE) {
            return true;
        }
        if (bArrC[i5] != 68) {
            return false;
        }
        int i6 = i3 + 2;
        return i6 == iE || bArrC[i6] == 51;
    }

    private void f() {
        this.g.a(this.c, 10);
        this.c.f(6);
        a(this.g, 0L, 10, this.c.v() + 10);
    }

    private void e() {
        this.b.c(0);
        if (!this.p) {
            int i = 2;
            int iA = this.b.a(2) + 1;
            if (iA != 2) {
                oc.d("AdtsReader", "Detected audio object type: " + iA + ", but assuming AAC LC.");
            } else {
                i = iA;
            }
            this.b.d(5);
            byte[] bArrA = a.a(i, this.n, this.b.a(3));
            a.b bVarA = a.a(bArrA);
            e9 e9VarA = new e9.b().c(this.e).f("audio/mp4a-latm").a(bVarA.c).c(bVarA.b).n(bVarA.a).a(Collections.singletonList(bArrA)).e(this.d).a();
            this.q = 1024000000 / ((long) e9VarA.A);
            this.f.a(e9VarA);
            this.p = true;
        } else {
            this.b.d(10);
        }
        this.b.d(4);
        int iA2 = this.b.a(13);
        int i2 = iA2 - 7;
        if (this.k) {
            i2 = iA2 - 9;
        }
        a(this.f, this.q, 0, i2);
    }

    private void c() {
        b1.a(this.f);
        xp.a(this.t);
        xp.a(this.g);
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) {
        c();
        while (ahVar.a() > 0) {
            int i = this.h;
            if (i == 0) {
                c(ahVar);
            } else if (i == 1) {
                b(ahVar);
            } else if (i != 2) {
                if (i == 3) {
                    if (a(ahVar, this.b.a, this.k ? 7 : 5)) {
                        e();
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    d(ahVar);
                }
            } else if (a(ahVar, this.c.c(), 10)) {
                f();
            }
        }
    }

    private void d(ah ahVar) {
        int iMin = Math.min(ahVar.a(), this.r - this.i);
        this.t.a(ahVar, iMin);
        int i = this.i + iMin;
        this.i = i;
        int i2 = this.r;
        if (i == i2) {
            long j = this.s;
            if (j != -9223372036854775807L) {
                this.t.a(j, 1, i2, 0, null);
                this.s += this.u;
            }
            i();
        }
    }

    private boolean b(ah ahVar, byte[] bArr, int i) {
        if (ahVar.a() < i) {
            return false;
        }
        ahVar.a(bArr, 0, i);
        return true;
    }

    private void c(ah ahVar) {
        byte[] bArrC = ahVar.c();
        int iD = ahVar.d();
        int iE = ahVar.e();
        while (iD < iE) {
            int i = iD + 1;
            byte b = bArrC[iD];
            int i2 = b & 255;
            if (this.j == 512 && a((byte) -1, (byte) i2) && (this.l || a(ahVar, iD - 1))) {
                this.o = (b & 8) >> 3;
                this.k = (b & 1) == 0;
                if (!this.l) {
                    h();
                } else {
                    j();
                }
                ahVar.f(i);
                return;
            }
            int i3 = this.j;
            int i4 = i2 | i3;
            if (i4 == 329) {
                this.j = 768;
            } else if (i4 == 511) {
                this.j = 512;
            } else if (i4 == 836) {
                this.j = 1024;
            } else if (i4 == 1075) {
                k();
                ahVar.f(i);
                return;
            } else if (i3 != 256) {
                this.j = 256;
            }
            iD = i;
        }
        ahVar.f(iD);
    }

    private boolean a(ah ahVar, byte[] bArr, int i) {
        int iMin = Math.min(ahVar.a(), i - this.i);
        ahVar.a(bArr, this.i, iMin);
        int i2 = this.i + iMin;
        this.i = i2;
        return i2 == i;
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.e = dVar.b();
        qo qoVarA = l8Var.a(dVar.c(), 1);
        this.f = qoVarA;
        this.t = qoVarA;
        if (this.a) {
            dVar.a();
            qo qoVarA2 = l8Var.a(dVar.c(), 5);
            this.g = qoVarA2;
            qoVarA2.a(new e9.b().c(dVar.b()).f("application/id3").a());
            return;
        }
        this.g = new h7();
    }

    private boolean a(byte b, byte b2) {
        return a(((b & 255) << 8) | (b2 & 255));
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.s = j;
        }
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.s = -9223372036854775807L;
        g();
    }

    private void a(qo qoVar, long j, int i, int i2) {
        this.h = 4;
        this.i = i;
        this.t = qoVar;
        this.u = j;
        this.r = i2;
    }
}
