package com.applovin.impl.sdk.nativeAd;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.u2;
import com.applovin.impl.yl;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class a extends yl {
    private final u2 h;
    private final AppLovinNativeAdImpl i;
    private final InterfaceC0038a j;

    /* JADX INFO: renamed from: com.applovin.impl.sdk.nativeAd.a$a, reason: collision with other inner class name */
    public interface InterfaceC0038a {
        void a(AppLovinNativeAdImpl appLovinNativeAdImpl);
    }

    public a(AppLovinNativeAdImpl appLovinNativeAdImpl, j jVar, InterfaceC0038a interfaceC0038a) {
        super("TaskCacheNativeAd", jVar);
        this.h = new u2();
        this.i = appLovinNativeAdImpl;
        this.j = interfaceC0038a;
    }

    private float a(Uri uri) {
        File file = new File(uri.getPath());
        if (!file.exists()) {
            return -1.0f;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(fileInputStream, null, options);
                int i = options.outWidth;
                int i2 = options.outHeight;
                if (i <= 0 || i2 <= 0) {
                    fileInputStream.close();
                    return -1.0f;
                }
                float f = i / i2;
                fileInputStream.close();
                return f;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            if (n.a()) {
                this.c.a(this.b, "Failed to calculate aspect ratio", e);
            }
        }
    }

    private Uri b(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (n.a()) {
            this.c.a(this.b, "Attempting to cache resource: " + uri);
        }
        String strA = this.a.A().a(a(), uri.toString(), this.i.getCachePrefix(), Collections.emptyList(), false, false, this.h, 1);
        if (TextUtils.isEmpty(strA)) {
            if (n.a()) {
                this.c.b(this.b, "Unable to cache resource for uri: " + uri);
            }
            return null;
        }
        File fileA = this.a.A().a(strA, a());
        if (fileA != null) {
            Uri uriFromFile = Uri.fromFile(fileA);
            if (uriFromFile != null) {
                return uriFromFile;
            }
            if (n.a()) {
                this.c.b(this.b, "Unable to extract Uri from image file");
            }
            return null;
        }
        if (n.a()) {
            this.c.b(this.b, "Unable to retrieve File from cached image filename = " + strA);
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (n.a()) {
            this.c.a(this.b, "Begin caching ad #" + this.i.getAdIdNumber() + "...");
        }
        Uri uriB = b(this.i.getIconUri());
        if (uriB != null) {
            this.i.setIconUri(uriB);
        }
        Uri uriB2 = b(this.i.getMainImageUri());
        if (uriB2 != null) {
            this.i.setMainImageUri(uriB2);
            float fA = a(uriB2);
            if (fA > 0.0f) {
                this.i.setMainImageAspectRatio(fA);
            }
        }
        Uri uriB3 = b(this.i.getPrivacyIconUri());
        if (uriB3 != null) {
            this.i.setPrivacyIconUri(uriB3);
        }
        if (n.a()) {
            this.c.a(this.b, "Finished caching ad #" + this.i.getAdIdNumber());
        }
        this.j.a(this.i);
    }
}
