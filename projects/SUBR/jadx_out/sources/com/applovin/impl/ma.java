package com.applovin.impl;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ma extends ki {
    public static final o2.a d = new o2.a() { // from class: com.applovin.impl.ma$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return ma.b(bundle);
        }
    };
    private final boolean b;
    private final boolean c;

    public ma() {
        this.b = false;
        this.c = false;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.b), Boolean.valueOf(this.c));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ma)) {
            return false;
        }
        ma maVar = (ma) obj;
        return this.c == maVar.c && this.b == maVar.b;
    }

    public ma(boolean z) {
        this.b = true;
        this.c = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ma b(Bundle bundle) {
        b1.a(bundle.getInt(a(0), -1) == 0);
        if (bundle.getBoolean(a(1), false)) {
            return new ma(bundle.getBoolean(a(2), false));
        }
        return new ma();
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }
}
