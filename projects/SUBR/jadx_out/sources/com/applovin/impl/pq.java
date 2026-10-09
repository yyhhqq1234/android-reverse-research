package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class pq implements lj {
    private final long[] a;
    private final long[] b;
    private final long c;
    private final long d;

    @Override // com.applovin.impl.ij
    public boolean b() {
        return true;
    }

    public static pq a(long j, long j2, sf.a aVar, ah ahVar) {
        int iW;
        ahVar.g(10);
        int iJ = ahVar.j();
        if (iJ <= 0) {
            return null;
        }
        int i = aVar.d;
        long jC = xp.c(iJ, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i);
        int iC = ahVar.C();
        int iC2 = ahVar.C();
        int iC3 = ahVar.C();
        ahVar.g(2);
        long j3 = j2 + ((long) aVar.c);
        long[] jArr = new long[iC];
        long[] jArr2 = new long[iC];
        int i2 = 0;
        long j4 = j2;
        while (i2 < iC) {
            int i3 = iC2;
            long j5 = j3;
            jArr[i2] = (((long) i2) * jC) / ((long) iC);
            jArr2[i2] = Math.max(j4, j5);
            if (iC3 == 1) {
                iW = ahVar.w();
            } else if (iC3 == 2) {
                iW = ahVar.C();
            } else if (iC3 == 3) {
                iW = ahVar.z();
            } else {
                if (iC3 != 4) {
                    return null;
                }
                iW = ahVar.A();
            }
            j4 += (long) (iW * i3);
            i2++;
            j3 = j5;
            iC2 = i3;
        }
        if (j != -1 && j != j4) {
            oc.d("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new pq(jArr, jArr2, jC, j4);
    }

    private pq(long[] jArr, long[] jArr2, long j, long j2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
        this.d = j2;
    }

    @Override // com.applovin.impl.ij
    public ij.a b(long j) {
        int iB = xp.b(this.a, j, true, true);
        kj kjVar = new kj(this.a[iB], this.b[iB]);
        if (kjVar.a < j && iB != this.a.length - 1) {
            int i = iB + 1;
            return new ij.a(kjVar, new kj(this.a[i], this.b[i]));
        }
        return new ij.a(kjVar);
    }

    @Override // com.applovin.impl.ij
    public long d() {
        return this.c;
    }

    @Override // com.applovin.impl.lj
    public long c() {
        return this.d;
    }

    @Override // com.applovin.impl.lj
    public long a(long j) {
        return this.a[xp.b(this.b, j, true, true)];
    }
}
