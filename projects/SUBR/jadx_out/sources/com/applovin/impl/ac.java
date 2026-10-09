package com.applovin.impl;

import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class ac implements p7 {
    private final String a;
    private final ah b;
    private final zg c;
    private qo d;
    private String e;
    private e9 f;
    private int g;
    private int h;
    private int i;
    private int j;
    private long k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private long q;
    private int r;
    private long s;
    private int t;
    private String u;

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public ac(String str) {
        this.a = str;
        ah ahVar = new ah(1024);
        this.b = ahVar;
        this.c = new zg(ahVar.c());
        this.k = -9223372036854775807L;
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) throws ch {
        b1.b(this.d);
        while (ahVar.a() > 0) {
            int i = this.g;
            if (i != 0) {
                if (i == 1) {
                    int iW = ahVar.w();
                    if ((iW & 224) == 224) {
                        this.j = iW;
                        this.g = 2;
                    } else if (iW != 86) {
                        this.g = 0;
                    }
                } else if (i == 2) {
                    int iW2 = ((this.j & (-225)) << 8) | ahVar.w();
                    this.i = iW2;
                    if (iW2 > this.b.c().length) {
                        a(this.i);
                    }
                    this.h = 0;
                    this.g = 3;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(ahVar.a(), this.i - this.h);
                    ahVar.a(this.c.a, this.h, iMin);
                    int i2 = this.h + iMin;
                    this.h = i2;
                    if (i2 == this.i) {
                        this.c.c(0);
                        b(this.c);
                        this.g = 0;
                    }
                }
            } else if (ahVar.w() == 86) {
                this.g = 1;
            }
        }
    }

    private void b(zg zgVar) throws ch {
        if (!zgVar.f()) {
            this.l = true;
            f(zgVar);
        } else if (!this.l) {
            return;
        }
        if (this.m == 0) {
            if (this.n == 0) {
                a(zgVar, e(zgVar));
                if (this.p) {
                    zgVar.d((int) this.q);
                    return;
                }
                return;
            }
            throw ch.a(null, null);
        }
        throw ch.a(null, null);
    }

    private void f(zg zgVar) throws ch {
        boolean zF;
        int iA = zgVar.a(1);
        int iA2 = iA == 1 ? zgVar.a(1) : 0;
        this.m = iA2;
        if (iA2 == 0) {
            if (iA == 1) {
                a(zgVar);
            }
            if (zgVar.f()) {
                this.n = zgVar.a(6);
                int iA3 = zgVar.a(4);
                int iA4 = zgVar.a(3);
                if (iA3 == 0 && iA4 == 0) {
                    if (iA == 0) {
                        int iE = zgVar.e();
                        int iC = c(zgVar);
                        zgVar.c(iE);
                        byte[] bArr = new byte[(iC + 7) / 8];
                        zgVar.a(bArr, 0, iC);
                        e9 e9VarA = new e9.b().c(this.e).f("audio/mp4a-latm").a(this.u).c(this.t).n(this.r).a(Collections.singletonList(bArr)).e(this.a).a();
                        if (!e9VarA.equals(this.f)) {
                            this.f = e9VarA;
                            this.s = 1024000000 / ((long) e9VarA.A);
                            this.d.a(e9VarA);
                        }
                    } else {
                        zgVar.d(((int) a(zgVar)) - c(zgVar));
                    }
                    d(zgVar);
                    boolean zF2 = zgVar.f();
                    this.p = zF2;
                    this.q = 0L;
                    if (zF2) {
                        if (iA == 1) {
                            this.q = a(zgVar);
                        } else {
                            do {
                                zF = zgVar.f();
                                this.q = (this.q << 8) + ((long) zgVar.a(8));
                            } while (zF);
                        }
                    }
                    if (zgVar.f()) {
                        zgVar.d(8);
                        return;
                    }
                    return;
                }
                throw ch.a(null, null);
            }
            throw ch.a(null, null);
        }
        throw ch.a(null, null);
    }

    private void d(zg zgVar) {
        int iA = zgVar.a(3);
        this.o = iA;
        if (iA == 0) {
            zgVar.d(8);
            return;
        }
        if (iA == 1) {
            zgVar.d(9);
            return;
        }
        if (iA == 3 || iA == 4 || iA == 5) {
            zgVar.d(6);
        } else {
            if (iA != 6 && iA != 7) {
                throw new IllegalStateException();
            }
            zgVar.d(1);
        }
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.d = l8Var.a(dVar.c(), 1);
        this.e = dVar.b();
    }

    private int c(zg zgVar) throws ch {
        int iB = zgVar.b();
        a.b bVarA = a.a(zgVar, true);
        this.u = bVarA.c;
        this.r = bVarA.a;
        this.t = bVarA.b;
        return iB - zgVar.b();
    }

    private int e(zg zgVar) throws ch {
        int iA;
        if (this.o != 0) {
            throw ch.a(null, null);
        }
        int i = 0;
        do {
            iA = zgVar.a(8);
            i += iA;
        } while (iA == 255);
        return i;
    }

    private static long a(zg zgVar) {
        return zgVar.a((zgVar.a(2) + 1) * 8);
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.k = j;
        }
    }

    private void a(zg zgVar, int i) {
        int iE = zgVar.e();
        if ((iE & 7) == 0) {
            this.b.f(iE >> 3);
        } else {
            zgVar.a(this.b.c(), 0, i * 8);
            this.b.f(0);
        }
        this.d.a(this.b, i);
        long j = this.k;
        if (j != -9223372036854775807L) {
            this.d.a(j, 1, i, 0, null);
            this.k += this.s;
        }
    }

    private void a(int i) {
        this.b.d(i);
        this.c.a(this.b.c());
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.g = 0;
        this.k = -9223372036854775807L;
        this.l = false;
    }
}
