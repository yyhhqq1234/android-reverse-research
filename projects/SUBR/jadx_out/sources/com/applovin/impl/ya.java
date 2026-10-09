package com.applovin.impl;

import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class ya {
    private final ah a = new ah(10);

    public af a(k8 k8Var, wa.a aVar) {
        af afVarA = null;
        int i = 0;
        while (true) {
            try {
                k8Var.c(this.a.c(), 0, 10);
                this.a.f(0);
                if (this.a.z() != 4801587) {
                    break;
                }
                this.a.g(3);
                int iV = this.a.v();
                int i2 = iV + 10;
                if (afVarA == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.a.c(), 0, bArr, 0, 10);
                    k8Var.c(bArr, 10, iV);
                    afVarA = new wa(aVar).a(bArr, i2);
                } else {
                    k8Var.c(iV);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        k8Var.b();
        k8Var.c(i);
        return afVarA;
    }
}
