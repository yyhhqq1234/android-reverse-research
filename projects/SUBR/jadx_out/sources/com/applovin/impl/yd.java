package com.applovin.impl;

import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
final class yd {
    public final ae.a a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    yd(ae.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        b1.a(!z4 || z2);
        b1.a(!z3 || z2);
        if (!z || (!z2 && !z3 && !z4)) {
            z5 = true;
        }
        b1.a(z5);
        this.a = aVar;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
    }

    public yd b(long j) {
        return j == this.b ? this : new yd(this.a, j, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public yd a(long j) {
        return j == this.c ? this : new yd(this.a, this.b, j, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yd.class != obj.getClass()) {
            return false;
        }
        yd ydVar = (yd) obj;
        return this.b == ydVar.b && this.c == ydVar.c && this.d == ydVar.d && this.e == ydVar.e && this.f == ydVar.f && this.g == ydVar.g && this.h == ydVar.h && this.i == ydVar.i && xp.a(this.a, ydVar.a);
    }

    public int hashCode() {
        return ((((((((((((((((this.a.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + ((int) this.b)) * 31) + ((int) this.c)) * 31) + ((int) this.d)) * 31) + ((int) this.e)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0);
    }
}
