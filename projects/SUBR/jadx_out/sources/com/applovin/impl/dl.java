package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class dl extends g9 {
    private final long b;

    public dl(k8 k8Var, long j) {
        super(k8Var);
        b1.a(k8Var.f() >= j);
        this.b = j;
    }

    @Override // com.applovin.impl.g9, com.applovin.impl.k8
    public long f() {
        return super.f() - this.b;
    }

    @Override // com.applovin.impl.g9, com.applovin.impl.k8
    public long d() {
        return super.d() - this.b;
    }

    @Override // com.applovin.impl.g9, com.applovin.impl.k8
    public long a() {
        return super.a() - this.b;
    }
}
