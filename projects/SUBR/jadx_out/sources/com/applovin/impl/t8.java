package com.applovin.impl;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class t8 extends i2 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t8(final z8 z8Var, int i, long j, long j2) {
        super(new i2.d() { // from class: com.applovin.impl.t8$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.i2.d
            public final long a(long j3) {
                return z8Var.a(j3);
            }
        }, new b(z8Var, i), z8Var.b(), 0L, z8Var.j, j, j2, z8Var.a(), Math.max(6, z8Var.c));
        Objects.requireNonNull(z8Var);
    }

    private static final class b implements i2.f {
        private final z8 a;
        private final int b;
        private final v8.a c;

        @Override // com.applovin.impl.i2.f
        public /* synthetic */ void a() {
            i2.f.CC.$default$a(this);
        }

        private b(z8 z8Var, int i) {
            this.a = z8Var;
            this.b = i;
            this.c = new v8.a();
        }

        private long a(k8 k8Var) {
            while (k8Var.d() < k8Var.a() - 6 && !v8.a(k8Var, this.a, this.b, this.c)) {
                k8Var.c(1);
            }
            if (k8Var.d() >= k8Var.a() - 6) {
                k8Var.c((int) (k8Var.a() - k8Var.d()));
                return this.a.j;
            }
            return this.c.a;
        }

        @Override // com.applovin.impl.i2.f
        public i2.e a(k8 k8Var, long j) {
            long jF = k8Var.f();
            long jA = a(k8Var);
            long jD = k8Var.d();
            k8Var.c(Math.max(6, this.a.c));
            long jA2 = a(k8Var);
            long jD2 = k8Var.d();
            if (jA <= j && jA2 > j) {
                return i2.e.a(jD);
            }
            if (jA2 <= j) {
                return i2.e.b(jA2, jD2);
            }
            return i2.e.a(jA, jF);
        }
    }
}
