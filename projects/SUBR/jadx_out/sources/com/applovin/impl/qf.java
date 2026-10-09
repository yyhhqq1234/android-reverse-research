package com.applovin.impl;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class qf implements nl {
    private final List a;

    @Override // com.applovin.impl.nl
    public int a() {
        return 1;
    }

    @Override // com.applovin.impl.nl
    public int a(long j) {
        return j < 0 ? 0 : -1;
    }

    public qf(List list) {
        this.a = Collections.unmodifiableList(list);
    }

    @Override // com.applovin.impl.nl
    public long a(int i) {
        b1.a(i == 0);
        return 0L;
    }

    @Override // com.applovin.impl.nl
    public List b(long j) {
        return j >= 0 ? this.a : Collections.emptyList();
    }
}
