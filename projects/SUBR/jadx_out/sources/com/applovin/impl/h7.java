package com.applovin.impl;

import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class h7 implements qo {
    private final byte[] a = new byte[4096];

    @Override // com.applovin.impl.qo
    public /* synthetic */ int a(f5 f5Var, int i, boolean z) {
        return a(f5Var, i, z, 0);
    }

    @Override // com.applovin.impl.qo
    public void a(long j, int i, int i2, int i3, qo.a aVar) {
    }

    @Override // com.applovin.impl.qo
    public /* synthetic */ void a(ah ahVar, int i) {
        a(ahVar, i, 0);
    }

    @Override // com.applovin.impl.qo
    public void a(e9 e9Var) {
    }

    @Override // com.applovin.impl.qo
    public int a(f5 f5Var, int i, boolean z, int i2) throws EOFException {
        int iA = f5Var.a(this.a, 0, Math.min(this.a.length, i));
        if (iA != -1) {
            return iA;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.applovin.impl.qo
    public void a(ah ahVar, int i, int i2) {
        ahVar.g(i);
    }
}
