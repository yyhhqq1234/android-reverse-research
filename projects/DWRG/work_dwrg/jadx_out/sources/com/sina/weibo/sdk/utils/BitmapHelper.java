package com.sina.weibo.sdk.utils;

import android.graphics.BitmapFactory;
import android.graphics.Rect;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class BitmapHelper {
    public static boolean makesureSizeNotTooLarge(Rect rect) {
        return (rect.width() * rect.height()) * 2 <= 5242880;
    }

    public static int getSampleSizeOfNotTooLarge(Rect rect) {
        double ratio = ((rect.width() * rect.height()) * 2.0d) / 5242880.0d;
        if (ratio >= 1.0d) {
            return (int) ratio;
        }
        return 1;
    }

    public static int getSampleSizeAutoFitToScreen(int vWidth, int vHeight, int bWidth, int bHeight) {
        if (vHeight == 0 || vWidth == 0) {
            return 1;
        }
        int ratio = Math.max(bWidth / vWidth, bHeight / vHeight);
        int ratioAfterRotate = Math.max(bHeight / vWidth, bWidth / vHeight);
        return Math.min(ratio, ratioAfterRotate);
    }

    public static boolean verifyBitmap(byte[] datas) {
        return verifyBitmap(new ByteArrayInputStream(datas));
    }

    public static boolean verifyBitmap(InputStream input) {
        if (input == null) {
            return false;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (!(input instanceof BufferedInputStream)) {
            input = new BufferedInputStream(input);
        }
        BitmapFactory.decodeStream(input, null, options);
        try {
            input.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return options.outHeight > 0 && options.outWidth > 0;
    }

    public static boolean verifyBitmap(String path) {
        try {
            return verifyBitmap(new FileInputStream(path));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
