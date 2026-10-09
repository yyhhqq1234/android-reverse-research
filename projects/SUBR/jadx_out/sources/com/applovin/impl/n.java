package com.applovin.impl;

import com.google.common.primitives.SignedBytes;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    private static final int[] a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, CommonGatewayClient.CODE_400, CommonGatewayClient.CODE_400, 2048};

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        private b(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.c = i2;
            this.b = i3;
            this.d = i4;
            this.e = i5;
        }
    }

    public static void a(int i, ah ahVar) {
        ahVar.d(7);
        byte[] bArrC = ahVar.c();
        bArrC[0] = -84;
        bArrC[1] = SignedBytes.MAX_POWER_OF_TWO;
        bArrC[2] = -1;
        bArrC[3] = -1;
        bArrC[4] = (byte) ((i >> 16) & 255);
        bArrC[5] = (byte) ((i >> 8) & 255);
        bArrC[6] = (byte) (i & 255);
    }

    public static e9 a(ah ahVar, String str, String str2, x6 x6Var) {
        ahVar.g(1);
        return new e9.b().c(str).f("audio/ac4").c(2).n(((ahVar.w() & 32) >> 5) == 1 ? 48000 : 44100).a(x6Var).e(str2).a();
    }

    public static int a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return a(new zg(bArr)).e;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0093  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096  */
    public static b a(zg zgVar) {
        int i;
        int i2;
        int iA = zgVar.a(16);
        int iA2 = zgVar.a(16);
        if (iA2 == 65535) {
            iA2 = zgVar.a(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = iA2 + i;
        if (iA == 44097) {
            i3 += 2;
        }
        int i4 = i3;
        int iA3 = zgVar.a(2);
        if (iA3 == 3) {
            iA3 += a(zgVar, 2);
        }
        int i5 = iA3;
        int iA4 = zgVar.a(10);
        if (zgVar.f() && zgVar.a(3) > 0) {
            zgVar.d(2);
        }
        int i6 = zgVar.f() ? 48000 : 44100;
        int iA5 = zgVar.a(4);
        if (i6 == 44100 && iA5 == 13) {
            i2 = a[iA5];
        } else if (i6 == 48000) {
            int[] iArr = a;
            if (iA5 < iArr.length) {
                int i7 = iArr[iA5];
                int i8 = iA4 % 5;
                if (i8 == 1) {
                    if (iA5 != 3 || iA5 == 8) {
                        i7++;
                    }
                } else if (i8 != 2) {
                    if (i8 != 3) {
                        if (i8 == 4 && (iA5 == 3 || iA5 == 8 || iA5 == 11)) {
                            i7++;
                        }
                    } else if (iA5 != 3) {
                        i7++;
                    } else {
                        i7++;
                    }
                } else if (iA5 == 8 || iA5 == 11) {
                    i7++;
                }
                i2 = i7;
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        return new b(i5, 2, i6, i4, i2);
    }

    public static int a(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        if (i == 44097) {
            i2 += 2;
        }
        return i3 + i2;
    }

    private static int a(zg zgVar, int i) {
        int i2 = 0;
        while (true) {
            int iA = i2 + zgVar.a(i);
            if (!zgVar.f()) {
                return iA;
            }
            i2 = (iA + 1) << i;
        }
    }
}
