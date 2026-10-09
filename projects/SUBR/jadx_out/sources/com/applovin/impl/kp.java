package com.applovin.impl;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class kp implements nl {
    private final gp a;
    private final long[] b;
    private final Map c;
    private final Map d;
    private final Map f;

    public kp(gp gpVar, Map map, Map map2, Map map3) {
        this.a = gpVar;
        this.d = map2;
        this.f = map3;
        this.c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.b = gpVar.b();
    }

    @Override // com.applovin.impl.nl
    public long a(int i) {
        return this.b[i];
    }

    @Override // com.applovin.impl.nl
    public List b(long j) {
        return this.a.a(j, this.c, this.d, this.f);
    }

    @Override // com.applovin.impl.nl
    public int a() {
        return this.b.length;
    }

    @Override // com.applovin.impl.nl
    public int a(long j) {
        int iA = xp.a(this.b, j, false, false);
        if (iA < this.b.length) {
            return iA;
        }
        return -1;
    }
}
