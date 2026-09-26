package com.netease.mcount;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class b {
    public static String a(byte[] bArr, int i) {
        try {
            return new String(b(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        d dVar = new d(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!dVar.d) {
            switch (i2 % 3) {
                case 1:
                    i4 += 2;
                    break;
                case 2:
                    i4 += 3;
                    break;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (dVar.e && i2 > 0) {
            i4 += (dVar.f ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        dVar.a = new byte[i4];
        dVar.a(bArr, i, i2, true);
        return dVar.a;
    }

    public static byte[] b(byte[] bArr, int i) {
        return a(bArr, 0, bArr.length, i);
    }
}
