package com.applovin.impl;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class oh {
    private static final ae.a t = new ae.a(new Object());
    public final fo a;
    public final ae.a b;
    public final long c;
    public final long d;
    public final int e;
    public final z7 f;
    public final boolean g;
    public final po h;
    public final wo i;
    public final List j;
    public final ae.a k;
    public final boolean l;
    public final int m;
    public final ph n;
    public final boolean o;
    public final boolean p;
    public volatile long q;
    public volatile long r;
    public volatile long s;

    public static oh a(wo woVar) {
        fo foVar = fo.a;
        ae.a aVar = t;
        return new oh(foVar, aVar, -9223372036854775807L, 0L, 1, null, false, po.d, woVar, db.h(), aVar, false, 0, ph.d, 0L, 0L, 0L, false, false);
    }

    public oh b(boolean z) {
        return new oh(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, z, this.p);
    }

    public oh c(boolean z) {
        return new oh(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, z);
    }

    public static ae.a a() {
        return t;
    }

    public oh a(ae.a aVar, long j, long j2, long j3, long j4, po poVar, wo woVar, List list) {
        return new oh(this.a, aVar, j2, j3, this.e, this.f, this.g, poVar, woVar, list, this.k, this.l, this.m, this.n, this.q, j4, j, this.o, this.p);
    }

    public oh a(fo foVar) {
        return new oh(foVar, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public oh a(int i) {
        return new oh(this.a, this.b, this.c, this.d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public oh a(z7 z7Var) {
        return new oh(this.a, this.b, this.c, this.d, this.e, z7Var, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public oh a(boolean z) {
        return new oh(this.a, this.b, this.c, this.d, this.e, this.f, z, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public oh a(ae.a aVar) {
        return new oh(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, aVar, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public oh a(boolean z, int i) {
        return new oh(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, z, i, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public oh a(ph phVar) {
        return new oh(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, phVar, this.q, this.r, this.s, this.o, this.p);
    }

    public oh(fo foVar, ae.a aVar, long j, long j2, int i, z7 z7Var, boolean z, po poVar, wo woVar, List list, ae.a aVar2, boolean z2, int i2, ph phVar, long j3, long j4, long j5, boolean z3, boolean z4) {
        this.a = foVar;
        this.b = aVar;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = z7Var;
        this.g = z;
        this.h = poVar;
        this.i = woVar;
        this.j = list;
        this.k = aVar2;
        this.l = z2;
        this.m = i2;
        this.n = phVar;
        this.q = j3;
        this.r = j4;
        this.s = j5;
        this.o = z3;
        this.p = z4;
    }
}
