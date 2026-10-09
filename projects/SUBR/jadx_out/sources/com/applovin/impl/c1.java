package com.applovin.impl;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.unity3d.services.UnityAdsConstants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class c1 extends a2 {
    private final AssetManager e;
    private Uri f;
    private InputStream g;
    private long h;
    private boolean i;

    public static final class a extends i5 {
        public a(Throwable th, int i) {
            super(th, i);
        }
    }

    public c1(Context context) {
        super(false);
        this.e = context.getAssets();
    }

    @Override // com.applovin.impl.h5
    public long a(k5 k5Var) throws a {
        try {
            Uri uri = k5Var.a;
            this.f = uri;
            String strSubstring = (String) b1.a((Object) uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH)) {
                strSubstring = strSubstring.substring(1);
            }
            b(k5Var);
            InputStream inputStreamOpen = this.e.open(strSubstring, 1);
            this.g = inputStreamOpen;
            if (inputStreamOpen.skip(k5Var.g) >= k5Var.g) {
                long j = k5Var.h;
                if (j != -1) {
                    this.h = j;
                } else {
                    long jAvailable = this.g.available();
                    this.h = jAvailable;
                    if (jAvailable == 2147483647L) {
                        this.h = -1L;
                    }
                }
                this.i = true;
                c(k5Var);
                return this.h;
            }
            throw new a(null, 2008);
        } catch (a e) {
            throw e;
        } catch (IOException e2) {
            throw new a(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.applovin.impl.h5
    public Uri c() {
        return this.f;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0017 */
    @Override // com.applovin.impl.h5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() {
        /*
            r5 = this;
            r0 = 0
            r5.f = r0
            r1 = 0
            java.io.InputStream r2 = r5.g     // Catch: java.lang.Throwable -> L17 java.io.IOException -> L19
            if (r2 == 0) goto Lb
            r2.close()     // Catch: java.lang.Throwable -> L17 java.io.IOException -> L19
        Lb:
            r5.g = r0
            boolean r0 = r5.i
            if (r0 == 0) goto L16
            r5.i = r1
            r5.g()
        L16:
            return
        L17:
            r2 = move-exception
            goto L22
        L19:
            r2 = move-exception
            com.applovin.impl.c1$a r3 = new com.applovin.impl.c1$a     // Catch: java.lang.Throwable -> L17
            r4 = 2000(0x7d0, float:2.803E-42)
            r3.<init>(r2, r4)     // Catch: java.lang.Throwable -> L17
            throw r3     // Catch: java.lang.Throwable -> L17
        L22:
            r5.g = r0
            boolean r0 = r5.i
            if (r0 == 0) goto L2d
            r5.i = r1
            r5.g()
        L2d:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.c1.close():void");
    }

    @Override // com.applovin.impl.f5
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new a(e, 2000);
            }
        }
        int i3 = ((InputStream) xp.a((Object) this.g)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j2 = this.h;
        if (j2 != -1) {
            this.h = j2 - ((long) i3);
        }
        d(i3);
        return i3;
    }
}
