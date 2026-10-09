package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public abstract class e2 implements qi, ri {
    private final int a;
    private si c;
    private int d;
    private int f;
    private cj g;
    private e9[] h;
    private long i;
    private long j;
    private boolean l;
    private boolean m;
    private final f9 b = new f9();
    private long k = Long.MIN_VALUE;

    @Override // com.applovin.impl.qi
    public /* synthetic */ void a(float f, float f2) {
        qi.CC.$default$a(this, f, f2);
    }

    @Override // com.applovin.impl.rh.b
    public void a(int i, Object obj) {
    }

    protected abstract void a(long j, boolean z);

    protected void a(boolean z, boolean z2) {
    }

    protected abstract void a(e9[] e9VarArr, long j, long j2);

    @Override // com.applovin.impl.qi
    public fd l() {
        return null;
    }

    @Override // com.applovin.impl.ri
    public int m() {
        return 0;
    }

    @Override // com.applovin.impl.qi
    public final ri n() {
        return this;
    }

    protected abstract void v();

    protected void w() {
    }

    protected void x() {
    }

    protected void y() {
    }

    public e2(int i) {
        this.a = i;
    }

    @Override // com.applovin.impl.qi, com.applovin.impl.ri
    public final int e() {
        return this.a;
    }

    @Override // com.applovin.impl.qi
    public final int b() {
        return this.f;
    }

    @Override // com.applovin.impl.qi
    public final void start() {
        b1.b(this.f == 1);
        this.f = 2;
        x();
    }

    @Override // com.applovin.impl.qi
    public final cj o() {
        return this.g;
    }

    @Override // com.applovin.impl.qi
    public final boolean j() {
        return this.k == Long.MIN_VALUE;
    }

    @Override // com.applovin.impl.qi
    public final long i() {
        return this.k;
    }

    @Override // com.applovin.impl.qi
    public final void g() {
        this.l = true;
    }

    @Override // com.applovin.impl.qi
    public final boolean k() {
        return this.l;
    }

    @Override // com.applovin.impl.qi
    public final void b(int i) {
        this.d = i;
    }

    @Override // com.applovin.impl.qi
    public final void h() {
        ((cj) b1.a(this.g)).a();
    }

    @Override // com.applovin.impl.qi
    public final void stop() {
        b1.b(this.f == 2);
        this.f = 1;
        y();
    }

    @Override // com.applovin.impl.qi
    public final void f() {
        b1.b(this.f == 1);
        this.b.a();
        this.f = 0;
        this.g = null;
        this.h = null;
        this.l = false;
        v();
    }

    @Override // com.applovin.impl.qi
    public final void reset() {
        b1.b(this.f == 0);
        this.b.a();
        w();
    }

    protected final f9 r() {
        this.b.a();
        return this.b;
    }

    protected final e9[] t() {
        return (e9[]) b1.a(this.h);
    }

    protected final si q() {
        return (si) b1.a(this.c);
    }

    protected final int s() {
        return this.d;
    }

    protected final z7 a(Throwable th, e9 e9Var, int i) {
        return a(th, e9Var, false, i);
    }

    protected final boolean u() {
        return j() ? this.l : ((cj) b1.a(this.g)).d();
    }

    protected int b(long j) {
        return ((cj) b1.a(this.g)).a(j - this.i);
    }

    protected final z7 a(Throwable th, e9 e9Var, boolean z, int i) {
        int i2;
        if (e9Var == null || this.m) {
            i2 = 4;
        } else {
            this.m = true;
            try {
                int iD = ri.CC.d(a(e9Var));
                this.m = false;
                i2 = iD;
            } catch (z7 unused) {
                this.m = false;
                i2 = 4;
            } catch (Throwable th2) {
                this.m = false;
                throw th2;
            }
        }
        return z7.a(th, getName(), s(), e9Var, i2, z, i);
    }

    @Override // com.applovin.impl.qi
    public final void a(si siVar, e9[] e9VarArr, cj cjVar, long j, boolean z, boolean z2, long j2, long j3) {
        b1.b(this.f == 0);
        this.c = siVar;
        this.f = 1;
        this.j = j;
        a(z, z2);
        a(e9VarArr, cjVar, j2, j3);
        a(j, z);
    }

    protected final int a(f9 f9Var, o5 o5Var, int i) {
        int iA = ((cj) b1.a(this.g)).a(f9Var, o5Var, i);
        if (iA == -4) {
            if (o5Var.e()) {
                this.k = Long.MIN_VALUE;
                return this.l ? -4 : -3;
            }
            long j = o5Var.f + this.i;
            o5Var.f = j;
            this.k = Math.max(this.k, j);
        } else if (iA == -5) {
            e9 e9Var = (e9) b1.a(f9Var.b);
            if (e9Var.q != Long.MAX_VALUE) {
                f9Var.b = e9Var.a().a(e9Var.q + this.i).a();
            }
        }
        return iA;
    }

    @Override // com.applovin.impl.qi
    public final void a(e9[] e9VarArr, cj cjVar, long j, long j2) {
        b1.b(!this.l);
        this.g = cjVar;
        if (this.k == Long.MIN_VALUE) {
            this.k = j;
        }
        this.h = e9VarArr;
        this.i = j2;
        a(e9VarArr, j, j2);
    }

    @Override // com.applovin.impl.qi
    public final void a(long j) {
        this.l = false;
        this.j = j;
        this.k = j;
        a(j, false);
    }
}
