package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class vc implements vd, vd.a {
    public final ae.a a;
    private final long b;
    private final n0 c;
    private ae d;
    private vd f;
    private vd.a g;
    private long h = -9223372036854775807L;

    public vc(ae.a aVar, n0 n0Var, long j) {
        this.a = aVar;
        this.c = n0Var;
        this.b = j;
    }

    public long d() {
        return this.b;
    }

    public long c() {
        return this.h;
    }

    public void a(ae.a aVar) {
        long jD = d(this.b);
        vd vdVarA = ((ae) b1.a(this.d)).a(aVar, this.c, jD);
        this.f = vdVarA;
        if (this.g != null) {
            vdVarA.a(this, jD);
        }
    }

    public void i() {
        if (this.f != null) {
            ((ae) b1.a(this.d)).a(this.f);
        }
    }

    @Override // com.applovin.impl.vd
    public void f() {
        vd vdVar = this.f;
        if (vdVar != null) {
            vdVar.f();
            return;
        }
        ae aeVar = this.d;
        if (aeVar != null) {
            aeVar.b();
        }
    }

    @Override // com.applovin.impl.vd
    public long h() {
        return ((vd) xp.a(this.f)).h();
    }

    @Override // com.applovin.impl.vd
    public long e() {
        return ((vd) xp.a(this.f)).e();
    }

    @Override // com.applovin.impl.vd
    public long g() {
        return ((vd) xp.a(this.f)).g();
    }

    @Override // com.applovin.impl.vd
    public boolean b(long j) {
        vd vdVar = this.f;
        return vdVar != null && vdVar.b(j);
    }

    public void e(long j) {
        this.h = j;
    }

    @Override // com.applovin.impl.vd
    public void a(long j, boolean z) {
        ((vd) xp.a(this.f)).a(j, z);
    }

    @Override // com.applovin.impl.vd
    public void c(long j) {
        ((vd) xp.a(this.f)).c(j);
    }

    private long d(long j) {
        long j2 = this.h;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // com.applovin.impl.vd
    public po b() {
        return ((vd) xp.a(this.f)).b();
    }

    @Override // com.applovin.impl.vd
    public long a(long j, jj jjVar) {
        return ((vd) xp.a(this.f)).a(j, jjVar);
    }

    @Override // com.applovin.impl.pj.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(vd vdVar) {
        ((vd.a) xp.a(this.g)).a((pj) this);
    }

    @Override // com.applovin.impl.vd
    public boolean a() {
        vd vdVar = this.f;
        return vdVar != null && vdVar.a();
    }

    @Override // com.applovin.impl.vd.a
    public void a(vd vdVar) {
        ((vd.a) xp.a(this.g)).a((vd) this);
    }

    @Override // com.applovin.impl.vd
    public void a(vd.a aVar, long j) {
        this.g = aVar;
        vd vdVar = this.f;
        if (vdVar != null) {
            vdVar.a(this, d(this.b));
        }
    }

    @Override // com.applovin.impl.vd
    public long a(long j) {
        return ((vd) xp.a(this.f)).a(j);
    }

    @Override // com.applovin.impl.vd
    public long a(g8[] g8VarArr, boolean[] zArr, cj[] cjVarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.h;
        if (j3 == -9223372036854775807L || j != this.b) {
            j2 = j;
        } else {
            this.h = -9223372036854775807L;
            j2 = j3;
        }
        return ((vd) xp.a(this.f)).a(g8VarArr, zArr, cjVarArr, zArr2, j2);
    }

    public void a(ae aeVar) {
        b1.b(this.d == null);
        this.d = aeVar;
    }
}
