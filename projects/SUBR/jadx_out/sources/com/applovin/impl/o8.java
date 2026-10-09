package com.applovin.impl;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes.dex */
public final class o8 extends a2 {
    private RandomAccessFile e;
    private Uri f;
    private long g;
    private boolean h;

    public static class b extends i5 {
        public b(String str, Throwable th, int i) {
            super(str, th, i);
        }

        public b(Throwable th, int i) {
            super(th, i);
        }
    }

    public o8() {
        super(false);
    }

    @Override // com.applovin.impl.h5
    public long a(k5 k5Var) throws b {
        Uri uri = k5Var.a;
        this.f = uri;
        b(k5Var);
        RandomAccessFile randomAccessFileA = a(uri);
        this.e = randomAccessFileA;
        try {
            randomAccessFileA.seek(k5Var.g);
            long length = k5Var.h;
            if (length == -1) {
                length = this.e.length() - k5Var.g;
            }
            this.g = length;
            if (length >= 0) {
                this.h = true;
                c(k5Var);
                return this.g;
            }
            throw new b(null, null, 2008);
        } catch (IOException e) {
            throw new b(e, 2000);
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
            java.io.RandomAccessFile r2 = r5.e     // Catch: java.lang.Throwable -> L17 java.io.IOException -> L19
            if (r2 == 0) goto Lb
            r2.close()     // Catch: java.lang.Throwable -> L17 java.io.IOException -> L19
        Lb:
            r5.e = r0
            boolean r0 = r5.h
            if (r0 == 0) goto L16
            r5.h = r1
            r5.g()
        L16:
            return
        L17:
            r2 = move-exception
            goto L22
        L19:
            r2 = move-exception
            com.applovin.impl.o8$b r3 = new com.applovin.impl.o8$b     // Catch: java.lang.Throwable -> L17
            r4 = 2000(0x7d0, float:2.803E-42)
            r3.<init>(r2, r4)     // Catch: java.lang.Throwable -> L17
            throw r3     // Catch: java.lang.Throwable -> L17
        L22:
            r5.e = r0
            boolean r0 = r5.h
            if (r0 == 0) goto L2d
            r5.h = r1
            r5.g()
        L2d:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.o8.close():void");
    }

    private static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    @Override // com.applovin.impl.f5
    public int a(byte[] bArr, int i, int i2) throws b {
        if (i2 == 0) {
            return 0;
        }
        if (this.g == 0) {
            return -1;
        }
        try {
            int i3 = ((RandomAccessFile) xp.a((Object) this.e)).read(bArr, i, (int) Math.min(this.g, i2));
            if (i3 > 0) {
                this.g -= (long) i3;
                d(i3);
            }
            return i3;
        } catch (IOException e) {
            throw new b(e, 2000);
        }
    }

    private static RandomAccessFile a(Uri uri) throws b {
        try {
            return new RandomAccessFile((String) b1.a((Object) uri.getPath()), AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new b(e, (xp.a < 21 || !a.b(e.getCause())) ? 2005 : 2006);
            }
            throw new b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e, 1004);
        } catch (SecurityException e2) {
            throw new b(e2, 2006);
        } catch (RuntimeException e3) {
            throw new b(e3, 2000);
        }
    }
}
