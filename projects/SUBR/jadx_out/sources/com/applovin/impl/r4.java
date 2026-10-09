package com.applovin.impl;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.ApplicationMediaCapabilities;
import android.net.Uri;
import android.os.Bundle;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.services.core.device.MimeTypes;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public final class r4 extends a2 {
    private final ContentResolver e;
    private Uri f;
    private AssetFileDescriptor g;
    private FileInputStream h;
    private long i;
    private boolean j;

    public static class b extends i5 {
        public b(IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public r4(Context context) {
        super(false);
        this.e = context.getContentResolver();
    }

    @Override // com.applovin.impl.h5
    public long a(k5 k5Var) throws b {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = k5Var.a;
            this.f = uri;
            b(k5Var);
            if ("content".equals(k5Var.a.getScheme())) {
                Bundle bundle = new Bundle();
                if (xp.a >= 31) {
                    a.a(bundle);
                }
                assetFileDescriptorOpenAssetFileDescriptor = this.e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.e.openAssetFileDescriptor(uri, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
            }
            this.g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                this.h = fileInputStream;
                if (length != -1 && k5Var.g > length) {
                    throw new b(null, 2008);
                }
                long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
                long jSkip = fileInputStream.skip(k5Var.g + startOffset) - startOffset;
                if (jSkip == k5Var.g) {
                    if (length == -1) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.i = -1L;
                        } else {
                            long jPosition = size - channel.position();
                            this.i = jPosition;
                            if (jPosition < 0) {
                                throw new b(null, 2008);
                            }
                        }
                    } else {
                        long j = length - jSkip;
                        this.i = j;
                        if (j < 0) {
                            throw new b(null, 2008);
                        }
                    }
                    long jMin = k5Var.h;
                    if (jMin != -1) {
                        long j2 = this.i;
                        if (j2 != -1) {
                            jMin = Math.min(j2, jMin);
                        }
                        this.i = jMin;
                    }
                    this.j = true;
                    c(k5Var);
                    long j3 = k5Var.h;
                    return j3 != -1 ? j3 : this.i;
                }
                throw new b(null, 2008);
            }
            throw new b(new IOException("Could not open file descriptor for: " + uri), 2000);
        } catch (b e) {
            throw e;
        } catch (IOException e2) {
            throw new b(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.applovin.impl.h5
    public Uri c() {
        return this.f;
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
            r5.f = r0
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 0
            java.io.FileInputStream r3 = r5.h     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
            if (r3 == 0) goto Ld
            r3.close()     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L39
        Ld:
            r5.h = r0
            android.content.res.AssetFileDescriptor r3 = r5.g     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24
            if (r3 == 0) goto L16
            r3.close()     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24
        L16:
            r5.g = r0
            boolean r0 = r5.j
            if (r0 == 0) goto L21
            r5.j = r2
            r5.g()
        L21:
            return
        L22:
            r1 = move-exception
            goto L2b
        L24:
            r3 = move-exception
            com.applovin.impl.r4$b r4 = new com.applovin.impl.r4$b     // Catch: java.lang.Throwable -> L22
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> L22
            throw r4     // Catch: java.lang.Throwable -> L22
        L2b:
            r5.g = r0
            boolean r0 = r5.j
            if (r0 == 0) goto L36
            r5.j = r2
            r5.g()
        L36:
            throw r1
        L37:
            r3 = move-exception
            goto L40
        L39:
            r3 = move-exception
            com.applovin.impl.r4$b r4 = new com.applovin.impl.r4$b     // Catch: java.lang.Throwable -> L37
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> L37
            throw r4     // Catch: java.lang.Throwable -> L37
        L40:
            r5.h = r0
            android.content.res.AssetFileDescriptor r4 = r5.g     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            if (r4 == 0) goto L49
            r4.close()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
        L49:
            r5.g = r0
            boolean r0 = r5.j
            if (r0 == 0) goto L54
            r5.j = r2
            r5.g()
        L54:
            throw r3
        L55:
            r1 = move-exception
            goto L5e
        L57:
            r3 = move-exception
            com.applovin.impl.r4$b r4 = new com.applovin.impl.r4$b     // Catch: java.lang.Throwable -> L55
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> L55
            throw r4     // Catch: java.lang.Throwable -> L55
        L5e:
            r5.g = r0
            boolean r0 = r5.j
            if (r0 == 0) goto L69
            r5.j = r2
            r5.g()
        L69:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.r4.close():void");
    }

    private static final class a {
        public static void a(Bundle bundle) {
            bundle.putParcelable("android.provider.extra.MEDIA_CAPABILITIES", new ApplicationMediaCapabilities.Builder().addSupportedVideoMimeType(MimeTypes.VIDEO_H265).addSupportedHdrType("android.media.feature.hdr.dolby_vision").addSupportedHdrType("android.media.feature.hdr.hdr10").addSupportedHdrType("android.media.feature.hdr.hdr10_plus").addSupportedHdrType("android.media.feature.hdr.hlg").build());
        }
    }

    @Override // com.applovin.impl.f5
    public int a(byte[] bArr, int i, int i2) throws b {
        if (i2 == 0) {
            return 0;
        }
        long j = this.i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new b(e, 2000);
            }
        }
        int i3 = ((FileInputStream) xp.a((Object) this.h)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j2 = this.i;
        if (j2 != -1) {
            this.i = j2 - ((long) i3);
        }
        d(i3);
        return i3;
    }
}
