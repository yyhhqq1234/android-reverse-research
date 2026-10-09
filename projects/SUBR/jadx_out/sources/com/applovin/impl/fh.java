package com.applovin.impl;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class fh extends ki {
    public static final o2.a c = new o2.a() { // from class: com.applovin.impl.fh$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return fh.b(bundle);
        }
    };
    private final float b;

    public fh() {
        this.b = -1.0f;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.b));
    }

    public boolean equals(Object obj) {
        return (obj instanceof fh) && this.b == ((fh) obj).b;
    }

    public fh(float f) {
        b1.a(f >= 0.0f && f <= 100.0f, "percent must be in the range of [0, 100]");
        this.b = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static fh b(Bundle bundle) {
        b1.a(bundle.getInt(a(0), -1) == 1);
        float f = bundle.getFloat(a(1), -1.0f);
        return f == -1.0f ? new fh() : new fh(f);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }
}
