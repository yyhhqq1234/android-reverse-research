package com.applovin.impl;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.unity3d.services.UnityAdsConstants;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public final class li extends a2 {
    private final Resources e;
    private final String f;
    private Uri g;
    private AssetFileDescriptor h;
    private InputStream i;
    private long j;
    private boolean k;

    public static class a extends i5 {
        public a(String str, Throwable th, int i) {
            super(str, th, i);
        }
    }

    public li(Context context) {
        super(false);
        this.e = context.getResources();
        this.f = context.getPackageName();
    }

    @Override // com.applovin.impl.h5
    public long a(k5 k5Var) throws a {
        int identifier;
        String str;
        Uri uri = k5Var.a;
        this.g = uri;
        if (!TextUtils.equals("rawresource", uri.getScheme()) && (!TextUtils.equals("android.resource", uri.getScheme()) || uri.getPathSegments().size() != 1 || !((String) b1.a((Object) uri.getLastPathSegment())).matches("\\d+"))) {
            if (TextUtils.equals("android.resource", uri.getScheme())) {
                String strSubstring = (String) b1.a((Object) uri.getPath());
                if (strSubstring.startsWith(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH)) {
                    strSubstring = strSubstring.substring(1);
                }
                String host = uri.getHost();
                StringBuilder sb = new StringBuilder();
                if (TextUtils.isEmpty(host)) {
                    str = "";
                } else {
                    str = host + ":";
                }
                sb.append(str);
                sb.append(strSubstring);
                identifier = this.e.getIdentifier(sb.toString(), "raw", this.f);
                if (identifier == 0) {
                    throw new a("Resource not found.", null, 2005);
                }
            } else {
                throw new a("URI must either use scheme rawresource or android.resource", null, 1004);
            }
        } else {
            try {
                identifier = Integer.parseInt((String) b1.a((Object) uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new a("Resource identifier must be an integer.", null, 1004);
            }
        }
        b(k5Var);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.e.openRawResourceFd(identifier);
            this.h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd != null) {
                long length = assetFileDescriptorOpenRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
                this.i = fileInputStream;
                if (length != -1) {
                    try {
                        if (k5Var.g > length) {
                            throw new a(null, null, 2008);
                        }
                    } catch (a e) {
                        throw e;
                    } catch (IOException e2) {
                        throw new a(null, e2, 2000);
                    }
                }
                long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
                long jSkip = fileInputStream.skip(k5Var.g + startOffset) - startOffset;
                if (jSkip == k5Var.g) {
                    if (length == -1) {
                        FileChannel channel = fileInputStream.getChannel();
                        if (channel.size() == 0) {
                            this.j = -1L;
                        } else {
                            long size = channel.size() - channel.position();
                            this.j = size;
                            if (size < 0) {
                                throw new a(null, null, 2008);
                            }
                        }
                    } else {
                        long j = length - jSkip;
                        this.j = j;
                        if (j < 0) {
                            throw new i5(2008);
                        }
                    }
                    long jMin = k5Var.h;
                    if (jMin != -1) {
                        long j2 = this.j;
                        if (j2 != -1) {
                            jMin = Math.min(j2, jMin);
                        }
                        this.j = jMin;
                    }
                    this.k = true;
                    c(k5Var);
                    long j3 = k5Var.h;
                    return j3 != -1 ? j3 : this.j;
                }
                throw new a(null, null, 2008);
            }
            throw new a("Resource is compressed: " + uri, null, 2000);
        } catch (Resources.NotFoundException e3) {
            throw new a(null, e3, 2005);
        }
    }

    @Override // com.applovin.impl.h5
    public Uri c() {
        return this.g;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0037 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0055 */
    @Override // com.applovin.impl.h5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() {
        /*
            r5 = this;
            r0 = 0
            r5.g = r0
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 0
            java.io.InputStream r3 = r5.i     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            if (r3 == 0) goto Ld
            r3.close()     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
        Ld:
            r5.i = r0
            android.content.res.AssetFileDescriptor r3 = r5.h     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24
            if (r3 == 0) goto L16
            r3.close()     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24
        L16:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L21
            r5.k = r2
            r5.g()
        L21:
            return
        L22:
            r1 = move-exception
            goto L2b
        L24:
            r3 = move-exception
            com.applovin.impl.li$a r4 = new com.applovin.impl.li$a     // Catch: java.lang.Throwable -> L22
            r4.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L22
            throw r4     // Catch: java.lang.Throwable -> L22
        L2b:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L36
            r5.k = r2
            r5.g()
        L36:
            throw r1
        L37:
            r3 = move-exception
            goto L40
        L39:
            r3 = move-exception
            com.applovin.impl.li$a r4 = new com.applovin.impl.li$a     // Catch: java.lang.Throwable -> L37
            r4.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L37
            throw r4     // Catch: java.lang.Throwable -> L37
        L40:
            r5.i = r0
            android.content.res.AssetFileDescriptor r4 = r5.h     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            if (r4 == 0) goto L49
            r4.close()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
        L49:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L54
            r5.k = r2
            r5.g()
        L54:
            throw r3
        L55:
            r1 = move-exception
            goto L5e
        L57:
            r3 = move-exception
            com.applovin.impl.li$a r4 = new com.applovin.impl.li$a     // Catch: java.lang.Throwable -> L55
            r4.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L55
            throw r4     // Catch: java.lang.Throwable -> L55
        L5e:
            r5.h = r0
            boolean r0 = r5.k
            if (r0 == 0) goto L69
            r5.k = r2
            r5.g()
        L69:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.li.close():void");
    }

    @Override // com.applovin.impl.f5
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new a(null, e, 2000);
            }
        }
        int i3 = ((InputStream) xp.a((Object) this.i)).read(bArr, i, i2);
        if (i3 == -1) {
            if (this.j == -1) {
                return -1;
            }
            throw new a("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.j;
        if (j2 != -1) {
            this.j = j2 - ((long) i3);
        }
        d(i3);
        return i3;
    }
}
