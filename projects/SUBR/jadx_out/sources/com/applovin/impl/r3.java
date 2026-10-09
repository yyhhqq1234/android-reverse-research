package com.applovin.impl;

import android.os.Bundle;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class r3 implements o2 {
    public static final o2.a g = new o2.a() { // from class: com.applovin.impl.r3$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return r3.a(bundle);
        }
    };
    public final int a;
    public final int b;
    public final int c;
    public final byte[] d;
    private int f;

    public static int a(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int b(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r3 a(Bundle bundle) {
        return new r3(bundle.getInt(c(0), -1), bundle.getInt(c(1), -1), bundle.getInt(c(2), -1), bundle.getByteArray(c(3)));
    }

    public r3(int i, int i2, int i3, byte[] bArr) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r3.class != obj.getClass()) {
            return false;
        }
        r3 r3Var = (r3) obj;
        return this.a == r3Var.a && this.b == r3Var.b && this.c == r3Var.c && Arrays.equals(this.d, r3Var.d);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        sb.append(this.d != null);
        sb.append(")");
        return sb.toString();
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = ((((((this.a + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.b) * 31) + this.c) * 31) + Arrays.hashCode(this.d);
        }
        return this.f;
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }
}
