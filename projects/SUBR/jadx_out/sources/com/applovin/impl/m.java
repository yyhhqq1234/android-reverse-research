package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class m implements p7 {
    private final zg a;
    private final ah b;
    private final String c;
    private String d;
    private qo e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private long j;
    private e9 k;
    private int l;
    private long m;

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public m() {
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
                        int iMin = Math.min(ahVar.a(), this.l - this.g);
                        this.e.a(ahVar, iMin);
                        int i2 = this.g + iMin;
                        this.g = i2;
                        int i3 = this.l;
                        if (i2 == i3) {
                            long j = this.m;
                            if (j != -9223372036854775807L) {
                                this.e.a(j, 1, i3, 0, null);
                                this.m += this.j;
                            }
                            this.f = 0;
                        }
                    }
                } else if (a(ahVar, this.b.c(), 16)) {
                    c();
                    this.b.f(0);
                    this.e.a(this.b, 16);
                    this.f = 2;
                }
            } else if (b(ahVar)) {
                this.f = 1;
                this.b.c()[0] = -84;
                this.b.c()[1] = (byte) (this.i ? 65 : 64);
                this.g = 2;
            }
        }
    }

    public m(String str) {
        zg zgVar = new zg(new byte[16]);
        this.a = zgVar;
        this.b = new ah(zgVar.a);
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = false;
        this.m = -9223372036854775807L;
        this.c = str;
    }

    private boolean b(ah ahVar) {
        while (true) {
            if (ahVar.a() <= 0) {
                return false;
            }
            if (!this.h) {
                this.h = ahVar.w() == 172;
            } else {
                int iW = ahVar.w();
                this.h = iW == 172;
                if (iW == 64 || iW == 65) {
                    this.i = iW == 65;
                    return true;
                }
            }
        }
    }

    private void c() {
        this.a.c(0);
        n.b bVarA = n.a(this.a);
        e9 e9Var = this.k;
        if (e9Var == null || bVarA.c != e9Var.z || bVarA.b != e9Var.A || !"audio/ac4".equals(e9Var.m)) {
            e9 e9VarA = new e9.b().c(this.d).f("audio/ac4").c(bVarA.c).n(bVarA.b).e(this.c).a();
            this.k = e9VarA;
            this.e.a(e9VarA);
        }
        this.l = bVarA.d;
        this.j = (((long) bVarA.e) * 1000000) / ((long) this.k.A);
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
            this.m = j;
        }
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = false;
        this.m = -9223372036854775807L;
    }
}
