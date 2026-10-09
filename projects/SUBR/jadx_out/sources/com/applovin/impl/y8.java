package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class y8 implements ij {
    private final z8 a;
    private final long b;

    @Override // com.applovin.impl.ij
    public boolean b() {
        return true;
    }

    public y8(z8 z8Var, long j) {
        this.a = z8Var;
        this.b = j;
    }

    @Override // com.applovin.impl.ij
    public long d() {
        return this.a.b();
    }

    @Override // com.applovin.impl.ij
    public ij.a b(long j) {
        b1.b(this.a.k);
        z8 z8Var = this.a;
        z8.a aVar = z8Var.k;
        long[] jArr = aVar.a;
        long[] jArr2 = aVar.b;
        int iB = xp.b(jArr, z8Var.a(j), true, false);
        kj kjVarA = a(iB == -1 ? 0L : jArr[iB], iB != -1 ? jArr2[iB] : 0L);
        if (kjVarA.a != j && iB != jArr.length - 1) {
            int i = iB + 1;
            return new ij.a(kjVarA, a(jArr[i], jArr2[i]));
        }
        return new ij.a(kjVarA);
    }

    private kj a(long j, long j2) {
        return new kj((j * 1000000) / ((long) this.a.e), this.b + j2);
    }
}
