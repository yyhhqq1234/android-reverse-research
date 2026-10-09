package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class ap extends i2 {
    public ap(ho hoVar, long j, long j2, int i, int i2) {
        super(new i2.b(), new a(i, hoVar, i2), j, 0L, j + 1, 0L, j2, 188L, 940);
    }

    private static final class a implements i2.f {
        private final ho a;
        private final ah b = new ah();
        private final int c;
        private final int d;

        public a(int i, ho hoVar, int i2) {
            this.c = i;
            this.a = hoVar;
            this.d = i2;
        }

        @Override // com.applovin.impl.i2.f
        public void a() {
            this.b.a(xp.f);
        }

        private i2.e a(ah ahVar, long j, long j2) {
            int iA;
            int iA2;
            int iE = ahVar.e();
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (ahVar.a() >= 188 && (iA2 = (iA = ep.a(ahVar.c(), ahVar.d(), iE)) + 188) <= iE) {
                long jA = ep.a(ahVar, iA, this.c);
                if (jA != -9223372036854775807L) {
                    long jB = this.a.b(jA);
                    if (jB > j) {
                        if (j5 == -9223372036854775807L) {
                            return i2.e.a(jB, j2);
                        }
                        return i2.e.a(j2 + j4);
                    }
                    if (100000 + jB > j) {
                        return i2.e.a(j2 + ((long) iA));
                    }
                    j4 = iA;
                    j5 = jB;
                }
                ahVar.f(iA2);
                j3 = iA2;
            }
            if (j5 != -9223372036854775807L) {
                return i2.e.b(j5, j2 + j3);
            }
            return i2.e.d;
        }

        @Override // com.applovin.impl.i2.f
        public i2.e a(k8 k8Var, long j) {
            long jF = k8Var.f();
            int iMin = (int) Math.min(this.d, k8Var.a() - jF);
            this.b.d(iMin);
            k8Var.c(this.b.c(), 0, iMin);
            return a(this.b, j, jF);
        }
    }
}
