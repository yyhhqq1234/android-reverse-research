package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageUtils {
    private static void revitionImageSizeHD(String picfile, int size, int quality) throws IOException {
        Bitmap outputBitmap;
        if (size <= 0) {
            throw new IllegalArgumentException("size must be greater than 0!");
        }
        if (!isFileExisted(picfile)) {
            if (picfile == null) {
                picfile = "null";
            }
            throw new FileNotFoundException(picfile);
        }
        if (!BitmapHelper.verifyBitmap(picfile)) {
            throw new IOException("");
        }
        int photoSizesOrg = size * 2;
        FileInputStream input = new FileInputStream(picfile);
        BitmapFactory.Options opts = new BitmapFactory.Options();
        opts.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(input, null, opts);
        try {
            input.close();
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        int i = 0;
        while (true) {
            if ((opts.outWidth >> i) <= photoSizesOrg && (opts.outHeight >> i) <= photoSizesOrg) {
                break;
            } else {
                i++;
            }
        }
        int rate = i;
        opts.inSampleSize = (int) Math.pow(2.0d, rate);
        opts.inJustDecodeBounds = false;
        Bitmap temp = safeDecodeBimtapFile(picfile, opts);
        if (temp == null) {
            throw new IOException("Bitmap decode error!");
        }
        deleteDependon(picfile);
        makesureFileExist(picfile);
        int org2 = temp.getWidth() > temp.getHeight() ? temp.getWidth() : temp.getHeight();
        float rateOutPut = size / org2;
        if (rateOutPut < 1.0f) {
            while (true) {
                try {
                    outputBitmap = Bitmap.createBitmap((int) (temp.getWidth() * rateOutPut), (int) (temp.getHeight() * rateOutPut), Bitmap.Config.ARGB_8888);
                    break;
                } catch (OutOfMemoryError e) {
                    System.gc();
                    rateOutPut = (float) (rateOutPut * 0.8d);
                }
            }
            if (outputBitmap == null) {
                temp.recycle();
            }
            Canvas canvas = new Canvas(outputBitmap);
            Matrix matrix = new Matrix();
            matrix.setScale(rateOutPut, rateOutPut);
            canvas.drawBitmap(temp, matrix, new Paint());
            temp.recycle();
            temp = outputBitmap;
        }
        FileOutputStream output = new FileOutputStream(picfile);
        if (opts != null && opts.outMimeType != null && opts.outMimeType.contains("png")) {
            temp.compress(Bitmap.CompressFormat.PNG, quality, output);
        } else {
            temp.compress(Bitmap.CompressFormat.JPEG, quality, output);
        }
        try {
            output.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        temp.recycle();
    }

    private static void revitionImageSize(String picfile, int size, int quality) throws IOException {
        if (size <= 0) {
            throw new IllegalArgumentException("size must be greater than 0!");
        }
        if (!isFileExisted(picfile)) {
            if (picfile == null) {
                picfile = "null";
            }
            throw new FileNotFoundException(picfile);
        }
        if (!BitmapHelper.verifyBitmap(picfile)) {
            throw new IOException("");
        }
        FileInputStream input = new FileInputStream(picfile);
        BitmapFactory.Options opts = new BitmapFactory.Options();
        opts.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(input, null, opts);
        try {
            input.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        int i = 0;
        while (true) {
            if ((opts.outWidth >> i) <= size && (opts.outHeight >> i) <= size) {
                break;
            } else {
                i++;
            }
        }
        int rate = i;
        opts.inSampleSize = (int) Math.pow(2.0d, rate);
        opts.inJustDecodeBounds = false;
        Bitmap temp = safeDecodeBimtapFile(picfile, opts);
        if (temp == null) {
            throw new IOException("Bitmap decode error!");
        }
        deleteDependon(picfile);
        makesureFileExist(picfile);
        FileOutputStream output = new FileOutputStream(picfile);
        if (opts != null && opts.outMimeType != null && opts.outMimeType.contains("png")) {
            temp.compress(Bitmap.CompressFormat.PNG, quality, output);
        } else {
            temp.compress(Bitmap.CompressFormat.JPEG, quality, output);
        }
        try {
            output.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        temp.recycle();
    }

    public static boolean revitionPostImageSize(Context context, String picfile) {
        try {
            if (NetworkHelper.isWifiValid(context)) {
                revitionImageSizeHD(picfile, 1600, 75);
            } else {
                revitionImageSize(picfile, 1024, 75);
            }
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static Bitmap safeDecodeBimtapFile(String bmpFile, BitmapFactory.Options opts) {
        BitmapFactory.Options optsTmp = opts;
        if (optsTmp == null) {
            optsTmp = new BitmapFactory.Options();
            optsTmp.inSampleSize = 1;
        }
        Bitmap bmp = null;
        FileInputStream input = null;
        int i = 0;
        while (true) {
            FileInputStream input2 = input;
            if (i >= 5) {
                break;
            }
            try {
                input = new FileInputStream(bmpFile);
                try {
                    bmp = BitmapFactory.decodeStream(input, null, opts);
                    try {
                        input.close();
                        break;
                    } catch (IOException e) {
                        e.printStackTrace();
                        break;
                    }
                } catch (FileNotFoundException e2) {
                } catch (OutOfMemoryError e3) {
                    e = e3;
                    e.printStackTrace();
                    optsTmp.inSampleSize *= 2;
                    try {
                        input.close();
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    }
                    i++;
                }
            } catch (FileNotFoundException e4) {
            } catch (OutOfMemoryError e5) {
                e = e5;
                input = input2;
            }
            i++;
        }
        return bmp;
    }

    private static void delete(File file) {
        if (file != null && file.exists() && !file.delete()) {
            throw new RuntimeException(String.valueOf(file.getAbsolutePath()) + " doesn't be deleted!");
        }
    }

    private static boolean deleteDependon(String filepath) {
        if (TextUtils.isEmpty(filepath)) {
            return false;
        }
        File file = new File(filepath);
        int retryCount = 1;
        int maxRetryCount = 0 < 1 ? 5 : 0;
        boolean isDeleted = false;
        if (file == null) {
            return false;
        }
        while (!isDeleted && retryCount <= maxRetryCount && file.isFile() && file.exists()) {
            isDeleted = file.delete();
            if (!isDeleted) {
                retryCount++;
            }
        }
        return isDeleted;
    }

    private static boolean isFileExisted(String filepath) {
        File file;
        return (TextUtils.isEmpty(filepath) || (file = new File(filepath)) == null || !file.exists()) ? false : true;
    }

    private static boolean isParentExist(File file) {
        File parent;
        if (file == null || (parent = file.getParentFile()) == null || parent.exists()) {
            return false;
        }
        return file.exists() || file.mkdirs();
    }

    private static void makesureFileExist(String filePath) {
        File file;
        if (filePath != null && (file = new File(filePath)) != null && !file.exists() && isParentExist(file)) {
            if (file.exists()) {
                delete(file);
            }
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean isWifi(Context mContext) {
        ConnectivityManager connectivityManager = (ConnectivityManager) mContext.getSystemService("connectivity");
        NetworkInfo activeNetInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetInfo != null && activeNetInfo.getType() == 1;
    }
}
