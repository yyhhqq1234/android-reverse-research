package com.netease.mcount;

import com.netease.push.proto.ProtoClientWrapper;
import io.netty.handler.codec.http.HttpConstants;

/* loaded from: classes.dex */
class d extends c {
    private static final byte[] g = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, ProtoClientWrapper.PUSH_TYPE, ProtoClientWrapper.RESET_TYPE, ProtoClientWrapper.NEW_ID_TYPE, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] h = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, ProtoClientWrapper.PUSH_TYPE, ProtoClientWrapper.RESET_TYPE, ProtoClientWrapper.NEW_ID_TYPE, 53, 54, 55, 56, 57, 45, 95};
    int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    private final byte[] i;
    private int j;
    private final byte[] k;

    public d(int i, byte[] bArr) {
        this.a = bArr;
        this.d = (i & 1) == 0;
        this.e = (i & 2) == 0;
        this.f = (i & 4) != 0;
        this.k = (i & 8) == 0 ? g : h;
        this.i = new byte[2];
        this.c = 0;
        this.j = this.e ? 19 : -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean a(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int i4;
        byte b;
        int i5;
        int i6;
        byte b2;
        int i7;
        byte b3;
        int i8;
        int i9;
        int i10;
        byte[] bArr2 = this.k;
        byte[] bArr3 = this.a;
        int i11 = 0;
        int i12 = this.j;
        int i13 = i2 + i;
        int i14 = -1;
        switch (this.c) {
            case 0:
                i3 = i;
                break;
            case 1:
                if (i + 2 <= i13) {
                    int i15 = i + 1;
                    i14 = ((this.i[0] & 255) << 16) | ((bArr[i] & 255) << 8) | (bArr[i15] & 255);
                    this.c = 0;
                    i3 = i15 + 1;
                    break;
                }
                i3 = i;
                break;
            case 2:
                if (i + 1 <= i13) {
                    i3 = i + 1;
                    i14 = ((this.i[0] & 255) << 16) | ((this.i[1] & 255) << 8) | (bArr[i] & 255);
                    this.c = 0;
                    break;
                }
                i3 = i;
                break;
            default:
                i3 = i;
                break;
        }
        if (i14 != -1) {
            bArr3[0] = bArr2[(i14 >> 18) & 63];
            bArr3[1] = bArr2[(i14 >> 12) & 63];
            bArr3[2] = bArr2[(i14 >> 6) & 63];
            i11 = 4;
            bArr3[3] = bArr2[i14 & 63];
            i12--;
            if (i12 == 0) {
                if (this.f) {
                    i10 = 5;
                    bArr3[4] = HttpConstants.CR;
                } else {
                    i10 = 4;
                }
                i11 = i10 + 1;
                bArr3[i10] = 10;
                i12 = 19;
            }
        }
        while (true) {
            int i16 = i12;
            int i17 = i11;
            if (i3 + 3 > i13) {
                if (z) {
                    if (i3 - this.c == i13 - 1) {
                        if (this.c > 0) {
                            i8 = 1;
                            b3 = this.i[0];
                        } else {
                            int i18 = i3 + 1;
                            b3 = bArr[i3];
                            i8 = 0;
                        }
                        int i19 = (b3 & 255) << 4;
                        this.c -= i8;
                        int i20 = i17 + 1;
                        bArr3[i17] = bArr2[(i19 >> 6) & 63];
                        int i21 = i20 + 1;
                        bArr3[i20] = bArr2[i19 & 63];
                        if (this.d) {
                            int i22 = i21 + 1;
                            bArr3[i21] = HttpConstants.EQUALS;
                            i21 = i22 + 1;
                            bArr3[i22] = HttpConstants.EQUALS;
                        }
                        if (this.e) {
                            if (this.f) {
                                bArr3[i21] = HttpConstants.CR;
                                i21++;
                            }
                            bArr3[i21] = 10;
                            i21++;
                        }
                        i17 = i21;
                    } else if (i3 - this.c == i13 - 2) {
                        if (this.c > 1) {
                            i6 = 1;
                            b = this.i[0];
                            i5 = i3;
                        } else {
                            b = bArr[i3];
                            i5 = i3 + 1;
                            i6 = 0;
                        }
                        int i23 = (b & 255) << 10;
                        if (this.c > 0) {
                            b2 = this.i[i6];
                            i6++;
                        } else {
                            int i24 = i5 + 1;
                            b2 = bArr[i5];
                        }
                        int i25 = ((b2 & 255) << 2) | i23;
                        this.c -= i6;
                        int i26 = i17 + 1;
                        bArr3[i17] = bArr2[(i25 >> 12) & 63];
                        int i27 = i26 + 1;
                        bArr3[i26] = bArr2[(i25 >> 6) & 63];
                        int i28 = i27 + 1;
                        bArr3[i27] = bArr2[i25 & 63];
                        if (this.d) {
                            i7 = i28 + 1;
                            bArr3[i28] = HttpConstants.EQUALS;
                        } else {
                            i7 = i28;
                        }
                        if (this.e) {
                            if (this.f) {
                                bArr3[i7] = HttpConstants.CR;
                                i7++;
                            }
                            bArr3[i7] = 10;
                            i7++;
                        }
                        i17 = i7;
                    } else if (this.e && i17 > 0 && i16 != 19) {
                        if (this.f) {
                            i4 = i17 + 1;
                            bArr3[i17] = HttpConstants.CR;
                        } else {
                            i4 = i17;
                        }
                        i17 = i4 + 1;
                        bArr3[i4] = 10;
                    }
                } else if (i3 == i13 - 1) {
                    byte[] bArr4 = this.i;
                    int i29 = this.c;
                    this.c = i29 + 1;
                    bArr4[i29] = bArr[i3];
                } else if (i3 == i13 - 2) {
                    byte[] bArr5 = this.i;
                    int i30 = this.c;
                    this.c = i30 + 1;
                    bArr5[i30] = bArr[i3];
                    byte[] bArr6 = this.i;
                    int i31 = this.c;
                    this.c = i31 + 1;
                    bArr6[i31] = bArr[i3 + 1];
                }
                this.b = i17;
                this.j = i16;
                return true;
            }
            int i32 = ((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8) | (bArr[i3 + 2] & 255);
            bArr3[i17] = bArr2[(i32 >> 18) & 63];
            bArr3[i17 + 1] = bArr2[(i32 >> 12) & 63];
            bArr3[i17 + 2] = bArr2[(i32 >> 6) & 63];
            bArr3[i17 + 3] = bArr2[i32 & 63];
            i3 += 3;
            i11 = i17 + 4;
            i12 = i16 - 1;
            if (i12 == 0) {
                if (this.f) {
                    i9 = i11 + 1;
                    bArr3[i11] = HttpConstants.CR;
                } else {
                    i9 = i11;
                }
                i11 = i9 + 1;
                bArr3[i9] = 10;
                i12 = 19;
            }
        }
    }
}
