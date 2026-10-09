package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class d7 implements p7 {
    private final String b;
    private String c;
    private qo d;
    private int f;
    private int g;
    private long h;
    private e9 i;
    private int j;
    private final ah a = new ah(new byte[18]);
    private int e = 0;
    private long k = -9223372036854775807L;

    @Override // com.applovin.impl.p7
    public void b() {
    }

    public d7(String str) {
        this.b = str;
    }

    @Override // com.applovin.impl.p7
    public void a(ah ahVar) {
        b1.b(this.d);
        while (ahVar.a() > 0) {
            int i = this.e;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int iMin = Math.min(ahVar.a(), this.j - this.f);
                        this.d.a(ahVar, iMin);
                        int i2 = this.f + iMin;
                        this.f = i2;
                        int i3 = this.j;
                        if (i2 == i3) {
                            long j = this.k;
                            if (j != -9223372036854775807L) {
                                this.d.a(j, 1, i3, 0, null);
                                this.k += this.h;
                            }
                            this.e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(ahVar, this.a.c(), 18)) {
                    c();
                    this.a.f(0);
                    this.d.a(this.a, 18);
                    this.e = 2;
                }
            } else if (b(ahVar)) {
                this.e = 1;
            }
        }
    }

    private boolean b(ah ahVar) {
        while (ahVar.a() > 0) {
            int i = this.g << 8;
            this.g = i;
            int iW = i | ahVar.w();
            this.g = iW;
            if (e7.a(iW)) {
                byte[] bArrC = this.a.c();
                int i2 = this.g;
                bArrC[0] = (byte) ((i2 >> 24) & 255);
                bArrC[1] = (byte) ((i2 >> 16) & 255);
                bArrC[2] = (byte) ((i2 >> 8) & 255);
                bArrC[3] = (byte) (i2 & 255);
                this.f = 4;
                this.g = 0;
                return true;
            }
        }
        return false;
    }

    private void c() {
        byte[] bArrC = this.a.c();
        if (this.i == null) {
            e9 e9VarA = e7.a(bArrC, this.c, this.b, null);
            this.i = e9VarA;
            this.d.a(e9VarA);
        }
        this.j = e7.a(bArrC);
        this.h = (int) ((((long) e7.d(bArrC)) * 1000000) / ((long) this.i.A));
    }

    private boolean a(ah ahVar, byte[] bArr, int i) {
        int iMin = Math.min(ahVar.a(), i - this.f);
        ahVar.a(bArr, this.f, iMin);
        int i2 = this.f + iMin;
        this.f = i2;
        return i2 == i;
    }

    @Override // com.applovin.impl.p7
    public void a(l8 l8Var, dp.d dVar) {
        dVar.a();
        this.c = dVar.b();
        this.d = l8Var.a(dVar.c(), 1);
    }

    @Override // com.applovin.impl.p7
    public void a(long j, int i) {
        if (j != -9223372036854775807L) {
            this.k = j;
        }
    }

    @Override // com.applovin.impl.p7
    public void a() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.k = -9223372036854775807L;
    }
}
