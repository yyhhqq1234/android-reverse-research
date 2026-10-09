package com.applovin.impl;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class vp {
    private final List a;
    private final qo[] b;

    public vp(List list) {
        this.a = list;
        this.b = new qo[list.size()];
    }

    public void a(long j, ah ahVar) {
        if (ahVar.a() < 9) {
            return;
        }
        int iJ = ahVar.j();
        int iJ2 = ahVar.j();
        int iW = ahVar.w();
        if (iJ == 434 && iJ2 == 1195456820 && iW == 3) {
            c3.b(j, ahVar, this.b);
        }
    }

    public void a(l8 l8Var, dp.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            dVar.a();
            qo qoVarA = l8Var.a(dVar.c(), 3);
            e9 e9Var = (e9) this.a.get(i);
            String str = e9Var.m;
            b1.a("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            qoVarA.a(new e9.b().c(dVar.b()).f(str).o(e9Var.d).e(e9Var.c).a(e9Var.E).a(e9Var.o).a());
            this.b[i] = qoVarA;
        }
    }
}
