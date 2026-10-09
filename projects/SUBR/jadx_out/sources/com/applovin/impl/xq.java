package com.applovin.impl;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class xq implements o2 {
    public static final xq f = new xq(0, 0);
    public static final o2.a g = new o2.a() { // from class: com.applovin.impl.xq$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return xq.a(bundle);
        }
    };
    public final int a;
    public final int b;
    public final int c;
    public final float d;

    public xq(int i, int i2) {
        this(i, i2, 0, 1.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xq)) {
            return false;
        }
        xq xqVar = (xq) obj;
        return this.a == xqVar.a && this.b == xqVar.b && this.c == xqVar.c && this.d == xqVar.d;
    }

    public int hashCode() {
        return ((((((this.a + 217) * 31) + this.b) * 31) + this.c) * 31) + Float.floatToRawIntBits(this.d);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public xq(int i, int i2, int i3, float f2) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ xq a(Bundle bundle) {
        return new xq(bundle.getInt(a(0), 0), bundle.getInt(a(1), 0), bundle.getInt(a(2), 0), bundle.getFloat(a(3), 1.0f));
    }
}
