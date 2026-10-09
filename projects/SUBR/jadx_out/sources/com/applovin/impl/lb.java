package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class lb implements ij {
    private final long[] a;
    private final long[] b;
    private final long c;
    private final boolean d;

    public lb(long[] jArr, long[] jArr2, long j) {
        b1.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.d = z;
        if (z && jArr2[0] > 0) {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.a = jArr3;
            long[] jArr4 = new long[i];
            this.b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        } else {
            this.a = jArr;
            this.b = jArr2;
        }
        this.c = j;
    }

    @Override // com.applovin.impl.ij
    public long d() {
        return this.c;
    }

    @Override // com.applovin.impl.ij
    public ij.a b(long j) {
        if (!this.d) {
            return new ij.a(kj.c);
        }
        int iB = xp.b(this.b, j, true, true);
        kj kjVar = new kj(this.b[iB], this.a[iB]);
        if (kjVar.a != j && iB != this.b.length - 1) {
            int i = iB + 1;
            return new ij.a(kjVar, new kj(this.b[i], this.a[i]));
        }
        return new ij.a(kjVar);
    }

    @Override // com.applovin.impl.ij
    public boolean b() {
        return this.d;
    }
}
