package com.applovin.impl;

import java.nio.ByteBuffer;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {
    private static final int[] a = {1, 2, 3, 6};
    private static final int[] b = {48000, 44100, 32000};
    private static final int[] c = {24000, 22050, 16000};
    private static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, IronSourceConstants.RV_CALLBACK_AD_CLICKED, 1253, 1393};

    public static final class b {
        public final String a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        private b(String str, int i, int i2, int i3, int i4, int i5) {
            this.a = str;
            this.b = i;
            this.d = i2;
            this.c = i3;
            this.e = i4;
            this.f = i5;
        }
    }

    public static int b(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i = iPosition; i <= iLimit; i++) {
            if ((xp.a(byteBuffer, i + 4) & (-2)) == -126718022) {
                return i - iPosition;
            }
        }
        return -1;
    }

    public static e9 b(ah ahVar, String str, String str2, x6 x6Var) {
        ahVar.g(2);
        int i = b[(ahVar.w() & 192) >> 6];
        int iW = ahVar.w();
        int i2 = d[(iW & 14) >> 1];
        if ((iW & 1) != 0) {
            i2++;
        }
        if (((ahVar.w() & 30) >> 1) > 0 && (2 & ahVar.w()) != 0) {
            i2 += 2;
        }
        return new e9.b().c(str).f((ahVar.a() <= 0 || (ahVar.w() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc").c(i2).n(i).a(x6Var).e(str2).a();
    }

    private static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = b;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    public static e9 a(ah ahVar, String str, String str2, x6 x6Var) {
        int i = b[(ahVar.w() & 192) >> 6];
        int iW = ahVar.w();
        int i2 = d[(iW & 56) >> 3];
        if ((iW & 4) != 0) {
            i2++;
        }
        return new e9.b().c(str).f("audio/ac3").c(i2).n(i).a(x6Var).e(str2).a();
    }

    public static int b(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b2 = bArr[7];
            if ((b2 & 254) == 186) {
                return 40 << ((bArr[(b2 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    public static b a(zg zgVar) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int iA;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int iE = zgVar.e();
        zgVar.d(40);
        boolean z = zgVar.a(5) > 10;
        zgVar.c(iE);
        int i11 = -1;
        if (z) {
            zgVar.d(16);
            int iA2 = zgVar.a(2);
            if (iA2 == 0) {
                i11 = 0;
            } else if (iA2 == 1) {
                i11 = 1;
            } else if (iA2 == 2) {
                i11 = 2;
            }
            zgVar.d(3);
            int iA3 = (zgVar.a(11) + 1) * 2;
            int iA4 = zgVar.a(2);
            if (iA4 == 3) {
                i7 = c[zgVar.a(2)];
                iA = 3;
                i6 = 6;
            } else {
                iA = zgVar.a(2);
                i6 = a[iA];
                i7 = b[iA4];
            }
            int i12 = i6 * 256;
            int iA5 = zgVar.a(3);
            boolean zF = zgVar.f();
            int i13 = d[iA5] + (zF ? 1 : 0);
            zgVar.d(10);
            if (zgVar.f()) {
                zgVar.d(8);
            }
            if (iA5 == 0) {
                zgVar.d(5);
                if (zgVar.f()) {
                    zgVar.d(8);
                }
            }
            if (i11 == 1 && zgVar.f()) {
                zgVar.d(16);
            }
            if (zgVar.f()) {
                if (iA5 > 2) {
                    zgVar.d(2);
                }
                if ((iA5 & 1) == 0 || iA5 <= 2) {
                    i9 = 6;
                } else {
                    i9 = 6;
                    zgVar.d(6);
                }
                if ((iA5 & 4) != 0) {
                    zgVar.d(i9);
                }
                if (zF && zgVar.f()) {
                    zgVar.d(5);
                }
                if (i11 == 0) {
                    if (zgVar.f()) {
                        i10 = 6;
                        zgVar.d(6);
                    } else {
                        i10 = 6;
                    }
                    if (iA5 == 0 && zgVar.f()) {
                        zgVar.d(i10);
                    }
                    if (zgVar.f()) {
                        zgVar.d(i10);
                    }
                    int iA6 = zgVar.a(2);
                    if (iA6 == 1) {
                        zgVar.d(5);
                    } else if (iA6 == 2) {
                        zgVar.d(12);
                    } else if (iA6 == 3) {
                        int iA7 = zgVar.a(5);
                        if (zgVar.f()) {
                            zgVar.d(5);
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                zgVar.d(4);
                            }
                            if (zgVar.f()) {
                                if (zgVar.f()) {
                                    zgVar.d(4);
                                }
                                if (zgVar.f()) {
                                    zgVar.d(4);
                                }
                            }
                        }
                        if (zgVar.f()) {
                            zgVar.d(5);
                            if (zgVar.f()) {
                                zgVar.d(7);
                                if (zgVar.f()) {
                                    zgVar.d(8);
                                }
                            }
                        }
                        zgVar.d((iA7 + 2) * 8);
                        zgVar.c();
                    }
                    if (iA5 < 2) {
                        if (zgVar.f()) {
                            zgVar.d(14);
                        }
                        if (iA5 == 0 && zgVar.f()) {
                            zgVar.d(14);
                        }
                    }
                    if (zgVar.f()) {
                        if (iA == 0) {
                            zgVar.d(5);
                        } else {
                            for (int i14 = 0; i14 < i6; i14++) {
                                if (zgVar.f()) {
                                    zgVar.d(5);
                                }
                            }
                        }
                    }
                }
            }
            if (zgVar.f()) {
                zgVar.d(5);
                if (iA5 == 2) {
                    zgVar.d(4);
                }
                if (iA5 >= 6) {
                    zgVar.d(2);
                }
                if (zgVar.f()) {
                    zgVar.d(8);
                }
                if (iA5 == 0 && zgVar.f()) {
                    zgVar.d(8);
                }
                if (iA4 < 3) {
                    zgVar.g();
                }
            }
            if (i11 == 0 && iA != 3) {
                zgVar.g();
            }
            if (i11 == 2 && (iA == 3 || zgVar.f())) {
                i8 = 6;
                zgVar.d(6);
            } else {
                i8 = 6;
            }
            str = (zgVar.f() && zgVar.a(i8) == 1 && zgVar.a(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i4 = i11;
            i5 = i12;
            i = iA3;
            i2 = i7;
            i3 = i13;
        } else {
            zgVar.d(32);
            int iA8 = zgVar.a(2);
            String str2 = iA8 == 3 ? null : "audio/ac3";
            int iA9 = a(iA8, zgVar.a(6));
            zgVar.d(8);
            int iA10 = zgVar.a(3);
            if ((iA10 & 1) != 0 && iA10 != 1) {
                zgVar.d(2);
            }
            if ((iA10 & 4) != 0) {
                zgVar.d(2);
            }
            if (iA10 == 2) {
                zgVar.d(2);
            }
            int[] iArr = b;
            str = str2;
            i = iA9;
            i2 = iA8 < iArr.length ? iArr[iA8] : -1;
            i3 = d[iA10] + (zgVar.f() ? 1 : 0);
            i4 = -1;
            i5 = 1536;
        }
        return new b(str, i4, i3, i2, i, i5);
    }

    public static int a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b2 = bArr[4];
        return a((b2 & 192) >> 6, b2 & 63);
    }

    public static int a(ByteBuffer byteBuffer, int i) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + ((byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }
}
