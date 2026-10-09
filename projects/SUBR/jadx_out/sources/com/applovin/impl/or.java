package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class or implements ij {
    private final mr a;
    private final int b;
    private final long c;
    private final long d;
    private final long e;

    @Override // com.applovin.impl.ij
    public boolean b() {
        return true;
    }

    public or(mr mrVar, int i, long j, long j2) {
        this.a = mrVar;
        this.b = i;
        this.c = j;
        long j3 = (j2 - j) / ((long) mrVar.e);
        this.d = j3;
        this.e = c(j3);
    }

    @Override // com.applovin.impl.ij
    public long d() {
        return this.e;
    }

    @Override // com.applovin.impl.ij
    public ij.a b(long j) {
        long jB = xp.b((((long) this.a.c) * j) / (((long) this.b) * 1000000), 0L, this.d - 1);
        long j2 = this.c + (((long) this.a.e) * jB);
        long jC = c(jB);
        kj kjVar = new kj(jC, j2);
        if (jC < j && jB != this.d - 1) {
            long j3 = jB + 1;
            return new ij.a(kjVar, new kj(c(j3), this.c + (((long) this.a.e) * j3)));
        }
        return new ij.a(kjVar);
    }

    private long c(long j) {
        return xp.c(j * ((long) this.b), 1000000L, this.a.c);
    }
}
