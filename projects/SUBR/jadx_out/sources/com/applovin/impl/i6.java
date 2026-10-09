package com.applovin.impl;

import androidx.work.WorkRequest;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class i6 implements jg {
    private final ig a;
    private final long b;
    private final long c;
    private final gl d;
    private int e;
    private long f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;

    public i6(gl glVar, long j, long j2, long j3, long j4, boolean z) {
        b1.a(j >= 0 && j2 > j);
        this.d = glVar;
        this.b = j;
        this.c = j2;
        if (j3 != j2 - j && !z) {
            this.e = 0;
        } else {
            this.f = j4;
            this.e = 4;
        }
        this.a = new ig();
    }

    @Override // com.applovin.impl.jg
    public long a(k8 k8Var) throws IOException {
        int i = this.e;
        if (i == 0) {
            long jF = k8Var.f();
            this.g = jF;
            this.e = 1;
            long j = this.c - 65307;
            if (j > jF) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long jB = b(k8Var);
                if (jB != -1) {
                    return jB;
                }
                this.e = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            d(k8Var);
            this.e = 4;
            return -(this.k + 2);
        }
        this.f = c(k8Var);
        this.e = 4;
        return this.g;
    }

    @Override // com.applovin.impl.jg
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a() {
        if (this.f != 0) {
            return new b();
        }
        return null;
    }

    private void d(k8 k8Var) throws ch {
        while (true) {
            this.a.a(k8Var);
            this.a.a(k8Var, false);
            ig igVar = this.a;
            if (igVar.c > this.h) {
                k8Var.b();
                return;
            } else {
                k8Var.a(igVar.h + igVar.i);
                this.i = k8Var.f();
                this.k = this.a.c;
            }
        }
    }

    private final class b implements ij {
        @Override // com.applovin.impl.ij
        public boolean b() {
            return true;
        }

        private b() {
        }

        @Override // com.applovin.impl.ij
        public ij.a b(long j) {
            return new ij.a(new kj(j, xp.b((i6.this.b + ((i6.this.d.b(j) * (i6.this.c - i6.this.b)) / i6.this.f)) - WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, i6.this.b, i6.this.c - 1)));
        }

        @Override // com.applovin.impl.ij
        public long d() {
            return i6.this.d.a(i6.this.f);
        }
    }

    long c(k8 k8Var) throws ch, EOFException {
        this.a.a();
        if (this.a.a(k8Var)) {
            this.a.a(k8Var, false);
            ig igVar = this.a;
            k8Var.a(igVar.h + igVar.i);
            long j = this.a.c;
            while (true) {
                ig igVar2 = this.a;
                if ((igVar2.b & 4) == 4 || !igVar2.a(k8Var) || k8Var.f() >= this.c || !this.a.a(k8Var, true)) {
                    break;
                }
                ig igVar3 = this.a;
                if (!m8.a(k8Var, igVar3.h + igVar3.i)) {
                    break;
                }
                j = this.a.c;
            }
            return j;
        }
        throw new EOFException();
    }

    private long b(k8 k8Var) throws IOException {
        if (this.i == this.j) {
            return -1L;
        }
        long jF = k8Var.f();
        if (!this.a.a(k8Var, this.j)) {
            long j = this.i;
            if (j != jF) {
                return j;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.a.a(k8Var, false);
        k8Var.b();
        long j2 = this.h;
        ig igVar = this.a;
        long j3 = igVar.c;
        long j4 = j2 - j3;
        int i = igVar.h + igVar.i;
        if (0 <= j4 && j4 < 72000) {
            return -1L;
        }
        if (j4 < 0) {
            this.j = jF;
            this.l = j3;
        } else {
            this.i = k8Var.f() + ((long) i);
            this.k = this.a.c;
        }
        long j5 = this.j;
        long j6 = this.i;
        if (j5 - j6 < 100000) {
            this.j = j6;
            return j6;
        }
        long jF2 = k8Var.f() - (((long) i) * (j4 <= 0 ? 2L : 1L));
        long j7 = this.j;
        long j8 = this.i;
        return xp.b(jF2 + ((j4 * (j7 - j8)) / (this.l - this.k)), j8, j7 - 1);
    }

    @Override // com.applovin.impl.jg
    public void a(long j) {
        this.h = xp.b(j, 0L, this.f - 1);
        this.e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }
}
