package com.applovin.impl;

import android.os.Looper;
import com.google.common.primitives.Ints;

/* JADX INFO: loaded from: classes.dex */
public class bj implements qo {
    private boolean A;
    private e9 B;
    private e9 C;
    private int D;
    private boolean E;
    private boolean F;
    private long G;
    private boolean H;
    private final aj a;
    private final a7 d;
    private final z6.a e;
    private final Looper f;
    private d g;
    private e9 h;
    private y6 i;
    private int q;
    private int r;
    private int s;
    private int t;
    private boolean x;
    private final b b = new b();
    private int j = 1000;
    private int[] k = new int[1000];
    private long[] l = new long[1000];
    private long[] o = new long[1000];
    private int[] n = new int[1000];
    private int[] m = new int[1000];
    private qo.a[] p = new qo.a[1000];
    private final qk c = new qk(new q4() { // from class: com.applovin.impl.bj$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.q4
        public final void accept(Object obj) {
            bj.a((bj.c) obj);
        }
    });
    private long u = Long.MIN_VALUE;
    private long v = Long.MIN_VALUE;
    private long w = Long.MIN_VALUE;
    private boolean z = true;
    private boolean y = true;

    static final class b {
        public int a;
        public long b;
        public qo.a c;

        b() {
        }
    }

    public interface d {
        void a(e9 e9Var);
    }

    @Override // com.applovin.impl.qo
    public /* synthetic */ int a(f5 f5Var, int i, boolean z) {
        return a(f5Var, i, z, 0);
    }

    @Override // com.applovin.impl.qo
    public /* synthetic */ void a(ah ahVar, int i) {
        a(ahVar, i, 0);
    }

    protected bj(n0 n0Var, Looper looper, a7 a7Var, z6.a aVar) {
        this.f = looper;
        this.d = a7Var;
        this.e = aVar;
        this.a = new aj(n0Var);
    }

    public void l() {
        b(true);
        m();
    }

    public final void n() {
        b(false);
    }

    public final int g() {
        return this.r + this.q;
    }

    public void k() {
        b();
        m();
    }

    public void j() {
        y6 y6Var = this.i;
        if (y6Var != null && y6Var.b() == 1) {
            throw ((y6.a) b1.a(this.i.getError()));
        }
    }

    public final int e() {
        return this.r + this.t;
    }

    public final synchronized e9 f() {
        return this.z ? null : this.C;
    }

    public final synchronized long c() {
        return this.w;
    }

    public final synchronized long d() {
        return Math.max(this.v, c(this.t));
    }

    public final synchronized boolean i() {
        return this.x;
    }

    private synchronized void o() {
        this.t = 0;
        this.a.c();
    }

