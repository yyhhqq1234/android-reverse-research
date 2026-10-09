package com.applovin.impl;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class q8 {
    private boolean c;
    private boolean d;
    private int f;
    private a a = new a();
    private a b = new a();
    private long e = -9223372036854775807L;

    public void f() {
        this.a.e();
        this.b.e();
        this.c = false;
        this.e = -9223372036854775807L;
        this.f = 0;
    }

    public boolean e() {
        return this.a.d();
    }

    public int c() {
        return this.f;
    }

    public long d() {
        if (e()) {
            return this.a.b();
        }
        return -9223372036854775807L;
    }

    public long a() {
        if (e()) {
            return this.a.a();
        }
        return -9223372036854775807L;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.a.a());
        }
        return -1.0f;
    }

    private static final class a {
        private long a;
        private long b;
        private long c;
        private long d;
        private long e;
        private long f;
        private final boolean[] g = new boolean[15];
        private int h;

        public void e() {
            this.d = 0L;
            this.e = 0L;
            this.f = 0L;
            this.h = 0;
            Arrays.fill(this.g, false);
        }

        public boolean d() {
            return this.d > 15 && this.h == 0;
        }

        public boolean c() {
            long j = this.d;
            if (j == 0) {
                return false;
            }
            return this.g[a(j - 1)];
        }

        public long b() {
            return this.f;
        }

        public long a() {
            long j = this.e;
            if (j == 0) {
                return 0L;
            }
            return this.f / j;
        }

        public void b(long j) {
            long j2 = this.d;
            if (j2 == 0) {
                this.a = j;
            } else if (j2 == 1) {
                long j3 = j - this.a;
                this.b = j3;
                this.f = j3;
                this.e = 1L;
            } else {
                long j4 = j - this.c;
                int iA = a(j2);
                if (Math.abs(j4 - this.b) <= 1000000) {
                    this.e++;
                    this.f += j4;
                    boolean[] zArr = this.g;
                    if (zArr[iA]) {
                        zArr[iA] = false;
                        this.h--;
                    }
                } else {
                    boolean[] zArr2 = this.g;
                    if (!zArr2[iA]) {
                        zArr2[iA] = true;
                        this.h++;
                    }
                }
            }
            this.d++;
            this.c = j;
        }

        private static int a(long j) {
            return (int) (j % 15);
        }
    }

    public void a(long j) {
        this.a.b(j);
        if (this.a.d() && !this.d) {
            this.c = false;
        } else if (this.e != -9223372036854775807L) {
            if (!this.c || this.b.c()) {
                this.b.e();
                this.b.b(this.e);
            }
            this.c = true;
            this.b.b(j);
        }
        if (this.c && this.b.d()) {
            a aVar = this.a;
            this.a = this.b;
            this.b = aVar;
            this.c = false;
            this.d = false;
        }
        this.e = j;
        this.f = this.a.d() ? 0 : this.f + 1;
    }
}
