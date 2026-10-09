package com.applovin.impl;

import android.util.Pair;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class o3 {
    private static final byte[] a = {0, 0, 0, 1};
    private static final String[] b = {"", "A", "B", "C"};

    public static String a(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static List a(boolean z) {
        return Collections.singletonList(z ? new byte[]{1} : new byte[]{0});
    }

    public static String a(bh bhVar) {
        bhVar.d(24);
        int iB = bhVar.b(2);
        boolean zC = bhVar.c();
        int iB2 = bhVar.b(5);
        int i = 0;
        for (int i2 = 0; i2 < 32; i2++) {
            if (bhVar.c()) {
                i |= 1 << i2;
            }
        }
        int i3 = 6;
        int[] iArr = new int[6];
        for (int i4 = 0; i4 < 6; i4++) {
            iArr[i4] = bhVar.b(8);
        }
        int iB3 = bhVar.b(8);
        Object[] objArr = new Object[5];
        objArr[0] = b[iB];
        objArr[1] = Integer.valueOf(iB2);
        objArr[2] = Integer.valueOf(i);
        objArr[3] = Character.valueOf(zC ? 'H' : 'L');
        objArr[4] = Integer.valueOf(iB3);
        StringBuilder sb = new StringBuilder(xp.a("hvc1.%s%d.%X.%c%d", objArr));
        while (i3 > 0 && iArr[i3 - 1] == 0) {
            i3--;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    public static boolean a(List list) {
        return list.size() == 1 && ((byte[]) list.get(0)).length == 1 && ((byte[]) list.get(0))[0] == 1;
    }

    public static Pair a(byte[] bArr) {
        ah ahVar = new ah(bArr);
        ahVar.f(9);
        int iW = ahVar.w();
        ahVar.f(20);
        return Pair.create(Integer.valueOf(ahVar.A()), Integer.valueOf(iW));
    }
}
