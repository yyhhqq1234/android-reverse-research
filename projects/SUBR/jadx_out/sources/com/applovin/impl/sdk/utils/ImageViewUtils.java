package com.applovin.impl.sdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.StrictMode;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sj;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class ImageViewUtils {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(final j jVar, String str, final ImageView imageView, Uri uri) {
        if (!((Boolean) jVar.a(sj.z)).booleanValue()) {
            InputStream inputStreamOpenStream = null;
            try {
                inputStreamOpenStream = new URL(str).openStream();
                final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenStream);
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.b(jVar, bitmapDecodeStream, imageView);
                    }
                });
                yp.a(inputStreamOpenStream, jVar);
                return;
            } catch (Throwable th) {
                try {
                    jVar.I();
                    if (n.a()) {
                        jVar.I().a("ImageViewUtils", "Failed to fetch image: " + uri, th);
                    }
                    return;
                } finally {
                    yp.a(inputStreamOpenStream, jVar);
                }
            }
        }
        try {
            InputStream inputStreamOpenStream2 = new URL(str).openStream();
            try {
                final Bitmap bitmapDecodeStream2 = BitmapFactory.decodeStream(inputStreamOpenStream2);
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.a(jVar, bitmapDecodeStream2, imageView);
                    }
                });
                if (inputStreamOpenStream2 != null) {
                    inputStreamOpenStream2.close();
                }
            } catch (Throwable th2) {
                if (inputStreamOpenStream2 != null) {
                    try {
                        inputStreamOpenStream2.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (Throwable th4) {
            jVar.I();
            if (n.a()) {
                jVar.I().a("ImageViewUtils", "Failed to fetch image: " + uri, th4);
            }
            jVar.I().a("ImageViewUtils", th4);
            jVar.D().a("ImageViewUtils", "setImageUri", th4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(ImageView imageView, Uri uri) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        imageView.setImageURI(uri);
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
    }

    public static void setAndDownscaleBitmap(final ImageView imageView, final Uri uri) {
        if (uri == null || imageView == null) {
            return;
        }
        j jVar = j.u0;
        if (jVar == null) {
            n.h("ImageViewUtils", "SDK has not been initialized");
        } else {
            jVar.i0().b().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.a(uri, imageView);
                }
            });
        }
    }

    public static void setAndDownscaleImageUri(final ImageView imageView, final Uri uri) {
        if (uri == null || imageView == null) {
            return;
        }
        if (imageView.getHeight() <= 0 || imageView.getWidth() <= 0) {
            imageView.post(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.setAndDownscaleBitmap(imageView, uri);
                }
            });
        } else {
            setAndDownscaleBitmap(imageView, uri);
        }
    }

    public static void setImageUri(final ImageView imageView, final Uri uri, final j jVar) {
        if (imageView == null || uri == null) {
            return;
        }
        final String string = uri.toString();
        if (URLUtil.isFileUrl(string) || URLUtil.isContentUrl(string)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.b(imageView, uri);
                }
            });
            return;
        }
        if (jVar == null) {
            return;
        }
        jVar.I();
        if (n.a()) {
            jVar.I().a("ImageViewUtils", "Fetching image: " + uri);
        }
        jVar.i0().b().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ImageViewUtils.a(jVar, string, imageView, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(j jVar, Bitmap bitmap, ImageView imageView) {
        jVar.I();
        if (n.a()) {
            jVar.I().a("ImageViewUtils", "Image fetched");
        }
        imageView.setImageDrawable(new BitmapDrawable(j.m().getResources(), bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(j jVar, Bitmap bitmap, ImageView imageView) {
        jVar.I();
        if (n.a()) {
            jVar.I().a("ImageViewUtils", "Image fetched");
        }
        imageView.setImageDrawable(new BitmapDrawable(j.m().getResources(), bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Uri uri, final ImageView imageView) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        if (height <= 0 || width <= 0) {
            Point pointB = z3.b(imageView.getContext());
            height = Math.min(pointB.x, pointB.y);
            width = height;
        }
        int i2 = options.outHeight;
        int i3 = options.outWidth;
        if (i2 > height || i3 > width) {
            while (true) {
                int i4 = i * 2;
                if (i2 / i4 < height && i3 / i4 < width) {
                    break;
                } else {
                    i = i4;
                }
            }
        }
        options.inSampleSize = i;
        options.inJustDecodeBounds = false;
        j.u0.I();
        if (n.a()) {
            j.u0.I().a("ImageViewUtils", "Loading image: " + uri.getLastPathSegment() + "...");
        }
        final Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(uri.getPath(), options);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.ImageViewUtils$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                imageView.setImageBitmap(bitmapDecodeFile);
            }
        });
    }
}
