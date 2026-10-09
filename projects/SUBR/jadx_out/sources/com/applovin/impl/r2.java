package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
final class r2 extends vg implements Serializable {
    final Function a;
    final vg b;

    public String toString() {
        return this.b + ".onResultOf(" + this.a + ")";
    }

    r2(Function function, vg vgVar) {
        this.a = (Function) Preconditions.checkNotNull(function);
        this.b = (vg) Preconditions.checkNotNull(vgVar);
    }

    @Override // com.applovin.impl.vg, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.b.compare(this.a.apply(obj), this.a.apply(obj2));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r2)) {
            return false;
        }
        r2 r2Var = (r2) obj;
        return this.a.equals(r2Var.a) && this.b.equals(r2Var.b);
    }

    public int hashCode() {
        return Objects.hashCode(this.a, this.b);
    }
}
