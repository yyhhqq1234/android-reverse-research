package com.netease.mpay.widget;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.view.ViewCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import com.netease.mpay.Cdo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public class z {
    public static Bitmap a(Activity activity, File file) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.densityDpi <= 240 ? 2 : 1;
        try {
            int a = ad.a(file);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i;
            FileInputStream fileInputStream = new FileInputStream(file);
            Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
            fileInputStream.close();
            Matrix matrix = new Matrix();
            matrix.setRotate(a);
            return a == 0 ? decodeStream : Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
        } catch (FileNotFoundException e) {
            Cdo.a((Throwable) e);
            return null;
        } catch (IOException e2) {
            Cdo.a((Throwable) e2);
            return null;
        }
    }

    public static Bitmap a(String str) {
        TextPaint textPaint = new TextPaint();
        textPaint.setAntiAlias(true);
        textPaint.setTextSize(18.0f);
        textPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        StaticLayout staticLayout = new StaticLayout(str, textPaint, 460, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        int height = staticLayout.getHeight() + 40;
        Bitmap createBitmap = Bitmap.createBitmap(500, height, Bitmap.Config.ARGB_8888);
        int[] iArr = new int[height * 500];
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < 500; i2++) {
                int i3 = (i * 500) + i2;
                iArr[i3] = ((((iArr[i3] >> 16) & 255) | 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((((iArr[i3] >> 8) & 255) | 255) << 8) | (iArr[i3] & 255) | 255;
            }
        }
        createBitmap.setPixels(iArr, 0, 500, 0, 0, 500, height);
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate(20.0f, 20.0f);
        staticLayout.draw(canvas);
        return createBitmap;
    }

    public static boolean a(Context context, Bitmap bitmap) {
        File file = new File(Environment.getExternalStorageDirectory(), "netease");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, System.currentTimeMillis() + ".jpg");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("date_modified", Long.valueOf(new Date().getTime()));
            contentValues.put("mime_type", "image/jpeg");
            contentValues.put("_data", file2.getPath());
            context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues)));
            return true;
        } catch (FileNotFoundException e) {
            Cdo.a((Throwable) e);
            return false;
        } catch (IOException e2) {
            Cdo.a((Throwable) e2);
            return false;
        }
    }
}
