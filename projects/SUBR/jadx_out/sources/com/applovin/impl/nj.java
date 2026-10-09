package com.applovin.impl;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class nj {
    private final List a;
    private final qo[] b;

    public nj(List list) {
        this.a = list;
        this.b = new qo[list.size()];
    }

    public void a(long j, ah ahVar) {
        c3.a(j, ahVar, this.b);
    }

    public void a(l8 l8Var, dp.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            dVar.a();
            qo qoVarA = l8Var.a(dVar.c(), 3);
            e9 e9Var = (e9) this.a.get(i);
            String str = e9Var.m;
            b1.a("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            String strB = e9Var.a;
            if (strB == null) {
                strB = dVar.b();
            }
            qoVarA.a(new e9.b().c(strB).f(str).o(e9Var.d).e(e9Var.c).a(e9Var.E).a(e9Var.o).a());
            this.b[i] = qoVarA;
        }
    }
}
