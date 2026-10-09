package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class gi extends i2 {
    public gi(ho hoVar, long j, long j2) {
        super(new i2.b(), new b(hoVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    private static final class b implements i2.f {
        private final ho a;
        private final ah b;

        private b(ho hoVar) {
            this.a = hoVar;
            this.b = new ah();
        }

        @Override // com.applovin.impl.i2.f
        public void a() {
            this.b.a(xp.f);
        }

        private i2.e a(ah ahVar, long j, long j2) {
            int iD = -1;
            long j3 = -9223372036854775807L;
            int iD2 = -1;
            while (ahVar.a() >= 4) {
                if (gi.b(ahVar.c(), ahVar.d()) != 442) {
                    ahVar.g(1);
                } else {
                    ahVar.g(4);
                    long jC = hi.c(ahVar);
                    if (jC != -9223372036854775807L) {
                        long jB = this.a.b(jC);
                        if (jB > j) {
                            if (j3 == -9223372036854775807L) {
                                return i2.e.a(jB, j2);
                            }
                            return i2.e.a(j2 + ((long) iD2));
                        }
                        if (100000 + jB > j) {
                            return i2.e.a(j2 + ((long) ahVar.d()));
                        }
                        iD2 = ahVar.d();
                        j3 = jB;
                    }
                    a(ahVar);
                    iD = ahVar.d();
                }
            }
            if (j3 != -9223372036854775807L) {
                return i2.e.b(j3, j2 + ((long) iD));
            }
            return i2.e.d;
        }

        @Override // com.applovin.impl.i2.f
        public i2.e a(k8 k8Var, long j) {
            long jF = k8Var.f();
            int iMin = (int) Math.min(20000L, k8Var.a() - jF);
            this.b.d(iMin);
            k8Var.c(this.b.c(), 0, iMin);
            return a(this.b, j, jF);
        }

        private static void a(ah ahVar) {
            int iB;
            int iE = ahVar.e();
            if (ahVar.a() < 10) {
                ahVar.f(iE);
                return;
            }
            ahVar.g(9);
            int iW = ahVar.w() & 7;
            if (ahVar.a() < iW) {
                ahVar.f(iE);
                return;
            }
            ahVar.g(iW);
            if (ahVar.a() >= 4) {
                if (gi.b(ahVar.c(), ahVar.d()) == 443) {
                    ahVar.g(4);
                    int iC = ahVar.C();
                    if (ahVar.a() < iC) {
                        ahVar.f(iE);
                        return;
                    }
                    ahVar.g(iC);
                }
                while (ahVar.a() >= 4 && (iB = gi.b(ahVar.c(), ahVar.d())) != 442 && iB != 441 && (iB >>> 8) == 1) {
                    ahVar.g(4);
                    if (ahVar.a() < 2) {
                        ahVar.f(iE);
                        return;
                    }
                    ahVar.f(Math.min(ahVar.e(), ahVar.d() + ahVar.C()));
                }
                return;
            }
            ahVar.f(iE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
