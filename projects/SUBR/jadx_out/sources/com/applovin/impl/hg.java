package com.applovin.impl;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class hg {
    private final ig a = new ig();
    private final ah b = new ah(new byte[65025], 0);
    private int c = -1;
    private int d;
    private boolean e;

    hg() {
    }

    public void c() {
        this.a.a();
        this.b.d(0);
        this.c = -1;
        this.e = false;
    }

    public ah b() {
        return this.b;
    }

    public void d() {
        if (this.b.c().length == 65025) {
            return;
        }
        ah ahVar = this.b;
        ahVar.a(Arrays.copyOf(ahVar.c(), Math.max(65025, this.b.e())), this.b.e());
    }

    private int a(int i) {
        int i2;
        int i3 = 0;
        this.d = 0;
        do {
            int i4 = this.d;
            int i5 = i + i4;
            ig igVar = this.a;
            if (i5 >= igVar.g) {
                break;
            }
            int[] iArr = igVar.j;
            this.d = i4 + 1;
            i2 = iArr[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public ig a() {
        return this.a;
    }

    public boolean a(k8 k8Var) {
        int i;
        b1.b(k8Var != null);
        if (this.e) {
            this.e = false;
            this.b.d(0);
        }
        while (!this.e) {
            if (this.c < 0) {
                if (!this.a.a(k8Var) || !this.a.a(k8Var, true)) {
                    return false;
                }
                ig igVar = this.a;
                int iA = igVar.h;
                if ((igVar.b & 1) == 1 && this.b.e() == 0) {
                    iA += a(0);
                    i = this.d;
                } else {
                    i = 0;
                }
                if (!m8.a(k8Var, iA)) {
                    return false;
                }
                this.c = i;
            }
            int iA2 = a(this.c);
            int i2 = this.c + this.d;
            if (iA2 > 0) {
                ah ahVar = this.b;
                ahVar.a(ahVar.e() + iA2);
                if (!m8.b(k8Var, this.b.c(), this.b.e(), iA2)) {
                    return false;
                }
                ah ahVar2 = this.b;
                ahVar2.e(ahVar2.e() + iA2);
                this.e = this.a.j[i2 + (-1)] != 255;
            }
            if (i2 == this.a.g) {
                i2 = -1;
            }
            this.c = i2;
        }
        return true;
    }
}
