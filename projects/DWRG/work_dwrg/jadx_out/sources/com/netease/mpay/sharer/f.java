package com.netease.mpay.sharer;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public class f {
    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getApplicationInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static byte[] a(Bitmap bitmap, int i) {
        for (int i2 : new int[]{85, 70, 60, 50, 40, 30, 20, 10}) {
            byte[] c = c(bitmap, i2);
            if (c.length < i) {
                return c;
            }
        }
        return null;
    }

    public static Bitmap b(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height);
        float f = i / min;
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        return Bitmap.createBitmap(bitmap, Math.max(0, (width - min) / 2), Math.max(0, (height - min) / 2), min, min, matrix, true);
    }

    private static byte[] c(Bitmap bitmap, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
