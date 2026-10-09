package com.applovin.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i0 extends f2 {
    private final y1 h;
    private final long i;
    private final long j;
    private final long k;
    private final float l;
    private final float m;
    private final db n;
    private final l3 o;
    private float p;
    private int q;
    private int r;
    private long s;

    /* JADX INFO: Access modifiers changed from: private */
    public static db b(g8.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (g8.a aVar : aVarArr) {
            if (aVar == null || aVar.b.length <= 1) {
                arrayList.add(null);
            } else {
                db.a aVarF = db.f();
                aVarF.b(new a(0L, 0L));
                arrayList.add(aVarF);
            }
        }
        long[][] jArrC = c(aVarArr);
        int[] iArr = new int[jArrC.length];
        long[] jArr = new long[jArrC.length];
        for (int i = 0; i < jArrC.length; i++) {
            long[] jArr2 = jArrC[i];
            jArr[i] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        a(arrayList, jArr);
        db dbVarA = a(jArrC);
        for (int i2 = 0; i2 < dbVarA.size(); i2++) {
            int iIntValue = ((Integer) dbVarA.get(i2)).intValue();
            int i3 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i3;
            jArr[iIntValue] = jArrC[iIntValue][i3];
            a(arrayList, jArr);
        }
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            if (arrayList.get(i4) != null) {
                jArr[i4] = jArr[i4] * 2;
            }
        }
        a(arrayList, jArr);
        db.a aVarF2 = db.f();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            db.a aVar2 = (db.a) arrayList.get(i5);
            aVarF2.b(aVar2 == null ? db.h() : aVar2.a());
        }
        return aVarF2.a();
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.g8
    public void f() {
    }

    public static class b implements g8.b {
        private final int a;
        private final int b;
        private final int c;
        private final float d;
        private final float e;
        private final l3 f;

        public b() {
            this(10000, 25000, 25000, 0.7f, 0.75f, l3.a);
        }

        @Override // com.applovin.impl.g8.b
        public final g8[] a(g8.a[] aVarArr, y1 y1Var, ae.a aVar, fo foVar) {
            g8 g8VarA;
            db dbVarB = i0.b(aVarArr);
            g8[] g8VarArr = new g8[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                g8.a aVar2 = aVarArr[i];
                if (aVar2 != null) {
                    int[] iArr = aVar2.b;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            g8VarA = new s8(aVar2.a, iArr[0], aVar2.c);
                        } else {
                            g8VarA = a(aVar2.a, iArr, aVar2.c, y1Var, (db) dbVarB.get(i));
                        }
                        g8VarArr[i] = g8VarA;
                    }
                }
            }
            return g8VarArr;
        }

        protected i0 a(oo ooVar, int[] iArr, int i, y1 y1Var, db dbVar) {
            return new i0(ooVar, iArr, i, y1Var, this.a, this.b, this.c, this.d, this.e, dbVar, this.f);
        }

        public b(int i, int i2, int i3, float f, float f2, l3 l3Var) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = f;
            this.e = f2;
            this.f = l3Var;
        }
    }

    protected i0(oo ooVar, int[] iArr, int i, y1 y1Var, long j, long j2, long j3, float f, float f2, List list, l3 l3Var) {
        super(ooVar, iArr, i);
        if (j3 < j) {
            oc.d("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j3 = j;
        }
        this.h = y1Var;
        this.i = j * 1000;
        this.j = j2 * 1000;
        this.k = j3 * 1000;
        this.l = f;
        this.m = f2;
        this.n = db.a((Collection) list);
        this.o = l3Var;
        this.p = 1.0f;
        this.r = 0;
        this.s = -9223372036854775807L;
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.g8
    public void i() {
        this.s = -9223372036854775807L;
    }

    @Override // com.applovin.impl.g8
    public int h() {
        return this.q;
    }

    private static long[][] c(g8.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i = 0; i < aVarArr.length; i++) {
            g8.a aVar = aVarArr[i];
            if (aVar == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[aVar.b.length];
                int i2 = 0;
                while (true) {
                    int[] iArr = aVar.b;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    jArr[i][i2] = aVar.a.a(iArr[i2]).i;
                    i2++;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    public static final class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            return (((int) this.a) * 31) + ((int) this.b);
        }
    }

    private static void a(List list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            db.a aVar = (db.a) list.get(i);
            if (aVar != null) {
                aVar.b(new a(j, jArr[i]));
            }
        }
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.g8
    public void a(float f) {
        this.p = f;
    }

    private static db a(long[][] jArr) {
        ec ecVarB = vf.a().a().b();
        for (int i = 0; i < jArr.length; i++) {
            long[] jArr2 = jArr[i];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    long[] jArr3 = jArr[i];
                    double dLog = 0.0d;
                    if (i2 >= jArr3.length) {
                        break;
                    }
                    long j = jArr3[i2];
                    if (j != -1) {
                        dLog = Math.log(j);
                    }
                    dArr[i2] = dLog;
                    i2++;
                }
                int i3 = length - 1;
                double d = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d2 = dArr[i4];
                    i4++;
                    ecVarB.put(Double.valueOf(d == 0.0d ? 1.0d : (((d2 + dArr[i4]) * 0.5d) - dArr[0]) / d), Integer.valueOf(i));
                }
            }
        }
        return db.a(ecVarB.values());
    }
}
