package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class wa extends dk {
    public static final a b = new a() { // from class: com.applovin.impl.wa$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.wa.a
        public final boolean a(int i, int i2, int i3, int i4, int i5) {
            return wa.b(i, i2, i3, i4, i5);
        }
    };
    private final a a;

    public interface a {
        boolean a(int i, int i2, int i3, int i4, int i5);
    }

    private static int a(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static String b(int i) {
        if (i == 1) {
            return "UTF-16";
        }
        if (i != 2) {
            return i != 3 ? "ISO-8859-1" : "UTF-8";
        }
        return "UTF-16BE";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    public wa() {
        this(null);
    }

    public wa(a aVar) {
        this.a = aVar;
    }

    private static zn e(ah ahVar, int i) {
        if (i < 1) {
            return null;
        }
        int iW = ahVar.w();
        String strB = b(iW);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        ahVar.a(bArr, 0, i2);
        int iB = b(bArr, 0, iW);
        String str = new String(bArr, 0, iB, strB);
        int iA = iB + a(iW);
        return new zn("TXXX", str, a(bArr, iA, b(bArr, iA, iW), strB));
    }

    private static up f(ah ahVar, int i) {
        if (i < 1) {
            return null;
        }
        int iW = ahVar.w();
        String strB = b(iW);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        ahVar.a(bArr, 0, i2);
        int iB = b(bArr, 0, iW);
        String str = new String(bArr, 0, iB, strB);
        int iA = iB + a(iW);
        return new up("WXXX", str, a(bArr, iA, b(bArr, iA), "ISO-8859-1"));
    }

    private static vh d(ah ahVar, int i) {
        byte[] bArr = new byte[i];
        ahVar.a(bArr, 0, i);
        int iB = b(bArr, 0);
        return new vh(new String(bArr, 0, iB, "ISO-8859-1"), a(bArr, iB + 1, i));
    }

    private static f3 b(ah ahVar, int i, int i2, boolean z, int i3, a aVar) {
        int iD = ahVar.d();
        int iB = b(ahVar.c(), iD);
        String str = new String(ahVar.c(), iD, iB - iD, "ISO-8859-1");
        ahVar.f(iB + 1);
        int iW = ahVar.w();
        boolean z2 = (iW & 2) != 0;
        boolean z3 = (iW & 1) != 0;
        int iW2 = ahVar.w();
        String[] strArr = new String[iW2];
        for (int i4 = 0; i4 < iW2; i4++) {
            int iD2 = ahVar.d();
            int iB2 = b(ahVar.c(), iD2);
            strArr[i4] = new String(ahVar.c(), iD2, iB2 - iD2, "ISO-8859-1");
            ahVar.f(iB2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = iD + i;
        while (ahVar.d() < i5) {
            xa xaVarA = a(i2, ahVar, z, i3, aVar);
            if (xaVarA != null) {
                arrayList.add(xaVarA);
            }
        }
        return new f3(str, z2, z3, strArr, (xa[]) arrayList.toArray(new xa[0]));
    }

    private static Cif c(ah ahVar, int i) {
        int iC = ahVar.C();
        int iZ = ahVar.z();
        int iZ2 = ahVar.z();
        int iW = ahVar.w();
        int iW2 = ahVar.w();
        zg zgVar = new zg();
        zgVar.a(ahVar);
        int i2 = ((i - 10) * 8) / (iW + iW2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iA = zgVar.a(iW);
            int iA2 = zgVar.a(iW2);
            iArr[i3] = iA;
            iArr2[i3] = iA2;
        }
        return new Cif(iC, iZ, iZ2, iArr, iArr2);
    }

    private static int g(ah ahVar, int i) {
        byte[] bArrC = ahVar.c();
        int iD = ahVar.d();
        int i2 = iD;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iD + i) {
                return i;
            }
            if ((bArrC[i2] & 255) == 255 && bArrC[i3] == 0) {
                System.arraycopy(bArrC, i2 + 2, bArrC, i3, (i - (i2 - iD)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    private static byte[] a(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return xp.f;
        }
        return Arrays.copyOfRange(bArr, i, i2);
    }

    private static final class b {
        private final int a;
        private final boolean b;
        private final int c;

        public b(int i, boolean z, int i2) {
            this.a = i;
            this.b = z;
            this.c = i2;
        }
    }

    @Override // com.applovin.impl.dk
    protected af a(df dfVar, ByteBuffer byteBuffer) {
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    private static z9 b(ah ahVar, int i) {
        int iW = ahVar.w();
        String strB = b(iW);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        ahVar.a(bArr, 0, i2);
        int iB = b(bArr, 0);
        String str = new String(bArr, 0, iB, "ISO-8859-1");
        int i3 = iB + 1;
        int iB2 = b(bArr, i3, iW);
        String strA = a(bArr, i3, iB2, strB);
        int iA = iB2 + a(iW);
        int iB3 = b(bArr, iA, iW);
        return new z9(str, strA, a(bArr, iA, iB3, strB), a(bArr, iB3 + a(iW), i2));
    }

    private static up c(ah ahVar, int i, String str) {
        byte[] bArr = new byte[i];
        ahVar.a(bArr, 0, i);
        return new up(str, null, new String(bArr, 0, b(bArr, 0), "ISO-8859-1"));
    }

    private static v0 a(ah ahVar, int i, int i2) {
        int iB;
        String str;
        int iW = ahVar.w();
        String strB = b(iW);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        ahVar.a(bArr, 0, i3);
        if (i2 == 2) {
            str = "image/" + Ascii.toLowerCase(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            iB = 2;
        } else {
            iB = b(bArr, 0);
            String lowerCase = Ascii.toLowerCase(new String(bArr, 0, iB, "ISO-8859-1"));
            if (lowerCase.indexOf(47) == -1) {
                str = "image/" + lowerCase;
            } else {
                str = lowerCase;
            }
        }
        int i4 = bArr[iB + 1] & 255;
        int i5 = iB + 2;
        int iB2 = b(bArr, i5, iW);
        return new v0(str, new String(bArr, i5, iB2 - i5, strB), i4, a(bArr, iB2 + a(iW), i3));
    }

    private static zn b(ah ahVar, int i, String str) {
        if (i < 1) {
            return null;
        }
        int iW = ahVar.w();
        String strB = b(iW);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        ahVar.a(bArr, 0, i2);
        return new zn(str, null, new String(bArr, 0, b(bArr, 0, iW), strB));
    }

    private static h2 a(ah ahVar, int i, String str) {
        byte[] bArr = new byte[i];
        ahVar.a(bArr, 0, i);
        return new h2(str, bArr);
    }

    private static e3 a(ah ahVar, int i, int i2, boolean z, int i3, a aVar) {
        int iD = ahVar.d();
        int iB = b(ahVar.c(), iD);
        String str = new String(ahVar.c(), iD, iB - iD, "ISO-8859-1");
        ahVar.f(iB + 1);
        int iJ = ahVar.j();
        int iJ2 = ahVar.j();
        long jY = ahVar.y();
        long j = jY == 4294967295L ? -1L : jY;
        long jY2 = ahVar.y();
        long j2 = jY2 == 4294967295L ? -1L : jY2;
        ArrayList arrayList = new ArrayList();
        int i4 = iD + i;
        while (ahVar.d() < i4) {
            xa xaVarA = a(i2, ahVar, z, i3, aVar);
            if (xaVarA != null) {
                arrayList.add(xaVarA);
            }
        }
        return new e3(str, iJ, iJ2, j, j2, (xa[]) arrayList.toArray(new xa[0]));
    }

    private static int b(byte[] bArr, int i, int i2) {
        int iB = b(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iB;
        }
        while (iB < bArr.length - 1) {
            if ((iB - i) % 2 == 0 && bArr[iB + 1] == 0) {
                return iB;
            }
            iB = b(bArr, iB + 1);
        }
        return bArr.length;
    }

    private static u3 a(ah ahVar, int i) {
        if (i < 4) {
            return null;
        }
        int iW = ahVar.w();
        String strB = b(iW);
        byte[] bArr = new byte[3];
        ahVar.a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        ahVar.a(bArr2, 0, i2);
        int iB = b(bArr2, 0, iW);
        String str2 = new String(bArr2, 0, iB, strB);
        int iA = iB + a(iW);
        return new u3(str, str2, a(bArr2, iA, b(bArr2, iA, iW), strB));
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0199  */
    /* JADX WARN: Code duplicated, block: B:140:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:152:0x01de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:153:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:159:0x01ef A[Catch: all -> 0x012f, UnsupportedEncodingException -> 0x0218, Merged into TryCatch #1 {all -> 0x012f, UnsupportedEncodingException -> 0x0218, blocks: (B:91:0x011d, B:161:0x01f9, B:164:0x0218, B:93:0x0125, B:102:0x013e, B:104:0x0146, B:112:0x0160, B:121:0x0178, B:132:0x0193, B:139:0x01a5, B:145:0x01b4, B:151:0x01ce, B:158:0x01ea, B:159:0x01ef), top: B:171:0x0113 }] */
    private static xa a(int i, ah ahVar, boolean z, int i2, a aVar) {
        int iZ;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        xa xaVarA;
        int iW = ahVar.w();
        int iW2 = ahVar.w();
        int iW3 = ahVar.w();
        int iW4 = i >= 3 ? ahVar.w() : 0;
        if (i == 4) {
            iZ = ahVar.A();
            if (!z) {
                iZ = (((iZ >> 24) & 255) << 21) | (iZ & 255) | (((iZ >> 8) & 255) << 7) | (((iZ >> 16) & 255) << 14);
            }
        } else if (i == 3) {
            iZ = ahVar.A();
        } else {
            iZ = ahVar.z();
        }
        int i4 = iZ;
        int iC = i >= 3 ? ahVar.C() : 0;
        if (iW == 0 && iW2 == 0 && iW3 == 0 && iW4 == 0 && i4 == 0 && iC == 0) {
            ahVar.f(ahVar.e());
            return null;
        }
        int iD = ahVar.d() + i4;
        if (iD > ahVar.e()) {
            oc.d("Id3Decoder", "Frame size exceeds remaining tag data");
            ahVar.f(ahVar.e());
            return null;
        }
        if (aVar != null) {
            i3 = iD;
            if (!aVar.a(i, iW, iW2, iW3, iW4)) {
                ahVar.f(i3);
                return null;
            }
        } else {
            i3 = iD;
        }
        if (i == 3) {
            int i5 = iC;
            z6 = (i5 & 128) != 0;
            z4 = (i5 & 64) != 0;
            z5 = false;
            z2 = (i5 & 32) != 0;
            z3 = z6;
        } else {
            int i6 = iC;
            if (i == 4) {
                z2 = (i6 & 64) != 0;
                z3 = (i6 & 8) != 0;
                z4 = (i6 & 4) != 0;
                z5 = (i6 & 2) != 0;
                if ((i6 & 1) != 0) {
                    z6 = true;
                }
            } else {
                z2 = false;
                z3 = false;
                z4 = false;
                z5 = false;
            }
            z6 = false;
        }
        if (!z3 && !z4) {
            if (z2) {
                i4--;
                ahVar.g(1);
            }
            if (z6) {
                i4 -= 4;
                ahVar.g(4);
            }
            int iG = i4;
            if (z5) {
                iG = g(ahVar, iG);
            }
            int i7 = iG;
            try {
                if (iW == 84 && iW2 == 88 && iW3 == 88 && (i == 2 || iW4 == 88)) {
                    xaVarA = e(ahVar, i7);
                } else if (iW == 84) {
                    xaVarA = b(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                } else if (iW == 87 && iW2 == 88 && iW3 == 88 && (i == 2 || iW4 == 88)) {
                    xaVarA = f(ahVar, i7);
                } else if (iW == 87) {
                    xaVarA = c(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                } else if (iW == 80 && iW2 == 82 && iW3 == 73 && iW4 == 86) {
                    xaVarA = d(ahVar, i7);
                } else if (iW == 71 && iW2 == 69 && iW3 == 79 && (iW4 == 66 || i == 2)) {
                    xaVarA = b(ahVar, i7);
                } else if (i == 2) {
                    if (iW == 80 && iW2 == 73 && iW3 == 67) {
                        xaVarA = a(ahVar, i7, i);
                    } else if (iW != 67 && iW2 == 79 && iW3 == 77 && (iW4 == 77 || i == 2)) {
                        xaVarA = a(ahVar, i7);
                    } else if (iW != 67 && iW2 == 72 && iW3 == 65 && iW4 == 80) {
                        xaVarA = a(ahVar, i7, i, z, i2, aVar);
                    } else if (iW != 67 && iW2 == 84 && iW3 == 79 && iW4 == 67) {
                        xaVarA = b(ahVar, i7, i, z, i2, aVar);
                    } else if (iW != 77 && iW2 == 76 && iW3 == 76 && iW4 == 84) {
                        xaVarA = c(ahVar, i7);
                    } else {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    }
                } else if (iW == 65 && iW2 == 80 && iW3 == 73 && iW4 == 67) {
                    xaVarA = a(ahVar, i7, i);
                } else if (iW != 67) {
                    if (iW != 67) {
                        if (iW != 67) {
                            if (iW != 77) {
                                xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                            } else {
                                xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                            }
                        } else if (iW != 77) {
                            xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                        } else {
                            xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                        }
                    } else if (iW != 67) {
                        if (iW != 77) {
                            xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                        } else {
                            xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                        }
                    } else if (iW != 77) {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    } else {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    }
                } else if (iW != 67) {
                    if (iW != 67) {
                        if (iW != 77) {
                            xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                        } else {
                            xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                        }
                    } else if (iW != 77) {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    } else {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    }
                } else if (iW != 67) {
                    if (iW != 77) {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    } else {
                        xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                    }
                } else if (iW != 77) {
                    xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                } else {
                    xaVarA = a(ahVar, i7, a(i, iW, iW2, iW3, iW4));
                }
                if (xaVarA == null) {
                    oc.d("Id3Decoder", "Failed to decode frame: id=" + a(i, iW, iW2, iW3, iW4) + ", frameSize=" + i7);
                }
                ahVar.f(i3);
                return xaVarA;
            } catch (UnsupportedEncodingException unused) {
                oc.d(r4, "Unsupported character encoding");
                return null;
            } finally {
                ahVar.f(i3);
            }
        }
        oc.d(r4, "Skipping unsupported compressed or encrypted frame");
        ahVar.f(i3);
        return null;
    }

    private static int b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    private static b a(ah ahVar) {
        if (ahVar.a() < 10) {
            oc.d("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int iZ = ahVar.z();
        boolean z = false;
        if (iZ != 4801587) {
            oc.d("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(iZ)));
            return null;
        }
        int iW = ahVar.w();
        ahVar.g(1);
        int iW2 = ahVar.w();
        int iV = ahVar.v();
        if (iW == 2) {
            if ((iW2 & 64) != 0) {
                oc.d("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (iW == 3) {
            if ((iW2 & 64) != 0) {
                int iJ = ahVar.j();
                ahVar.g(iJ);
                iV -= iJ + 4;
            }
        } else {
            if (iW != 4) {
                oc.d("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iW);
                return null;
            }
            if ((iW2 & 64) != 0) {
                int iV2 = ahVar.v();
                ahVar.g(iV2 - 4);
                iV -= iV2;
            }
            if ((iW2 & 16) != 0) {
                iV -= 10;
            }
        }
        if (iW < 4 && (iW2 & 128) != 0) {
            z = true;
        }
        return new b(iW, z, iV);
    }

    private static String a(byte[] bArr, int i, int i2, String str) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    private static String a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static boolean a(ah ahVar, int i, int i2, boolean z) {
        int iZ;
        long jZ;
        int iC;
        int i3;
        int iD = ahVar.d();
        while (true) {
            try {
                boolean z2 = true;
                if (ahVar.a() < i2) {
                    ahVar.f(iD);
                    return true;
                }
                if (i >= 3) {
                    iZ = ahVar.j();
                    jZ = ahVar.y();
                    iC = ahVar.C();
                } else {
                    iZ = ahVar.z();
                    jZ = ahVar.z();
                    iC = 0;
                }
                if (iZ == 0 && jZ == 0 && iC == 0) {
                    ahVar.f(iD);
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jZ) != 0) {
                        ahVar.f(iD);
                        return false;
                    }
                    jZ = (((jZ >> 24) & 255) << 21) | (jZ & 255) | (((jZ >> 8) & 255) << 7) | (((jZ >> 16) & 255) << 14);
                }
                if (i == 4) {
                    i3 = (iC & 64) != 0 ? 1 : 0;
                    if ((iC & 1) == 0) {
                        z2 = false;
                    }
                } else {
                    if (i == 3) {
                        i3 = (iC & 32) != 0 ? 1 : 0;
                        if ((iC & 128) == 0) {
                        }
                    } else {
                        i3 = 0;
                    }
                    z2 = false;
                }
                if (z2) {
                    i3 += 4;
                }
                if (jZ < i3) {
                    ahVar.f(iD);
                    return false;
                }
                if (ahVar.a() < jZ) {
                    ahVar.f(iD);
                    return false;
                }
                ahVar.g((int) jZ);
            } catch (Throwable th) {
                ahVar.f(iD);
                throw th;
            }
        }
    }

    public af a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        ah ahVar = new ah(bArr, i);
        b bVarA = a(ahVar);
        if (bVarA == null) {
            return null;
        }
        int iD = ahVar.d();
        int i2 = bVarA.a == 2 ? 6 : 10;
        int iG = bVarA.c;
        if (bVarA.b) {
            iG = g(ahVar, bVarA.c);
        }
        ahVar.e(iD + iG);
        boolean z = false;
        if (!a(ahVar, bVarA.a, i2, false)) {
            if (bVarA.a != 4 || !a(ahVar, 4, i2, true)) {
                oc.d("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + bVarA.a);
                return null;
            }
            z = true;
        }
        while (ahVar.a() >= i2) {
            xa xaVarA = a(bVarA.a, ahVar, z, i2, this.a);
            if (xaVarA != null) {
                arrayList.add(xaVarA);
            }
        }
        return new af(arrayList);
    }
}
