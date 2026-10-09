package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class dh implements gj {
    private e9 a;
    private ho b;
    private qo c;

    public dh(String str) {
        this.a = new e9.b().f(str).a();
    }

    private void a() {
        b1.b(this.b);
        xp.a(this.c);
    }

    @Override // com.applovin.impl.gj
    public void a(ah ahVar) {
        a();
        long jB = this.b.b();
        long jC = this.b.c();
        if (jB == -9223372036854775807L || jC == -9223372036854775807L) {
            return;
        }
        e9 e9Var = this.a;
        if (jC != e9Var.q) {
            e9 e9VarA = e9Var.a().a(jC).a();
            this.a = e9VarA;
            this.c.a(e9VarA);
        }
        int iA = ahVar.a();
        this.c.a(ahVar, iA);
        this.c.a(jB, 1, iA, 0, null);
    }

    @Override // com.applovin.impl.gj
    public void a(ho hoVar, l8 l8Var, dp.d dVar) {
        this.b = hoVar;
        dVar.a();
        qo qoVarA = l8Var.a(dVar.c(), 5);
        this.c = qoVarA;
        qoVarA.a(this.a);
    }
}
