package com.applovin.impl;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class w1 {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;
    public final String f;

    public static w1 b(ah ahVar) throws ch {
        String strA;
        int i;
        int i2;
        float f;
        try {
            ahVar.g(4);
            int iW = (ahVar.w() & 3) + 1;
            if (iW != 3) {
                ArrayList arrayList = new ArrayList();
                int iW2 = ahVar.w() & 31;
                for (int i3 = 0; i3 < iW2; i3++) {
                    arrayList.add(a(ahVar));
                }
                int iW3 = ahVar.w();
                for (int i4 = 0; i4 < iW3; i4++) {
                    arrayList.add(a(ahVar));
                }
                if (iW2 > 0) {
                    yf.b bVarC = yf.c((byte[]) arrayList.get(0), iW, ((byte[]) arrayList.get(0)).length);
                    int i5 = bVarC.e;
                    int i6 = bVarC.f;
                    float f2 = bVarC.g;
                    strA = o3.a(bVarC.a, bVarC.b, bVarC.c);
                    i = i5;
                    i2 = i6;
                    f = f2;
                } else {
                    strA = null;
                    i = -1;
                    i2 = -1;
                    f = 1.0f;
                }
                return new w1(arrayList, iW, i, i2, f, strA);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ch.a("Error parsing AVC config", e);
        }
    }

    private w1(List list, int i, int i2, int i3, float f, String str) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
        this.f = str;
    }

    private static byte[] a(ah ahVar) {
        int iC = ahVar.C();
        int iD = ahVar.d();
        ahVar.g(iC);
        return o3.a(ahVar.c(), iD, iC);
    }
}
