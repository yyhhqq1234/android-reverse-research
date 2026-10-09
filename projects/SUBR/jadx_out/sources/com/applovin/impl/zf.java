package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
final class zf extends vg implements Serializable {
    static final zf a = new zf();

    @Override // com.applovin.impl.vg
    public vg c() {
        return xi.a;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    @Override // com.applovin.impl.vg, java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable comparable, Comparable comparable2) {
        Preconditions.checkNotNull(comparable);
        Preconditions.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    private zf() {
    }
}
