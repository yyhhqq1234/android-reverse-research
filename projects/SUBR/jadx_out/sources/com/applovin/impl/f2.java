package com.applovin.impl;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class f2 implements g8 {
    protected final oo a;
    protected final int b;
    protected final int[] c;
    private final int d;
    private final e9[] e;
    private final long[] f;
    private int g;

    @Override // com.applovin.impl.g8
    public void a(float f) {
    }

    @Override // com.applovin.impl.g8
    public /* synthetic */ void a(boolean z) {
        g8.CC.$default$a(this, z);
    }

    @Override // com.applovin.impl.g8
    public void f() {
    }

    @Override // com.applovin.impl.g8
    public void i() {
    }

    @Override // com.applovin.impl.g8
    public /* synthetic */ void j() {
        g8.CC.$default$j(this);
    }

    @Override // com.applovin.impl.g8
    public /* synthetic */ void k() {
        g8.CC.$default$k(this);
    }

    public f2(oo ooVar, int[] iArr, int i) {
        int i2 = 0;
        b1.b(iArr.length > 0);
        this.d = i;
        this.a = (oo) b1.a(ooVar);
        int length = iArr.length;
        this.b = length;
        this.e = new e9[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.e[i3] = ooVar.a(iArr[i3]);
        }
        Arrays.sort(this.e, new Comparator() { // from class: com.applovin.impl.f2$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return f2.a((e9) obj, (e9) obj2);
            }
        });
        this.c = new int[this.b];
        while (true) {
            int i4 = this.b;
            if (i2 < i4) {
                this.c[i2] = ooVar.a(this.e[i2]);
                i2++;
            } else {
                this.f = new long[i4];
                return;
            }
        }
    }

    @Override // com.applovin.impl.so
    public final e9 a(int i) {
        return this.e[i];
    }

    @Override // com.applovin.impl.so
    public final int b(int i) {
        return this.c[i];
    }

    @Override // com.applovin.impl.g8
    public final e9 g() {
        return this.e[h()];
    }

    public int hashCode() {
        if (this.g == 0) {
            this.g = (System.identityHashCode(this.a) * 31) + Arrays.hashCode(this.c);
        }
        return this.g;
    }

    @Override // com.applovin.impl.so
    public final oo a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f2 f2Var = (f2) obj;
        return this.a == f2Var.a && Arrays.equals(this.c, f2Var.c);
    }

    @Override // com.applovin.impl.so
    public final int b() {
        return this.c.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(e9 e9Var, e9 e9Var2) {
        return e9Var2.i - e9Var.i;
    }
}
