package com.netease.codescanner.common;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class Graphics {
    static {
        System.loadLibrary("com_netease_ps_codescanner");
    }

    public static Bitmap a(byte[] bArr, int i, int i2, int i3, Rect rect, int i4, int i5) {
        try {
            return b(bArr, i, i2, i3, rect, i4, i5);
        } catch (OutOfMemoryError e) {
            return null;
        }
    }

    private static int[] a(byte[] bArr, int i, int i2, Rect rect) {
        if (bArr == null || (i * i2) + (((i2 - 1) / 2) * i) + ((i - 1) & 2147483646) + 2 < bArr.length) {
            return null;
        }
        int[] iArr = new int[rect.width() * rect.height()];
        nv21ToRgb(bArr, i, i2, rect.left, rect.top, rect.right, rect.bottom, iArr);
        return iArr;
    }

    private static Bitmap b(byte[] bArr, int i, int i2, int i3, Rect rect, int i4, int i5) {
        if (rect == null) {
            rect = new Rect(0, 0, i, i2);
        }
        int[] a = a(bArr, i, i2, rect);
        if (a == null) {
            return null;
        }
        int width = rect.width();
        int height = rect.height();
        Bitmap createBitmap = Bitmap.createBitmap(a, 0, width, width, height, Bitmap.Config.RGB_565);
        if (width > i4 * 2 && height > i5 * 2) {
            createBitmap = Bitmap.createScaledBitmap(createBitmap, i4, i5, false);
        }
        if (i3 % 360 == 0) {
            return createBitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(360 - i3);
        Logging.d("" + createBitmap.getWidth() + "x" + createBitmap.getHeight() + "; " + i + "x" + i2 + "; ");
        return Bitmap.createBitmap(createBitmap, 0, 0, createBitmap.getWidth(), createBitmap.getHeight(), matrix, false);
    }

    private static native void nv21ToRgb(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int[] iArr);
}
