package com.netease.unisdk.gmbridge.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.netease.unisdk.gmbridge.log.NgLog;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes.dex */
public class BitmapUtil {
    private static final int DEFAULT_DECODE_MEMORY_LIMIT = 2097152;
    private static final String TAG = "gm_bridge BitmapUtil";

    public static Bitmap decodeResource(Context context, String name) {
        return BitmapFactory.decodeResource(context.getResources(), ResIdReader.getDrawableId(context, name));
    }

    public static Bitmap decodeFile(String path, int reqWidth, int reqHeight) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(path, options);
    }

    public static Bitmap decodeFile(String path) {
        return BitmapFactory.decodeFile(path);
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > reqHeight || width > reqWidth) {
            int halfHeight = height / 2;
            int halfWidth = width / 2;
            while (halfHeight / inSampleSize > reqHeight && halfWidth / inSampleSize > reqWidth) {
                inSampleSize *= 2;
            }
        }
        return inSampleSize;
    }

    public static Bitmap createBitmap(Context context, Object imgParam) {
        if (imgParam == null) {
            return null;
        }
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        if (imgParam instanceof Uri) {
            decodeStream(context, (Uri) imgParam, opt);
        } else if (imgParam instanceof String) {
            decodeFile((String) imgParam, opt);
        }
        opt.inJustDecodeBounds = false;
        NgLog.i(TAG, "JustDecodeBounds : [%d,%d]", Integer.valueOf(opt.outWidth), Integer.valueOf(opt.outHeight));
        if (opt.outWidth <= 0 || opt.outHeight <= 0) {
            return getBitmap(context, imgParam, opt);
        }
        int originalSize = opt.outWidth * 2 * opt.outHeight;
        NgLog.d(TAG, "original bitmap size = %d", Integer.valueOf(originalSize));
        if (originalSize > 2097152) {
            int scale = originalSize / 2097152;
            int sample = 1;
            while (sample < scale) {
                sample *= 4;
            }
            int inSampleSize = (int) Math.sqrt(sample);
            NgLog.d(TAG, "scale = %d,inSampleSize = %d", Integer.valueOf(scale), Integer.valueOf(inSampleSize));
            opt.inSampleSize = inSampleSize;
        }
        return getBitmap(context, imgParam, opt);
    }

    private static Bitmap getBitmap(Context context, Object imgParam, BitmapFactory.Options opt) {
        if (imgParam instanceof Uri) {
            return decodeStream(context, (Uri) imgParam, opt);
        }
        if (imgParam instanceof String) {
            return decodeFile((String) imgParam, opt);
        }
        return null;
    }

    private static Bitmap decodeFile(String filePath, BitmapFactory.Options opt) {
        return BitmapFactory.decodeFile(filePath, opt);
    }

    private static Bitmap decodeStream(Context context, Uri uri, BitmapFactory.Options opt) {
        InputStream stream = FileUtil.getInputStreamFromUri(context, uri);
        if (stream == null) {
            return null;
        }
        return BitmapFactory.decodeStream(stream, null, opt);
    }

    public static boolean saveBitmap(Bitmap source, File dest, int sizeLimit) {
        int quality = 75;
        double scale = 1.0d;
        ByteArrayOutputStream outputBuffer = new ByteArrayOutputStream();
        Bitmap image = source;
        int srcW = source.getWidth();
        int srcH = source.getHeight();
        int std = Math.min(srcW, srcH);
        boolean compressResult = true;
        while (true) {
            NgLog.i(TAG, "start compress ...");
            image.compress(Bitmap.CompressFormat.JPEG, quality, outputBuffer);
            if (outputBuffer.size() < sizeLimit) {
                NgLog.i(TAG, "compress finish,size = %d", Integer.valueOf(outputBuffer.size()));
                if (image != source) {
                    image.recycle();
                }
            } else {
                if (std * scale < 100.0d) {
                    quality -= 15;
                    NgLog.i(TAG, "reduce quality to %d", Integer.valueOf(quality));
                    if (quality < 30) {
                        if (image != source) {
                            image.recycle();
                        }
                        NgLog.e(TAG, "can't reduce quality any more");
                        compressResult = false;
                    }
                } else {
                    scale /= 2.0d;
                    NgLog.i(TAG, "scale bitmap to %d", Double.valueOf(scale));
                    Bitmap tmp = image;
                    image = Bitmap.createScaledBitmap(source, (int) (source.getWidth() * scale), (int) (source.getHeight() * scale), false);
                    if (tmp != source) {
                        tmp.recycle();
                    }
                }
                outputBuffer.reset();
            }
        }
        if (!compressResult) {
            return false;
        }
        return FileUtil.writeFile(outputBuffer, dest);
    }
}
