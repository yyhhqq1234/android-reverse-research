package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class g6 implements fd {
    private final bl a;
    private final a b;
    private qi c;
    private fd d;
    private boolean f = true;
    private boolean g;

    public interface a {
        void a(ph phVar);
    }

    public g6(a aVar, l3 l3Var) {
        this.b = aVar;
        this.a = new bl(l3Var);
    }

    public void c() {
        this.g = false;
        this.a.c();
    }

    public void b(qi qiVar) throws z7 {
        fd fdVar;
        fd fdVarL = qiVar.l();
        if (fdVarL == null || fdVarL == (fdVar = this.d)) {
            return;
        }
        if (fdVar == null) {
            this.d = fdVarL;
            this.c = qiVar;
            fdVarL.a(this.a.a());
            return;
        }
        throw z7.a(new IllegalStateException("Multiple renderer media clocks enabled."));
    }

    @Override // com.applovin.impl.fd
    public long p() {
        if (this.f) {
            return this.a.p();
        }
        return ((fd) b1.a(this.d)).p();
    }

    @Override // com.applovin.impl.fd
    public ph a() {
        fd fdVar = this.d;
        if (fdVar != null) {
            return fdVar.a();
        }
        return this.a.a();
    }

    public void b() {
        this.g = true;
        this.a.b();
    }

    private void c(boolean z) {
        if (a(z)) {
            this.f = true;
            if (this.g) {
                this.a.b();
                return;
            }
            return;
        }
        fd fdVar = (fd) b1.a(this.d);
        long jP = fdVar.p();
        if (this.f) {
            if (jP < this.a.p()) {
                this.a.c();
                return;
            } else {
                this.f = false;
                if (this.g) {
                    this.a.b();
                }
            }
        }
        this.a.a(jP);
        ph phVarA = fdVar.a();
        if (phVarA.equals(this.a.a())) {
            return;
        }
        this.a.a(phVarA);
        this.b.a(phVarA);
    }

    public void a(qi qiVar) {
        if (qiVar == this.c) {
            this.d = null;
            this.c = null;
            this.f = true;
        }
    }

    public long b(boolean z) {
        c(z);
        return p();
    }

    public void a(long j) {
        this.a.a(j);
    }

    @Override // com.applovin.impl.fd
    public void a(ph phVar) {
        fd fdVar = this.d;
        if (fdVar != null) {
            fdVar.a(phVar);
            phVar = this.d.a();
        }
        this.a.a(phVar);
    }

    private boolean a(boolean z) {
        qi qiVar = this.c;
        return qiVar == null || qiVar.c() || (!this.c.d() && (z || this.c.j()));
    }
}
