package com.netease.codescanner;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.google.zxing.LuminanceSource;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.RGBLuminanceSource;
import com.netease.codescanner.common.Graphics;

/* loaded from: classes.dex */
public class e {
    public static LuminanceSource a(byte[] bArr, int i, int i2, int i3, Rect rect, int i4, int i5) {
        if (i3 % 360 == 0) {
            return new PlanarYUVLuminanceSource(bArr, i, i2, rect.left, rect.top, rect.width(), rect.height(), false);
        }
        Bitmap a = Graphics.a(bArr, i, i2, 0, rect, i4, i5);
        if (a == null) {
            return null;
        }
        int width = a.getWidth();
        int height = a.getHeight();
        int[] iArr = new int[width * height];
        a.getPixels(iArr, 0, width, 0, 0, width, height);
        return new RGBLuminanceSource(width, height, iArr);
    }
}
