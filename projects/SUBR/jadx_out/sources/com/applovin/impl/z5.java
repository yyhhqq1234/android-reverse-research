package com.applovin.impl;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
final class z5 implements o7 {
    private final byte[] a = new byte[8];
    private final ArrayDeque b = new ArrayDeque();
    private final zp c = new zp();
    private n7 d;
    private int e;
    private int f;
    private long g;

    @Override // com.applovin.impl.o7
    public void a(n7 n7Var) {
        this.d = n7Var;
    }

    @Override // com.applovin.impl.o7
    public void reset() {
        this.e = 0;
        this.b.clear();
        this.c.b();
    }

    @Override // com.applovin.impl.o7
    public boolean a(k8 k8Var) throws ch {
        b1.b(this.d);
        while (true) {
            b bVar = (b) this.b.peek();
            if (bVar == null || k8Var.f() < bVar.b) {
                if (this.e == 0) {
                    long jA = this.c.a(k8Var, true, false, 4);
                    if (jA == -2) {
                        jA = b(k8Var);
                    }
                    if (jA == -1) {
                        return false;
                    }
                    this.f = (int) jA;
                    this.e = 1;
                }
                if (this.e == 1) {
                    this.g = this.c.a(k8Var, false, true, 8);
                    this.e = 2;
                }
                int iB = this.d.b(this.f);
                if (iB != 0) {
                    if (iB == 1) {
                        long jF = k8Var.f();
                        this.b.push(new b(this.f, this.g + jF));
                        this.d.a(this.f, jF, this.g);
                        this.e = 0;
                        return true;
                    }
                    if (iB == 2) {
                        long j = this.g;
                        if (j <= 8) {
                            this.d.a(this.f, b(k8Var, (int) j));
                            this.e = 0;
                            return true;
                        }
                        throw ch.a("Invalid integer size: " + this.g, null);
                    }
                    if (iB == 3) {
                        long j2 = this.g;
                        if (j2 <= 2147483647L) {
                            this.d.a(this.f, c(k8Var, (int) j2));
                            this.e = 0;
                            return true;
                        }
                        throw ch.a("String element size: " + this.g, null);
                    }
                    if (iB == 4) {
                        this.d.a(this.f, (int) this.g, k8Var);
                        this.e = 0;
                        return true;
                    }
                    if (iB != 5) {
                        throw ch.a("Invalid element type " + iB, null);
                    }
                    long j3 = this.g;
                    if (j3 != 4 && j3 != 8) {
                        throw ch.a("Invalid float size: " + this.g, null);
                    }
                    this.d.a(this.f, a(k8Var, (int) j3));
                    this.e = 0;
                    return true;
                }
                k8Var.a((int) this.g);
                this.e = 0;
            } else {
                this.d.a(((b) this.b.pop()).a);
                return true;
            }
        }
    }

    private long b(k8 k8Var) {
        k8Var.b();
        while (true) {
            k8Var.c(this.a, 0, 4);
            int iA = zp.a(this.a[0]);
            if (iA != -1 && iA <= 4) {
                int iA2 = (int) zp.a(this.a, iA, false);
                if (this.d.c(iA2)) {
                    k8Var.a(iA);
                    return iA2;
                }
            }
            k8Var.a(1);
        }
    }

    private static String c(k8 k8Var, int i) {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        k8Var.d(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    private static final class b {
        private final int a;
        private final long b;

        private b(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    private long b(k8 k8Var, int i) {
        k8Var.d(this.a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.a[i2] & 255));
        }
        return j;
    }

    private double a(k8 k8Var, int i) {
        long jB = b(k8Var, i);
        if (i == 4) {
            return Float.intBitsToFloat((int) jB);
        }
        return Double.longBitsToDouble(jB);
    }
}
