package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class j implements p7 {
    private final zg a;
    private final ah b;
    private final String c;
    private String d;
    private qo e;
    private int f;
    private int g;
    private boolean h;
    private long i;
    private e9 j;
    private int k;
    private long l;

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public j() {
        this(null);
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) {
        b1.b(this.e);
        while (ahVar.a() > 0) {
            int i = this.f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int iMin = Math.min(ahVar.a(), this.k - this.g);
                        this.e.a(ahVar, iMin);
                        int i2 = this.g + iMin;
                        this.g = i2;
                        int i3 = this.k;
                        if (i2 == i3) {
                            long j = this.l;
                            if (j != -9223372036854775807L) {
                                this.e.a(j, 1, i3, 0, null);
                                this.l += this.i;
                            }
                            this.f = 0;
                        }
                    }
                } else if (a(ahVar, this.b.c(), 128)) {
                    c();
                    this.b.f(0);
                    this.e.a(this.b, 128);
                    this.f = 2;
                }
            } else if (b(ahVar)) {
                this.f = 1;
                this.b.c()[0] = 11;
                this.b.c()[1] = 119;
                this.g = 2;
            }
        }
    }

    public j(String str) {
        zg zgVar = new zg(new byte[128]);
        this.a = zgVar;
        this.b = new ah(zgVar.a);
        this.f = 0;
        this.l = -9223372036854775807L;
        this.c = str;
    }

    private boolean b(ah ahVar) {
        while (true) {
            if (ahVar.a() <= 0) {
                return false;
            }
            if (!this.h) {
                this.h = ahVar.w() == 11;
            } else {
                int iW = ahVar.w();
                if (iW == 119) {
                    this.h = false;
                    return true;
                }
                this.h = iW == 11;
            }
        }
    }

    private void c() {
        this.a.c(0);
        k.b bVarA = k.a(this.a);
        e9 e9Var = this.j;
        if (e9Var == null || bVarA.d != e9Var.z || bVarA.c != e9Var.A || !xp.a((Object) bVarA.a, (Object) e9Var.m)) {
            e9 e9VarA = new e9.b().c(this.d).f(bVarA.a).c(bVarA.d).n(bVarA.c).e(this.c).a();
            this.j = e9VarA;
            this.e.a(e9VarA);
        }
        this.k = bVarA.e;
        this.i = (((long) bVarA.f) * 1000000) / ((long) this.j.A);
    }

    private boolean a(ah ahVar, byte[] bArr, int i) {
        int iMin = Math.min(ahVar.a(), i - this.g);
        ahVar.a(bArr, this.g, iMin);
        int i2 = this.g + iMin;
        this.g = i2;
        return i2 == i;
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.d = dVar.b();
        this.e = l8Var.a(dVar.c(), 1);
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.l = j;
        }
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.l = -9223372036854775807L;
    }
}
