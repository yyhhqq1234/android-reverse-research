package com.applovin.impl;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class x8 extends gl {
    private z8 n;
    private a o;

    x8() {
    }

    public static boolean c(ah ahVar) {
        return ahVar.a() >= 5 && ahVar.w() == 127 && ahVar.y() == 1179402563;
    }

    private static boolean a(byte[] bArr) {
        return bArr[0] == -1;
    }

    private int b(ah ahVar) {
        int i = (ahVar.c()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            ahVar.g(4);
            ahVar.D();
        }
        int iB = v8.b(ahVar, i);
        ahVar.f(0);
        return iB;
    }

    private static final class a implements jg {
        private z8 a;
        private z8.a b;
        private long c = -1;
        private long d = -1;

        public a(z8 z8Var, z8.a aVar) {
            this.a = z8Var;
            this.b = aVar;
        }

        public void b(long j) {
            this.c = j;
        }

        @Override // com.applovin.impl.jg
        public ij a() {
            b1.b(this.c != -1);
            return new y8(this.a, this.c);
        }

        @Override // com.applovin.impl.jg
        public long a(k8 k8Var) {
            long j = this.d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.d = -1L;
            return j2;
        }

        @Override // com.applovin.impl.jg
        public void a(long j) {
            long[] jArr = this.b.a;
            this.d = jArr[xp.b(jArr, j, true, true)];
        }
    }

    @Override // com.applovin.impl.gl
    protected long a(ah ahVar) {
        if (a(ahVar.c())) {
            return b(ahVar);
        }
        return -1L;
    }

    @Override // com.applovin.impl.gl
    protected boolean a(ah ahVar, long j, gl.b bVar) {
        byte[] bArrC = ahVar.c();
        z8 z8Var = this.n;
        if (z8Var == null) {
            z8 z8Var2 = new z8(bArrC, 17);
            this.n = z8Var2;
            bVar.a = z8Var2.a(Arrays.copyOfRange(bArrC, 9, ahVar.e()), (af) null);
            return true;
        }
        if ((bArrC[0] & 127) == 3) {
            z8.a aVarA = w8.a(ahVar);
            z8 z8VarA = z8Var.a(aVarA);
            this.n = z8VarA;
            this.o = new a(z8VarA, aVarA);
            return true;
        }
        if (!a(bArrC)) {
            return true;
        }
        a aVar = this.o;
        if (aVar != null) {
            aVar.b(j);
            bVar.b = this.o;
        }
        b1.a(bVar.a);
        return false;
    }

    @Override // com.applovin.impl.gl
    protected void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }
}
