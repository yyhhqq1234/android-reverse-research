package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class mb implements lj {
    private final long a;
    private final qc b;
    private final qc c;
    private long d;

    @Override // com.applovin.impl.ij
    public boolean b() {
        return true;
    }

    public mb(long j, long j2, long j3) {
        this.d = j;
        this.a = j3;
        qc qcVar = new qc();
        this.b = qcVar;
        qc qcVar2 = new qc();
        this.c = qcVar2;
        qcVar.a(0L);
        qcVar2.a(j2);
    }

    @Override // com.applovin.impl.lj
    public long a(long j) {
        return this.b.a(xp.a(this.c, j, true, true));
    }

    @Override // com.applovin.impl.lj
    public long c() {
        return this.a;
    }

    @Override // com.applovin.impl.ij
    public long d() {
        return this.d;
    }

    @Override // com.applovin.impl.ij
    public ij.a b(long j) {
        int iA = xp.a(this.b, j, true, true);
        kj kjVar = new kj(this.b.a(iA), this.c.a(iA));
        if (kjVar.a != j && iA != this.b.a() - 1) {
            int i = iA + 1;
            return new ij.a(kjVar, new kj(this.b.a(i), this.c.a(i)));
        }
        return new ij.a(kjVar);
    }

    public void a(long j, long j2) {
        if (c(j)) {
            return;
        }
        this.b.a(j);
        this.c.a(j2);
    }

    public boolean c(long j) {
        qc qcVar = this.b;
        return j - qcVar.a(qcVar.a() - 1) < 100000;
    }

    void d(long j) {
        this.d = j;
    }
}
