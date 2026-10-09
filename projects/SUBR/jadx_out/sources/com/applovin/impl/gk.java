package com.applovin.impl;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class gk extends fo {
    private static final Object q = new Object();
    private static final sd r = new sd.c().b("SinglePeriodTimeline").a(Uri.EMPTY).a();
    private final long c;
    private final long d;
    private final long f;
    private final long g;
    private final long h;
    private final long i;
    private final long j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final Object n;
    private final sd o;
    private final sd.f p;

    @Override // com.applovin.impl.fo
    public int a() {
        return 1;
    }

    @Override // com.applovin.impl.fo
    public int b() {
        return 1;
    }

    public gk(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, sd sdVar, sd.f fVar) {
        this.c = j;
        this.d = j2;
        this.f = j3;
        this.g = j4;
        this.h = j5;
        this.i = j6;
        this.j = j7;
        this.k = z;
        this.l = z2;
        this.m = z3;
        this.n = obj;
        this.o = (sd) b1.a(sdVar);
        this.p = fVar;
    }

    @Override // com.applovin.impl.fo
    public fo.b a(int i, fo.b bVar, boolean z) {
        b1.a(i, 0, 1);
        return bVar.a(null, z ? q : null, 0, this.g, -this.i);
    }

    @Override // com.applovin.impl.fo
    public Object b(int i) {
        b1.a(i, 0, 1);
        return q;
    }

    public gk(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, sd sdVar) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, false, obj, sdVar, z3 ? sdVar.c : null);
    }

    public gk(long j, boolean z, boolean z2, boolean z3, Object obj, sd sdVar) {
        this(j, j, 0L, 0L, z, z2, z3, obj, sdVar);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
  0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.applovin.impl.fo
    public fo.d a(int i, fo.d dVar, long j) {
        long j2;
        b1.a(i, 0, 1);
        long j3 = this.j;
        boolean z = this.l;
        if (!z || this.m || j == 0) {
            j2 = j3;
        } else {
            long j4 = this.h;
            if (j4 != -9223372036854775807L) {
                j3 += j;
                if (j3 <= j4) {
                    j2 = j3;
                }
            }
            j2 = -9223372036854775807L;
        }
        return dVar.a(fo.d.s, this.o, this.n, this.c, this.d, this.f, this.k, z, this.p, j2, this.h, 0, 0, this.i);
    }

    @Override // com.applovin.impl.fo
    public int a(Object obj) {
        return q.equals(obj) ? 0 : -1;
    }
}
