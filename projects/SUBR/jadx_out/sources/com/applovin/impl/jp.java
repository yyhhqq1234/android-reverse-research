package com.applovin.impl;

import android.text.Layout;

/* JADX INFO: loaded from: classes.dex */
final class jp {
    private String a;
    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private float k;
    private String l;
    private Layout.Alignment o;
    private Layout.Alignment p;
    private xn r;
    private int f = -1;
    private int g = -1;
    private int h = -1;
    private int i = -1;
    private int j = -1;
    private int m = -1;
    private int n = -1;
    private int q = -1;
    private float s = Float.MAX_VALUE;

    public int k() {
        int i = this.h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.i == 1 ? 2 : 0);
    }

    public boolean q() {
        return this.f == 1;
    }

    public boolean r() {
        return this.g == 1;
    }

    public String c() {
        return this.a;
    }

    public int b() {
        if (this.c) {
            return this.b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public boolean p() {
        return this.c;
    }

    public boolean o() {
        return this.e;
    }

    public float j() {
        return this.s;
    }

    public jp a(jp jpVar) {
        return a(jpVar, true);
    }

    public String f() {
        return this.l;
    }

    public int i() {
        return this.m;
    }

    public int h() {
        return this.n;
    }

    public Layout.Alignment l() {
        return this.o;
    }

    public Layout.Alignment g() {
        return this.p;
    }

    public boolean m() {
        return this.q == 1;
    }

    public jp b(int i) {
        this.b = i;
        this.c = true;
        return this;
    }

    public xn n() {
        return this.r;
    }

    public int e() {
        return this.j;
    }

    public float d() {
        return this.k;
    }

    public int a() {
        if (this.e) {
            return this.d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public jp c(int i) {
        this.j = i;
        return this;
    }

    public jp b(String str) {
        this.l = str;
        return this;
    }

    private jp a(jp jpVar, boolean z) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (jpVar != null) {
            if (!this.c && jpVar.c) {
                b(jpVar.b);
            }
            if (this.h == -1) {
                this.h = jpVar.h;
            }
            if (this.i == -1) {
                this.i = jpVar.i;
            }
            if (this.a == null && (str = jpVar.a) != null) {
                this.a = str;
            }
            if (this.f == -1) {
                this.f = jpVar.f;
            }
            if (this.g == -1) {
                this.g = jpVar.g;
            }
            if (this.n == -1) {
                this.n = jpVar.n;
            }
            if (this.o == null && (alignment2 = jpVar.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = jpVar.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = jpVar.q;
            }
            if (this.j == -1) {
                this.j = jpVar.j;
                this.k = jpVar.k;
            }
            if (this.r == null) {
                this.r = jpVar.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = jpVar.s;
            }
            if (z && !this.e && jpVar.e) {
                a(jpVar.d);
            }
            if (z && this.m == -1 && (i = jpVar.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }

    public jp c(boolean z) {
        this.f = z ? 1 : 0;
        return this;
    }

    public jp e(int i) {
        this.m = i;
        return this;
    }

    public jp d(int i) {
        this.n = i;
        return this;
    }

    public jp b(boolean z) {
        this.i = z ? 1 : 0;
        return this;
    }

    public jp e(boolean z) {
        this.g = z ? 1 : 0;
        return this;
    }

    public jp a(int i) {
        this.d = i;
        this.e = true;
        return this;
    }

    public jp b(float f) {
        this.s = f;
        return this;
    }

    public jp a(boolean z) {
        this.h = z ? 1 : 0;
        return this;
    }

    public jp d(boolean z) {
        this.q = z ? 1 : 0;
        return this;
    }

    public jp a(String str) {
        this.a = str;
        return this;
    }

    public jp b(Layout.Alignment alignment) {
        this.o = alignment;
        return this;
    }

    public jp a(float f) {
        this.k = f;
        return this;
    }

    public jp a(Layout.Alignment alignment) {
        this.p = alignment;
        return this;
    }

    public jp a(xn xnVar) {
        this.r = xnVar;
        return this;
    }
}
