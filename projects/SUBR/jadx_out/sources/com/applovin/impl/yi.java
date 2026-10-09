package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
final class yi extends vg implements Serializable {
    final vg a;

    public String toString() {
        return this.a + ".reverse()";
    }

    yi(vg vgVar) {
        this.a = (vg) Preconditions.checkNotNull(vgVar);
    }

    @Override // com.applovin.impl.vg, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.a.compare(obj2, obj);
    }

    @Override // com.applovin.impl.vg
    public vg c() {
        return this.a;
    }

    public int hashCode() {
        return -this.a.hashCode();
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof yi) {
            return this.a.equals(((yi) obj).a);
        }
        return false;
    }
}
