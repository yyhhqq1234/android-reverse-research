package com.applovin.impl;

import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends fo {
    private final int c;
    private final wj d;
    private final boolean f;

    protected abstract int b(Object obj);

    protected abstract int d(int i);

    protected abstract int e(int i);

    protected abstract Object f(int i);

    protected abstract int g(int i);

    protected abstract int h(int i);

    protected abstract fo i(int i);

    public static Object d(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object c(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    public b(boolean z, wj wjVar) {
        this.f = z;
        this.d = wjVar;
        this.c = wjVar.a();
    }

    @Override // com.applovin.impl.fo
    public int b(boolean z) {
        int i = this.c;
        if (i == 0) {
            return -1;
        }
        if (this.f) {
            z = false;
        }
        int iC = z ? this.d.c() : i - 1;
        while (i(iC).c()) {
            iC = b(iC, z);
            if (iC == -1) {
                return -1;
            }
        }
        return h(iC) + i(iC).b(z);
    }

    @Override // com.applovin.impl.fo
    public int a(boolean z) {
        if (this.c == 0) {
            return -1;
        }
        if (this.f) {
            z = false;
        }
        int iB = z ? this.d.b() : 0;
        while (i(iB).c()) {
            iB = a(iB, z);
            if (iB == -1) {
                return -1;
            }
        }
        return h(iB) + i(iB).a(z);
    }

    @Override // com.applovin.impl.fo
    public final int a(Object obj) {
        int iA;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objD = d(obj);
        Object objC = c(obj);
        int iB = b(objD);
        if (iB == -1 || (iA = i(iB).a(objC)) == -1) {
            return -1;
        }
        return g(iB) + iA;
    }

    private int b(int i, boolean z) {
        if (z) {
            return this.d.b(i);
        }
        if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    @Override // com.applovin.impl.fo
    public int b(int i, int i2, boolean z) {
        if (this.f) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iE = e(i);
        int iH = h(iE);
        int iB = i(iE).b(i - iH, i2 != 2 ? i2 : 0, z);
        if (iB != -1) {
            return iH + iB;
        }
        int iB2 = b(iE, z);
        while (iB2 != -1 && i(iB2).c()) {
            iB2 = b(iB2, z);
        }
        if (iB2 != -1) {
            return h(iB2) + i(iB2).b(z);
        }
        if (i2 == 2) {
            return b(z);
        }
        return -1;
    }

    private int a(int i, boolean z) {
        if (z) {
            return this.d.a(i);
        }
        if (i < this.c - 1) {
            return i + 1;
        }
        return -1;
    }

    @Override // com.applovin.impl.fo
    public final Object b(int i) {
        int iD = d(i);
        return a(f(iD), i(iD).b(i - g(iD)));
    }

    @Override // com.applovin.impl.fo
    public int a(int i, int i2, boolean z) {
        if (this.f) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iE = e(i);
        int iH = h(iE);
        int iA = i(iE).a(i - iH, i2 != 2 ? i2 : 0, z);
        if (iA != -1) {
            return iH + iA;
        }
        int iA2 = a(iE, z);
        while (iA2 != -1 && i(iA2).c()) {
            iA2 = a(iA2, z);
        }
        if (iA2 != -1) {
            return h(iA2) + i(iA2).a(z);
        }
        if (i2 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override // com.applovin.impl.fo
    public final fo.b a(int i, fo.b bVar, boolean z) {
        int iD = d(i);
        int iH = h(iD);
        i(iD).a(i - g(iD), bVar, z);
        bVar.c += iH;
        if (z) {
            bVar.b = a(f(iD), b1.a(bVar.b));
        }
        return bVar;
    }

    @Override // com.applovin.impl.fo
    public final fo.b a(Object obj, fo.b bVar) {
        Object objD = d(obj);
        Object objC = c(obj);
        int iB = b(objD);
        int iH = h(iB);
        i(iB).a(objC, bVar);
        bVar.c += iH;
        bVar.b = obj;
        return bVar;
    }

    @Override // com.applovin.impl.fo
    public final fo.d a(int i, fo.d dVar, long j) {
        int iE = e(i);
        int iH = h(iE);
        int iG = g(iE);
        i(iE).a(i - iH, dVar, j);
        Object objF = f(iE);
        if (!fo.d.s.equals(dVar.a)) {
            objF = a(objF, dVar.a);
        }
        dVar.a = objF;
        dVar.p += iG;
        dVar.q += iG;
        return dVar;
    }
}
