package com.applovin.impl;

import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class v1 {
    public final int a;
    public final float b;

    public v1(int i, float f) {
        this.a = i;
        this.b = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v1.class != obj.getClass()) {
            return false;
        }
        v1 v1Var = (v1) obj;
        return this.a == v1Var.a && Float.compare(v1Var.b, this.b) == 0;
    }

    public int hashCode() {
        return ((this.a + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Float.floatToIntBits(this.b);
    }
}
