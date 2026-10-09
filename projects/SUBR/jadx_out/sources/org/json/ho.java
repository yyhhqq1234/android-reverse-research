package org.json;

/* JADX INFO: loaded from: classes3.dex */
public class ho {
    private boolean a;
    private boolean b;
    private boolean c;
    private lo d;
    private int e;
    private int f;

    public static class b {
        private boolean a = true;
        private boolean b = false;
        private boolean c = false;
        private lo d = null;
        private int e = 0;
        private int f = 0;

        public b a(boolean z) {
            this.a = z;
            return this;
        }

        public b a(boolean z, int i) {
            this.c = z;
            this.f = i;
            return this;
        }

        public b a(boolean z, lo loVar, int i) {
            this.b = z;
            if (loVar == null) {
                loVar = lo.PER_DAY;
            }
            this.d = loVar;
            this.e = i;
            return this;
        }

        public ho a() {
            return new ho(this.a, this.b, this.c, this.d, this.e, this.f);
        }
    }

    private ho(boolean z, boolean z2, boolean z3, lo loVar, int i, int i2) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = loVar;
        this.e = i;
        this.f = i2;
    }

    public lo a() {
        return this.d;
    }

    public int b() {
        return this.e;
    }

    public int c() {
        return this.f;
    }

    public boolean d() {
        return this.b;
    }

    public boolean e() {
        return this.a;
    }

    public boolean f() {
        return this.c;
    }
}
