package com.applovin.impl;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public interface qo {
    int a(f5 f5Var, int i, boolean z);

    int a(f5 f5Var, int i, boolean z, int i2);

    void a(long j, int i, int i2, int i3, a aVar);

    void a(ah ahVar, int i);

    void a(ah ahVar, int i, int i2);

    void a(e9 e9Var);

    public static final class a {
        public final int a;
        public final byte[] b;
        public final int c;
        public final int d;

        public a(int i, byte[] bArr, int i2, int i3) {
            this.a = i;
            this.b = bArr;
            this.c = i2;
            this.d = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.c == aVar.c && this.d == aVar.d && Arrays.equals(this.b, aVar.b);
        }

        public int hashCode() {
            return (((((this.a * 31) + Arrays.hashCode(this.b)) * 31) + this.c) * 31) + this.d;
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.qo$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