    private void m() {
        y6 y6Var = this.i;
        if (y6Var != null) {
            y6Var.a(this.e);
            this.i = null;
            this.h = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void f(int i) {
        boolean z;
        if (i >= 0) {
            try {
                if (this.t + i <= this.q) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z = false;
        }
        b1.a(z);
        this.t += i;
    }

    private synchronized boolean a(long j) {
        if (this.q == 0) {
            return j > this.v;
        }
        if (d() >= j) {
            return false;
        }
        b(this.r + b(j));
        return true;
    }

    private boolean h() {
        return this.t != this.q;
    }

    private int b(long j) {
        int i = this.q;
        int iD = d(i - 1);
        while (i > this.t && this.o[iD] >= j) {
            i--;
            iD--;
            if (iD == -1) {
                iD = this.j - 1;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        public final e9 a;
        public final a7.b b;

        private c(e9 e9Var, a7.b bVar) {
            this.a = e9Var;
            this.b = bVar;
        }
    }

    private boolean e(int i) {
        y6 y6Var = this.i;
        return y6Var == null || y6Var.b() == 4 || ((this.n[i] & Ints.MAX_POWER_OF_TWO) == 0 && this.i.c());
    }

    private long c(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int iD = d(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.o[iD]);
            if ((this.n[iD] & 1) != 0) {
                break;
            }
            iD--;
            if (iD == -1) {
                iD = this.j - 1;
            }
        }
        return jMax;
    }

    private int d(int i) {
        int i2 = this.s + i;
        int i3 = this.j;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final void b(long j, boolean z, boolean z2) {
        this.a.a(a(j, z, z2));
    }

    public final void c(long j) {
        this.u = j;
    }

    private synchronized void a(long j, int i, long j2, int i2, qo.a aVar) {
        a7.b bVarB;
        int i3 = this.q;
        if (i3 > 0) {
            int iD = d(i3 - 1);
            b1.a(this.l[iD] + ((long) this.m[iD]) <= j2);
        }
        this.x = (536870912 & i) != 0;
        this.w = Math.max(this.w, j);
        int iD2 = d(this.q);
        this.o[iD2] = j;
        this.l[iD2] = j2;
        this.m[iD2] = i2;
        this.n[iD2] = i;
        this.p[iD2] = aVar;
        this.k[iD2] = this.D;
        if (this.c.c() || !((c) this.c.b()).a.equals(this.C)) {
            a7 a7Var = this.d;
            if (a7Var != null) {
                bVarB = a7Var.b((Looper) b1.a(this.f), this.e, this.C);
            } else {
                bVarB = a7.b.a;
            }
            this.c.a(g(), new c((e9) b1.a(this.C), bVarB));
        }
        int i4 = this.q + 1;
        this.q = i4;
        int i5 = this.j;
        if (i4 == i5) {
            int i6 = i5 + 1000;
            int[] iArr = new int[i6];
            long[] jArr = new long[i6];
            long[] jArr2 = new long[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            qo.a[] aVarArr = new qo.a[i6];
            int i7 = this.s;
            int i8 = i5 - i7;
            System.arraycopy(this.l, i7, jArr, 0, i8);
            System.arraycopy(this.o, this.s, jArr2, 0, i8);
            System.arraycopy(this.n, this.s, iArr2, 0, i8);
            System.arraycopy(this.m, this.s, iArr3, 0, i8);
            System.arraycopy(this.p, this.s, aVarArr, 0, i8);
            System.arraycopy(this.k, this.s, iArr, 0, i8);
            int i9 = this.s;
            System.arraycopy(this.l, 0, jArr, i8, i9);
            System.arraycopy(this.o, 0, jArr2, i8, i9);
            System.arraycopy(this.n, 0, iArr2, i8, i9);
            System.arraycopy(this.m, 0, iArr3, i8, i9);
            System.arraycopy(this.p, 0, aVarArr, i8, i9);
            System.arraycopy(this.k, 0, iArr, i8, i9);
            this.l = jArr;
            this.o = jArr2;
            this.n = iArr2;
            this.m = iArr3;
            this.p = aVarArr;
            this.k = iArr;
            this.s = 0;
            this.j = i6;
        }
    }

    public final void b() {
        this.a.a(a());
    }

    private synchronized boolean c(e9 e9Var) {
        this.z = false;
        if (xp.a(e9Var, this.C)) {
            return false;
        }
        if (!this.c.c() && ((c) this.c.b()).a.equals(e9Var)) {
            this.C = ((c) this.c.b()).a;
        } else {
            this.C = e9Var;
        }
        e9 e9Var2 = this.C;
        this.E = hf.a(e9Var2.m, e9Var2.j);
        this.F = false;
        return true;
    }

    private synchronized long a(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.q;
        if (i2 != 0) {
            long[] jArr = this.o;
            int i3 = this.s;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.t) != i2) {
                    i2 = i + 1;
                }
                int iA = a(i3, i2, j, z);
                if (iA == -1) {
                    return -1L;
                }
                return a(iA);
            }
        }
        return -1L;
    }

    private long b(int i) {
        int iG = g() - i;
        boolean z = false;
        b1.a(iG >= 0 && iG <= this.q - this.t);
        int i2 = this.q - iG;
        this.q = i2;
        this.w = Math.max(this.v, c(i2));
        if (iG == 0 && this.x) {
            z = true;
        }
        this.x = z;
        this.c.a(i);
        int i3 = this.q;
        if (i3 == 0) {
            return 0L;
        }
        int iD = d(i3 - 1);
        return this.l[iD] + ((long) this.m[iD]);
    }

    private synchronized long a() {
        int i = this.q;
        if (i == 0) {
            return -1L;
        }
        return a(i);
    }

    protected e9 b(e9 e9Var) {
        return (this.G == 0 || e9Var.q == Long.MAX_VALUE) ? e9Var : e9Var.a().a(e9Var.q + this.G).a();
    }

    public void b(boolean z) {
        this.a.b();
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.y = true;
        this.u = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = Long.MIN_VALUE;
        this.x = false;
        this.c.a();
        if (z) {
            this.B = null;
            this.C = null;
            this.z = true;
        }
    }

    private long a(int i) {
        this.v = Math.max(this.v, c(i));
        this.q -= i;
        int i2 = this.r + i;
        this.r = i2;
        int i3 = this.s + i;
        this.s = i3;
        int i4 = this.j;
        if (i3 >= i4) {
            this.s = i3 - i4;
        }
        int i5 = this.t - i;
        this.t = i5;
        if (i5 < 0) {
            this.t = 0;
        }
        this.c.b(i2);
        if (this.q == 0) {
            int i6 = this.s;
            if (i6 == 0) {
                i6 = this.j;
            }
            int i7 = i6 - 1;
            return this.l[i7] + ((long) this.m[i7]);
        }
        return this.l[this.s];
    }

    public final synchronized boolean b(long j, boolean z) {
        o();
        int iD = d(this.t);
        if (h() && j >= this.o[iD] && (j <= this.w || z)) {
            int iA = a(iD, this.q - this.t, j, true);
            if (iA == -1) {
                return false;
            }
            this.u = j;
            this.t += iA;
            return true;
        }
        return false;
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.o[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.n[i] & 1) != 0) {
                i3 = i4;
                if (j2 == j) {
                    break;
                }
            }
            i++;
            if (i == this.j) {
                i = 0;
            }
        }
        return i3;
    }

    @Override // com.applovin.impl.qo
    public final void a(e9 e9Var) {
        e9 e9VarB = b(e9Var);
        this.A = false;
        this.B = e9Var;
        boolean zC = c(e9VarB);
        d dVar = this.g;
        if (dVar == null || !zC) {
            return;
        }
        dVar.a(e9VarB);
    }

    public final synchronized int a(long j, boolean z) {
        int iD = d(this.t);
        if (h() && j >= this.o[iD]) {
            if (j > this.w && z) {
                return this.q - this.t;
            }
            int iA = a(iD, this.q - this.t, j, true);
            if (iA == -1) {
                return 0;
            }
            return iA;
        }
        return 0;
    }

    public synchronized boolean a(boolean z) {
        e9 e9Var;
        boolean z2 = true;
        if (!h()) {
            if (!z && !this.x && ((e9Var = this.C) == null || e9Var == this.h)) {
                z2 = false;
            }
            return z2;
        }
        if (((c) this.c.c(e())).a != this.h) {
            return true;
        }
        return e(d(this.t));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(c cVar) {
        cVar.b.a();
    }

    private void a(e9 e9Var, f9 f9Var) {
        e9 e9Var2 = this.h;
        boolean z = e9Var2 == null;
        x6 x6Var = z ? null : e9Var2.p;
        this.h = e9Var;
        x6 x6Var2 = e9Var.p;
        a7 a7Var = this.d;
        f9Var.b = a7Var != null ? e9Var.a(a7Var.a(e9Var)) : e9Var;
        f9Var.a = this.i;
        if (this.d == null) {
            return;
        }
        if (z || !xp.a(x6Var, x6Var2)) {
            y6 y6Var = this.i;
            y6 y6VarA = this.d.a((Looper) b1.a(this.f), this.e, e9Var);
            this.i = y6VarA;
            f9Var.a = y6VarA;
            if (y6Var != null) {
                y6Var.a(this.e);
            }
        }
    }

    private synchronized int a(f9 f9Var, o5 o5Var, boolean z, boolean z2, b bVar) {
        o5Var.d = false;
        if (!h()) {
            if (!z2 && !this.x) {
                e9 e9Var = this.C;
                if (e9Var == null || (!z && e9Var == this.h)) {
                    return -3;
                }
                a((e9) b1.a(e9Var), f9Var);
                return -5;
            }
            o5Var.e(4);
            return -4;
        }
        e9 e9Var2 = ((c) this.c.c(e())).a;
        if (!z && e9Var2 == this.h) {
            int iD = d(this.t);
            if (!e(iD)) {
                o5Var.d = true;
                return -3;
            }
            o5Var.e(this.n[iD]);
            long j = this.o[iD];
            o5Var.f = j;
            if (j < this.u) {
                o5Var.b(Integer.MIN_VALUE);
            }
            bVar.a = this.m[iD];
            bVar.b = this.l[iD];
            bVar.c = this.p[iD];
            return -4;
        }
        a(e9Var2, f9Var);
        return -5;
    }

    public int a(f9 f9Var, o5 o5Var, int i, boolean z) {
        int iA = a(f9Var, o5Var, (i & 2) != 0, z, this.b);
        if (iA == -4 && !o5Var.e()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z2) {
                    this.a.a(o5Var, this.b);
                } else {
                    this.a.b(o5Var, this.b);
                }
            }
            if (!z2) {
                this.t++;
            }
        }
        return iA;
    }

