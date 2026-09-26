package com.netease.mpay.widget;

import android.media.ExifInterface;
import android.util.Log;
import com.netease.mpay.Cdo;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ad {
    public static int a(File file) {
        ExifInterface exifInterface;
        if (file == null) {
            return 0;
        }
        try {
            exifInterface = new ExifInterface(file.getAbsolutePath());
        } catch (IOException e) {
            Cdo.a((Throwable) e);
            exifInterface = null;
        }
        if (exifInterface == null) {
            return 0;
        }
        switch (exifInterface.getAttributeInt("Orientation", -1)) {
            case 3:
                return 180;
            case 4:
            case 5:
            case 7:
            default:
                return 0;
            case 6:
                return 90;
            case 8:
                return 270;
        }
    }

    public static int a(byte[] bArr) {
        int i;
        int i2;
        if (bArr == null) {
            return 0;
        }
        int i3 = 0;
        while (i3 + 3 < bArr.length) {
            int i4 = i3 + 1;
            if ((bArr[i3] & 255) != 255) {
                i2 = i4;
                i = 0;
                break;
            }
            int i5 = bArr[i4] & 255;
            if (i5 != 255) {
                i3 = i4 + 1;
                if (i5 != 216 && i5 != 1) {
                    if (i5 == 217) {
                        break;
                    }
                    if (i5 != 218) {
                        int a = a(bArr, i3, 2, false);
                        if (a >= 2 && i3 + a <= bArr.length) {
                            if (i5 == 225 && a >= 8 && a(bArr, i3 + 2, 4, false) == 1165519206 && a(bArr, i3 + 6, 2, false) == 0) {
                                i2 = i3 + 8;
                                i = a - 8;
                                break;
                            }
                            i3 += a;
                        } else {
                            Log.e("CameraExif", "Invalid length");
                            return 0;
                        }
                    } else {
                        i = 0;
                        i2 = i3;
                        break;
                    }
                }
            } else {
                i3 = i4;
            }
        }
        i = 0;
        i2 = i3;
        if (i > 8) {
            int a2 = a(bArr, i2, 4, false);
            if (a2 != 1229531648 && a2 != 1296891946) {
                Log.e("CameraExif", "Invalid byte order");
                return 0;
            }
            boolean z = a2 == 1229531648;
            int a3 = a(bArr, i2 + 4, 4, z) + 2;
            if (a3 >= 10 && a3 <= i) {
                int i6 = i2 + a3;
                int i7 = i - a3;
                int a4 = a(bArr, i6 - 2, 2, z);
                int i8 = i6;
                int i9 = i7;
                while (true) {
                    int i10 = a4 - 1;
                    if (a4 <= 0 || i9 < 12) {
                        break;
                    }
                    if (a(bArr, i8, 2, z) == 274) {
                        switch (a(bArr, i8 + 8, 2, z)) {
                            case 1:
                                return 0;
                            case 2:
                            case 4:
                            case 5:
                            case 7:
                            default:
                                Log.i("CameraExif", "Unsupported orientation");
                                return 0;
                            case 3:
                                return 180;
                            case 6:
                                return 90;
                            case 8:
                                return 270;
                        }
                    }
                    i8 += 12;
                    i9 -= 12;
                    a4 = i10;
                }
            } else {
                Log.e("CameraExif", "Invalid offset");
                return 0;
            }
        }
        Log.i("CameraExif", "Orientation not found");
        return 0;
    }

    private static int a(byte[] bArr, int i, int i2, boolean z) {
        int i3 = 1;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        }
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i4;
            }
            i4 = (i4 << 8) | (bArr[i] & 255);
            i += i3;
            i2 = i5;
        }
    }
}
