package com.netease.mpay.widget;

import com.dodola.rocoo.Hack;
import com.netease.push.proto.ProtoClientWrapper;
import io.netty.handler.codec.http.HttpConstants;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class y {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class a {
        public byte[] a;
        public int b;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends a {
        private static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int e;
        private int f;
        private final int[] g;

        public b(int i, byte[] bArr) {
            this.a = bArr;
            this.g = (i & 8) == 0 ? c : d;
            this.e = 0;
            this.f = 0;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
        
            if (r14 != false) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
        
            r10.e = r3;
            r10.f = r2;
            r10.b = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0105, code lost:
        
            switch(r3) {
                case 0: goto L58;
                case 1: goto L59;
                case 2: goto L60;
                case 3: goto L61;
                case 4: goto L62;
                default: goto L58;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0108, code lost:
        
            r10.e = r3;
            r10.b = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x010f, code lost:
        
            r10.e = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0115, code lost:
        
            r5[r0] = (byte) (r2 >> 4);
            r0 = r0 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x011e, code lost:
        
            r1 = r0 + 1;
            r5[r0] = (byte) (r2 >> 10);
            r0 = r1 + 1;
            r5[r1] = (byte) (r2 >> 2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x012d, code lost:
        
            r10.e = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        
            return false;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:31:0x006f. Please report as an issue. */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(byte[] r11, int r12, int r13, boolean r14) {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.widget.y.b.a(byte[], int, int, boolean):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c extends a {
        private static final byte[] g = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, ProtoClientWrapper.PUSH_TYPE, ProtoClientWrapper.RESET_TYPE, ProtoClientWrapper.NEW_ID_TYPE, 53, 54, 55, 56, 57, 43, 47};
        private static final byte[] h = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, ProtoClientWrapper.PUSH_TYPE, ProtoClientWrapper.RESET_TYPE, ProtoClientWrapper.NEW_ID_TYPE, 53, 54, 55, 56, 57, 45, 95};
        int c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        private final byte[] i;
        private int j;
        private final byte[] k;

        public c(int i, byte[] bArr) {
            this.a = bArr;
            this.d = (i & 1) == 0;
            this.e = (i & 2) == 0;
            this.f = (i & 4) != 0;
            this.k = (i & 8) == 0 ? g : h;
            this.i = new byte[2];
            this.c = 0;
            this.j = this.e ? 19 : -1;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
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

    public static byte[] a(String str, int i) {
        return a(str.getBytes(), i);
    }

    public static byte[] a(byte[] bArr, int i) {
        return a(bArr, 0, bArr.length, i);
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        b bVar = new b(i3, new byte[(i2 * 3) / 4]);
        if (!bVar.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (bVar.b == bVar.a.length) {
            return bVar.a;
        }
        byte[] bArr2 = new byte[bVar.b];
        System.arraycopy(bVar.a, 0, bArr2, 0, bVar.b);
        return bArr2;
    }

    public static String b(byte[] bArr, int i) {
        try {
            return new String(c(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] b(byte[] bArr, int i, int i2, int i3) {
        c cVar = new c(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!cVar.d) {
            switch (i2 % 3) {
                case 1:
                    i4 += 2;
                    break;
                case 2:
                    i4 += 3;
                    break;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (cVar.e && i2 > 0) {
            i4 += (cVar.f ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        cVar.a = new byte[i4];
        cVar.a(bArr, i, i2, true);
        return cVar.a;
    }

    public static byte[] c(byte[] bArr, int i) {
        return b(bArr, 0, bArr.length, i);
    }
}
