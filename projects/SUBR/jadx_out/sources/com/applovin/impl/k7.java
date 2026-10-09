package com.applovin.impl;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class k7 implements nl {
    private final List a;

    @Override // com.applovin.impl.nl
    public int a() {
        return 1;
    }

    @Override // com.applovin.impl.nl
    public int a(long j) {
        return -1;
    }

    @Override // com.applovin.impl.nl
    public long a(int i) {
        return 0L;
    }

    public k7(List list) {
        this.a = list;
    }

    @Override // com.applovin.impl.nl
    public List b(long j) {
        return this.a;
    }
}