    @Override // com.applovin.impl.qo
    public final int a(f5 f5Var, int i, boolean z, int i2) {
        return this.a.a(f5Var, i, z);
    }

    @Override // com.applovin.impl.qo
    public final void a(ah ahVar, int i, int i2) {
        this.a.a(ahVar, i);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    @Override // com.applovin.impl.qo
    public void a(long j, int i, int i2, int i3, qo.a aVar) {
        int i4;
        if (this.A) {
            a((e9) b1.b(this.B));
        }
        int i5 = i & 1;
        boolean z = i5 != 0;
        if (this.y) {
            if (!z) {
                return;
            } else {
                this.y = false;
            }
        }
        long j2 = this.G + j;
        if (!this.E) {
            i4 = i;
        } else {
            if (j2 < this.u) {
                return;
            }
            if (i5 == 0) {
                if (!this.F) {
                    oc.d("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.C);
                    this.F = true;
                }
                i4 = i | 1;
            } else {
                i4 = i;
            }
        }
        if (this.H) {
            if (!z || !a(j2)) {
                return;
            } else {
                this.H = false;
            }
        }
        a(j2, i4, (this.a.a() - ((long) i2)) - ((long) i3), i2, aVar);
    }

    public final void a(d dVar) {
        this.g = dVar;
    }

    public static bj a(n0 n0Var, Looper looper, a7 a7Var, z6.a aVar) {
        return new bj(n0Var, (Looper) b1.a(looper), (a7) b1.a(a7Var), (z6.a) b1.a(aVar));
    }
}
