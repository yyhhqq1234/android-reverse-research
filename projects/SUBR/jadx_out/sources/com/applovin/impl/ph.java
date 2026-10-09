package com.applovin.impl;

import android.os.Bundle;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class ph implements o2 {
    public static final ph d = new ph(1.0f);
    public static final o2.a f = new o2.a() { // from class: com.applovin.impl.ph$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return ph.a(bundle);
        }
    };
    public final float a;
    public final float b;
    private final int c;

    public ph(float f2) {
        this(f2, 1.0f);
    }

    public long a(long j) {
        return j * ((long) this.c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ph.class != obj.getClass()) {
            return false;
        }
        ph phVar = (ph) obj;
        return this.a == phVar.a && this.b == phVar.b;
    }

    public int hashCode() {
        return ((Float.floatToRawIntBits(this.a) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Float.floatToRawIntBits(this.b);
    }

    public ph(float f2, float f3) {
        b1.a(f2 > 0.0f);
        b1.a(f3 > 0.0f);
        this.a = f2;
        this.b = f3;
        this.c = Math.round(f2 * 1000.0f);
    }

    public String toString() {
        return xp.a("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.a), Float.valueOf(this.b));
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ph a(Bundle bundle) {
        return new ph(bundle.getFloat(a(0), 1.0f), bundle.getFloat(a(1), 1.0f));
    }

    public ph a(float f2) {
        return new ph(f2, this.b);
    }
}
