package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class kj {
    public static final kj c = new kj(0, 0);
    public final long a;
    public final long b;

    public String toString() {
        return "[timeUs=" + this.a + ", position=" + this.b + com.ironsource.y8.i.e;
    }

    public kj(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || kj.class != obj.getClass()) {
            return false;
        }
        kj kjVar = (kj) obj;
        return this.a == kjVar.a && this.b == kjVar.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
