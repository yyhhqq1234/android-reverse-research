package com.applovin.impl;

import android.os.Bundle;
import com.applovin.exoplayer2.common.base.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class co extends ki {
    public static final o2.a d = new o2.a() { // from class: com.applovin.impl.co$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return co.b(bundle);
        }
    };
    private final boolean b;
    private final boolean c;

    public co() {
        this.b = false;
        this.c = false;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.b), Boolean.valueOf(this.c));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof co)) {
            return false;
        }
        co coVar = (co) obj;
        return this.c == coVar.c && this.b == coVar.b;
    }

    public co(boolean z) {
        this.b = true;
        this.c = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static co b(Bundle bundle) {
        b1.a(bundle.getInt(a(0), -1) == 3);
        if (bundle.getBoolean(a(1), false)) {
            return new co(bundle.getBoolean(a(2), false));
        }
        return new co();
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }
}
