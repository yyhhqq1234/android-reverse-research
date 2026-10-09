package com.applovin.impl;

import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public abstract class sc extends vo {
    private a c;

    protected abstract Pair a(a aVar, int[][][] iArr, int[] iArr2, ae.a aVar2, fo foVar);

    public static final class a {
        private final int a;
        private final String[] b;
        private final int[] c;
        private final po[] d;
        private final int[] e;
        private final int[][][] f;
        private final po g;

        a(String[] strArr, int[] iArr, po[] poVarArr, int[] iArr2, int[][][] iArr3, po poVar) {
            this.b = strArr;
            this.c = iArr;
            this.d = poVarArr;
            this.f = iArr3;
            this.e = iArr2;
            this.g = poVar;
            this.a = iArr.length;
        }

        public int a() {
            return this.a;
        }

        public po b(int i) {
            return this.d[i];
        }

        public int a(int i) {
            return this.c[i];
        }
    }

    private static int a(ri[] riVarArr, oo ooVar, int[] iArr, boolean z) {
        int length = riVarArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < riVarArr.length; i2++) {
            ri riVar = riVarArr[i2];
            int iMax = 0;
            for (int i3 = 0; i3 < ooVar.a; i3++) {
                iMax = Math.max(iMax, ri.CC.d(riVar.a(ooVar.a(i3))));
            }
            boolean z3 = iArr[i2] == 0;
            if (iMax > i || (iMax == i && z && !z2 && z3)) {
                length = i2;
                z2 = z3;
                i = iMax;
            }
        }
        return length;
    }

    private static int[] a(ri riVar, oo ooVar) {
        int[] iArr = new int[ooVar.a];
        for (int i = 0; i < ooVar.a; i++) {
            iArr[i] = riVar.a(ooVar.a(i));
        }
        return iArr;
    }

    private static int[] a(ri[] riVarArr) {
        int length = riVarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = riVarArr[i].m();
        }
        return iArr;
    }

    @Override // com.applovin.impl.vo
    public final void a(Object obj) {
        this.c = (a) obj;
    }

    @Override // com.applovin.impl.vo
    public final wo a(ri[] riVarArr, po poVar, ae.a aVar, fo foVar) {
        int[] iArrA;
        int[] iArr = new int[riVarArr.length + 1];
        int length = riVarArr.length + 1;
        oo[][] ooVarArr = new oo[length][];
        int[][][] iArr2 = new int[riVarArr.length + 1][][];
        for (int i = 0; i < length; i++) {
            int i2 = poVar.a;
            ooVarArr[i] = new oo[i2];
            iArr2[i] = new int[i2][];
        }
        int[] iArrA2 = a(riVarArr);
        for (int i3 = 0; i3 < poVar.a; i3++) {
            oo ooVarA = poVar.a(i3);
            int iA = a(riVarArr, ooVarA, iArr, hf.e(ooVarA.a(0).m) == 5);
            if (iA == riVarArr.length) {
                iArrA = new int[ooVarA.a];
            } else {
                iArrA = a(riVarArr[iA], ooVarA);
            }
            int i4 = iArr[iA];
            ooVarArr[iA][i4] = ooVarA;
            iArr2[iA][i4] = iArrA;
            iArr[iA] = i4 + 1;
        }
        po[] poVarArr = new po[riVarArr.length];
        String[] strArr = new String[riVarArr.length];
        int[] iArr3 = new int[riVarArr.length];
        for (int i5 = 0; i5 < riVarArr.length; i5++) {
            int i6 = iArr[i5];
            poVarArr[i5] = new po((oo[]) xp.a(ooVarArr[i5], i6));
            iArr2[i5] = (int[][]) xp.a(iArr2[i5], i6);
            strArr[i5] = riVarArr[i5].getName();
            iArr3[i5] = riVarArr[i5].e();
        }
        a aVar2 = new a(strArr, iArr3, poVarArr, iArrA2, iArr2, new po((oo[]) xp.a(ooVarArr[riVarArr.length], iArr[riVarArr.length])));
        Pair pairA = a(aVar2, iArr2, iArrA2, aVar, foVar);
        return new wo((si[]) pairA.first, (g8[]) pairA.second, aVar2);
    }
}
