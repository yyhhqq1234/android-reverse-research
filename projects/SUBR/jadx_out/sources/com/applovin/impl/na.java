package com.applovin.impl;

import java.util.Collections;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
public final class na {
    public final List a;
    public final int b;
    public final String c;

    public static na a(ah ahVar) throws ch {
        try {
            ahVar.g(21);
            int iW = ahVar.w() & 3;
            int iW2 = ahVar.w();
            int iD = ahVar.d();
            int i = 0;
            for (int i2 = 0; i2 < iW2; i2++) {
                ahVar.g(1);
                int iC = ahVar.C();
                for (int i3 = 0; i3 < iC; i3++) {
                    int iC2 = ahVar.C();
                    i += iC2 + 4;
                    ahVar.g(iC2);
                }
            }
            ahVar.f(iD);
            byte[] bArr = new byte[i];
            String strA = null;
            int i4 = 0;
            for (int i5 = 0; i5 < iW2; i5++) {
                int iW3 = ahVar.w() & WorkQueueKt.MASK;
                int iC3 = ahVar.C();
                for (int i6 = 0; i6 < iC3; i6++) {
                    int iC4 = ahVar.C();
                    byte[] bArr2 = yf.a;
                    System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
                    int length = i4 + bArr2.length;
                    System.arraycopy(ahVar.c(), ahVar.d(), bArr, length, iC4);
                    if (iW3 == 33 && i6 == 0) {
                        strA = o3.a(new bh(bArr, length, length + iC4));
                    }
                    i4 = length + iC4;
                    ahVar.g(iC4);
                }
            }
            return new na(i == 0 ? null : Collections.singletonList(bArr), iW + 1, strA);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ch.a("Error parsing HEVC config", e);
        }
    }

    private na(List list, int i, String str) {
        this.a = list;
        this.b = i;
        this.c = str;
    }
}
