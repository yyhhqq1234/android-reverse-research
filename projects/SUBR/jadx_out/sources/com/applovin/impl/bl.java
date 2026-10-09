package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class bl implements fd {
    private final l3 a;
    private boolean b;
    private long c;
    private long d;
    private ph f = ph.d;

    public bl(l3 l3Var) {
        this.a = l3Var;
    }

    public void b() {
        if (this.b) {
            return;
        }
        this.d = this.a.c();
        this.b = true;
    }

    public void c() {
        if (this.b) {
            a(p());
            this.b = false;
        }
    }

    @Override // com.applovin.impl.fd
    public long p() {
        long jA;
        long j = this.c;
        if (!this.b) {
            return j;
        }
        long jC = this.a.c() - this.d;
        ph phVar = this.f;
        if (phVar.a == 1.0f) {
            jA = t2.a(jC);
        } else {
            jA = phVar.a(jC);
        }
        return j + jA;
    }

    @Override // com.applovin.impl.fd
    public ph a() {
        return this.f;
    }

    public void a(long j) {
        this.c = j;
        if (this.b) {
            this.d = this.a.c();
        }
    }

    @Override // com.applovin.impl.fd
    public void a(ph phVar) {
        if (this.b) {
            a(p());
        }
        this.f = phVar;
    }
}
