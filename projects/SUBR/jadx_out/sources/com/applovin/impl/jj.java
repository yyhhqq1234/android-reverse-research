package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class jj {
    public static final jj c;
    public static final jj d;
    public static final jj e;
    public static final jj f;
    public static final jj g;
    public final long a;
    public final long b;

    static {
        jj jjVar = new jj(0L, 0L);
        c = jjVar;
        d = new jj(Long.MAX_VALUE, Long.MAX_VALUE);
        e = new jj(Long.MAX_VALUE, 0L);
        f = new jj(0L, Long.MAX_VALUE);
        g = jjVar;
    }

    public jj(long j, long j2) {
        b1.a(j >= 0);
        b1.a(j2 >= 0);
        this.a = j;
        this.b = j2;
    }

    public long a(long j, long j2, long j3) {
        long j4 = this.a;
        if (j4 == 0 && this.b == 0) {
            return j;
        }
        long jD = xp.d(j, j4, Long.MIN_VALUE);
        long jA = xp.a(j, this.b, Long.MAX_VALUE);
        boolean z = jD <= j2 && j2 <= jA;
        boolean z2 = jD <= j3 && j3 <= jA;
        if (z && z2) {
            return Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
        }
        if (z) {
            return j2;
        }
        return z2 ? j3 : jD;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || jj.class != obj.getClass()) {
            return false;
        }
        jj jjVar = (jj) obj;
        return this.a == jjVar.a && this.b == jjVar.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
