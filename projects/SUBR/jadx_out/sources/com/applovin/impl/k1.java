package com.applovin.impl;

import android.util.Pair;
import com.applovin.exoplayer2.common.base.Function;
import com.google.android.gms.drive.DriveFile;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
abstract class k1 {
    private static final byte[] a = xp.c("OpusHead");

    private interface b {
        int a();

        int b();

        int c();
    }

    private static int a(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    private static long e(ah ahVar) {
        ahVar.f(8);
        ahVar.g(j1.c(ahVar.j()) != 0 ? 16 : 8);
        return ahVar.y();
    }

    private static f f(ah ahVar) {
        long j;
        ahVar.f(8);
        int iC = j1.c(ahVar.j());
        ahVar.g(iC == 0 ? 8 : 16);
        int iJ = ahVar.j();
        ahVar.g(4);
        int iD = ahVar.d();
        int i = iC == 0 ? 4 : 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            j = -9223372036854775807L;
            if (i3 < i) {
                if (ahVar.c()[iD + i3] != -1) {
                    long jY = iC == 0 ? ahVar.y() : ahVar.B();
                    if (jY == 0) {
                        break;
                    }
                    j = jY;
                    break;
                }
                i3++;
            } else {
                ahVar.g(i);
                break;
            }
        }
        ahVar.g(16);
        int iJ2 = ahVar.j();
        int iJ3 = ahVar.j();
        ahVar.g(4);
        int iJ4 = ahVar.j();
        int iJ5 = ahVar.j();
        if (iJ2 == 0 && iJ3 == 65536 && iJ4 == -65536 && iJ5 == 0) {
            i2 = 90;
        } else if (iJ2 == 0 && iJ3 == -65536 && iJ4 == 65536 && iJ5 == 0) {
            i2 = 270;
        } else if (iJ2 == -65536 && iJ3 == 0 && iJ4 == 0 && iJ5 == -65536) {
            i2 = 180;
        }
        return new f(iJ, j, i2);
    }

    private static int c(ah ahVar) {
        ahVar.f(16);
        return ahVar.j();
    }

    private static Pair d(ah ahVar) {
        ahVar.f(8);
        int iC = j1.c(ahVar.j());
        ahVar.g(iC == 0 ? 8 : 16);
        long jY = ahVar.y();
        ahVar.g(iC == 0 ? 4 : 8);
        int iC2 = ahVar.C();
        return Pair.create(Long.valueOf(jY), "" + ((char) (((iC2 >> 10) & 31) + 96)) + ((char) (((iC2 >> 5) & 31) + 96)) + ((char) ((iC2 & 31) + 96)));
    }

    private static af e(ah ahVar, int i) {
        ahVar.g(8);
        a(ahVar);
        while (ahVar.d() < i) {
            int iD = ahVar.d();
            int iJ = ahVar.j();
            if (ahVar.j() == 1768715124) {
                ahVar.f(iD);
                return b(ahVar, iD + iJ);
            }
            ahVar.f(iD + iJ);
        }
        return null;
    }

    static Pair b(ah ahVar, int i, int i2) throws ch {
        int i3 = i + 8;
        String strC = null;
        Integer numValueOf = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            ahVar.f(i3);
            int iJ = ahVar.j();
            int iJ2 = ahVar.j();
            if (iJ2 == 1718775137) {
                numValueOf = Integer.valueOf(ahVar.j());
            } else if (iJ2 == 1935894637) {
                ahVar.g(4);
                strC = ahVar.c(4);
            } else if (iJ2 == 1935894633) {
                i4 = i3;
                i5 = iJ;
            }
            i3 += iJ;
        }
        if (!"cenc".equals(strC) && !"cbc1".equals(strC) && !"cens".equals(strC) && !"cbcs".equals(strC)) {
            return null;
        }
        m8.a(numValueOf != null, "frma atom is mandatory");
        m8.a(i4 != -1, "schi atom is mandatory");
        mo moVarA = a(ahVar, i4, i5, strC);
        m8.a(moVarA != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (mo) xp.a(moVarA));
    }

    private static boolean a(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[xp.a(4, 0, length)] && jArr[xp.a(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private static final class a {
        public final int a;
        public int b;
        public int c;
        public long d;
        private final boolean e;
        private final ah f;
        private final ah g;
        private int h;
        private int i;

        public a(ah ahVar, ah ahVar2, boolean z) throws ch {
            this.g = ahVar;
            this.f = ahVar2;
            this.e = z;
            ahVar2.f(12);
            this.a = ahVar2.A();
            ahVar.f(12);
            this.i = ahVar.A();
            m8.a(ahVar.j() == 1, "first_chunk must be 1");
            this.b = -1;
        }

        public boolean a() {
            long jY;
            int i = this.b + 1;
            this.b = i;
            if (i == this.a) {
                return false;
            }
            if (this.e) {
                jY = this.f.B();
            } else {
                jY = this.f.y();
            }
            this.d = jY;
            if (this.b == this.h) {
                this.c = this.g.A();
                this.g.g(4);
                int i2 = this.i - 1;
                this.i = i2;
                this.h = i2 > 0 ? this.g.A() - 1 : -1;
            }
            return true;
        }
    }

    private static final class f {
        private final int a;
        private final long b;
        private final int c;

        public f(int i, long j, int i2) {
            this.a = i;
            this.b = j;
            this.c = i2;
        }
    }

    private static final class c {
        public final mo[] a;
        public e9 b;
        public int c;
        public int d = 0;

        public c(int i) {
            this.a = new mo[i];
        }
    }

    static final class d implements b {
        private final int a;
        private final int b;
        private final ah c;

        public d(j1.b bVar, e9 e9Var) {
            ah ahVar = bVar.b;
            this.c = ahVar;
            ahVar.f(12);
            int iA = ahVar.A();
            if ("audio/raw".equals(e9Var.m)) {
                int iB = xp.b(e9Var.B, e9Var.z);
                if (iA == 0 || iA % iB != 0) {
                    oc.d("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iB + ", stsz sample size: " + iA);
                    iA = iB;
                }
            }
            this.a = iA == 0 ? -1 : iA;
            this.b = ahVar.A();
        }

        @Override // com.applovin.impl.k1.b
        public int b() {
            return this.b;
        }

        @Override // com.applovin.impl.k1.b
        public int a() {
            return this.a;
        }

        @Override // com.applovin.impl.k1.b
        public int c() {
            int i = this.a;
            return i == -1 ? this.c.A() : i;
        }
    }

    static final class e implements b {
        private final ah a;
        private final int b;
        private final int c;
        private int d;
        private int e;

        @Override // com.applovin.impl.k1.b
        public int a() {
            return -1;
        }

        public e(j1.b bVar) {
            ah ahVar = bVar.b;
            this.a = ahVar;
            ahVar.f(12);
            this.c = ahVar.A() & 255;
            this.b = ahVar.A();
        }

        @Override // com.applovin.impl.k1.b
        public int b() {
            return this.b;
        }

        @Override // com.applovin.impl.k1.b
        public int c() {
            int i = this.c;
            if (i == 8) {
                return this.a.w();
            }
            if (i == 16) {
                return this.a.C();
            }
            int i2 = this.d;
            this.d = i2 + 1;
            if (i2 % 2 == 0) {
                int iW = this.a.w();
                this.e = iW;
                return (iW & 240) >> 4;
            }
            return this.e & 15;
        }
    }

    private static float c(ah ahVar, int i) {
        ahVar.f(i + 8);
        return ahVar.A() / ahVar.A();
    }

    private static Pair d(ah ahVar, int i, int i2) throws ch {
        Pair pairB;
        int iD = ahVar.d();
        while (iD - i < i2) {
            ahVar.f(iD);
            int iJ = ahVar.j();
            m8.a(iJ > 0, "childAtomSize must be positive");
            if (ahVar.j() == 1936289382 && (pairB = b(ahVar, iD, iJ)) != null) {
                return pairB;
            }
            iD += iJ;
        }
        return null;
    }

    private static int a(ah ahVar, int i, int i2) throws ch {
        int iD = ahVar.d();
        while (iD - i < i2) {
            ahVar.f(iD);
            int iJ = ahVar.j();
            m8.a(iJ > 0, "childAtomSize must be positive");
            if (ahVar.j() == 1702061171) {
                return iD;
            }
            iD += iJ;
        }
        return -1;
    }

    private static af d(ah ahVar, int i) {
        ahVar.g(12);
        while (ahVar.d() < i) {
            int iD = ahVar.d();
            int iJ = ahVar.j();
            if (ahVar.j() == 1935766900) {
                if (iJ < 14) {
                    return null;
                }
                ahVar.g(5);
                int iW = ahVar.w();
                if (iW != 12 && iW != 13) {
                    return null;
                }
                float f2 = iW == 12 ? 240.0f : 120.0f;
                ahVar.g(1);
                return new af(new kk(f2, ahVar.w()));
            }
            ahVar.f(iD + iJ);
        }
        return null;
    }

    private static int b(ah ahVar) {
        int iW = ahVar.w();
        int i = iW & WorkQueueKt.MASK;
        while ((iW & 128) == 128) {
            iW = ahVar.w();
            i = (i << 7) | (iW & WorkQueueKt.MASK);
        }
        return i;
    }

    public static void a(ah ahVar) {
        int iD = ahVar.d();
        ahVar.g(4);
        if (ahVar.j() != 1751411826) {
            iD += 4;
        }
        ahVar.f(iD);
    }

    private static byte[] c(ah ahVar, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            ahVar.f(i3);
            int iJ = ahVar.j();
            if (ahVar.j() == 1886547818) {
                return Arrays.copyOfRange(ahVar.c(), i3, iJ + i3);
            }
            i3 += iJ;
        }
        return null;
    }

    private static af b(ah ahVar, int i) {
        ahVar.g(8);
        ArrayList arrayList = new ArrayList();
        while (ahVar.d() < i) {
            af.b bVarB = gf.b(ahVar);
            if (bVarB != null) {
                arrayList.add(bVarB);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new af(arrayList);
    }

    public static af b(j1.a aVar) {
        j1.b bVarE = aVar.e(1751411826);
        j1.b bVarE2 = aVar.e(1801812339);
        j1.b bVarE3 = aVar.e(1768715124);
        if (bVarE == null || bVarE2 == null || bVarE3 == null || c(bVarE.b) != 1835299937) {
            return null;
        }
        ah ahVar = bVarE2.b;
        ahVar.f(12);
        int iJ = ahVar.j();
        String[] strArr = new String[iJ];
        for (int i = 0; i < iJ; i++) {
            int iJ2 = ahVar.j();
            ahVar.g(4);
            strArr[i] = ahVar.c(iJ2 - 8);
        }
        ah ahVar2 = bVarE3.b;
        ahVar2.f(8);
        ArrayList arrayList = new ArrayList();
        while (ahVar2.a() > 8) {
            int iD = ahVar2.d();
            int iJ3 = ahVar2.j();
            int iJ4 = ahVar2.j() - 1;
            if (iJ4 >= 0 && iJ4 < iJ) {
                ed edVarA = gf.a(ahVar2, iD + iJ3, strArr[iJ4]);
                if (edVarA != null) {
                    arrayList.add(edVarA);
                }
            } else {
                oc.d("AtomParsers", "Skipped metadata with unknown key index: " + iJ4);
            }
            ahVar2.f(iD + iJ3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new af(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x015b  */
    /* JADX WARN: Code duplicated, block: B:105:0x016a  */
    /* JADX WARN: Code duplicated, block: B:109:0x0185  */
    /* JADX WARN: Code duplicated, block: B:137:0x0280  */
    /* JADX WARN: Code duplicated, block: B:139:0x028a  */
    /* JADX WARN: Code duplicated, block: B:140:0x028c  */
    /* JADX WARN: Code duplicated, block: B:143:0x0293  */
    /* JADX WARN: Code duplicated, block: B:145:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:147:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:159:0x02b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x02b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0151  */
    private static void a(ah ahVar, int i, int i2, int i3, int i4, String str, boolean z, x6 x6Var, c cVar, int i5) throws ch {
        int iC;
        int iX;
        int iA;
        x6 x6VarA;
        String str2;
        String str3;
        int i6;
        String str4;
        String str5;
        List listA;
        int iJ;
        int iJ2;
        int iA2;
        byte[] bArr;
        List listA2;
        int i7 = i2;
        int i8 = i3;
        ahVar.f(i7 + 16);
        if (z) {
            iC = ahVar.C();
            ahVar.g(6);
        } else {
            ahVar.g(8);
            iC = 0;
        }
        boolean z2 = true;
        if (iC == 0 || iC == 1) {
            int iC2 = ahVar.C();
            ahVar.g(6);
            iX = ahVar.x();
            if (iC == 1) {
                ahVar.g(16);
            }
            iA = iC2;
        } else {
            if (iC != 2) {
                return;
            }
            ahVar.g(16);
            iX = (int) Math.round(ahVar.h());
            iA = ahVar.A();
            ahVar.g(20);
        }
        int iD = ahVar.d();
        int iIntValue = i;
        if (iIntValue == 1701733217) {
            Pair pairD = d(ahVar, i7, i8);
            if (pairD != null) {
                iIntValue = ((Integer) pairD.first).intValue();
                x6VarA = x6Var == null ? null : x6Var.a(((mo) pairD.second).b);
                cVar.a[i5] = (mo) pairD.second;
            } else {
                x6VarA = x6Var;
            }
            ahVar.f(iD);
        } else {
            x6VarA = x6Var;
        }
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = "audio/vnd.dts";
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = "audio/vnd.dts.hd";
        } else if (iIntValue == 1685353317) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = "audio/3gpp";
        } else {
            if (iIntValue != 1935767394) {
                str3 = "audio/raw";
                if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    i6 = 2;
                } else if (iIntValue == 1953984371) {
                    i6 = DriveFile.MODE_READ_ONLY;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    str2 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = "audio/alac";
                } else if (iIntValue == 1634492791) {
                    str2 = "audio/g711-alaw";
                } else if (iIntValue == 1970037111) {
                    str2 = "audio/g711-mlaw";
                } else if (iIntValue == 1332770163) {
                    str2 = "audio/opus";
                } else if (iIntValue == 1716281667) {
                    str2 = "audio/flac";
                } else {
                    i6 = -1;
                    str3 = null;
                }
                str4 = str3;
                str5 = null;
                listA = null;
                while (iD - i7 < i8) {
                    ahVar.f(iD);
                    iJ = ahVar.j();
                    if (iJ <= 0) {
                        z2 = false;
                    }
                    m8.a(z2, "childAtomSize must be positive");
                    iJ2 = ahVar.j();
                    if (iJ2 == 1835557187) {
                        int i9 = iJ - 13;
                        byte[] bArr2 = new byte[i9];
                        ahVar.f(iD + 13);
                        ahVar.a(bArr2, 0, i9);
                        listA2 = db.a(bArr2);
                    } else {
                        if (iJ2 != 1702061171 || (z && iJ2 == 2002876005)) {
                            z2 = true;
                            if (iJ2 == 1702061171) {
                                iA2 = iD;
                            } else {
                                iA2 = a(ahVar, iD, iJ);
                            }
                            if (iA2 != -1) {
                                Pair pairA = a(ahVar, iA2);
                                str4 = (String) pairA.first;
                                bArr = (byte[]) pairA.second;
                                if (bArr != null) {
                                    if ("audio/mp4a-latm".equals(str4)) {
                                        com.applovin.impl.a.b bVarA = com.applovin.impl.a.a(bArr);
                                        iX = bVarA.a;
                                        iA = bVarA.b;
                                        str5 = bVarA.c;
                                    }
                                    listA = db.a(bArr);
                                }
                            }
                        } else {
                            if (iJ2 == 1684103987) {
                                ahVar.f(iD + 8);
                                cVar.b = k.a(ahVar, Integer.toString(i4), str, x6VarA);
                            } else if (iJ2 == 1684366131) {
                                ahVar.f(iD + 8);
                                cVar.b = k.b(ahVar, Integer.toString(i4), str, x6VarA);
                            } else if (iJ2 == 1684103988) {
                                ahVar.f(iD + 8);
                                cVar.b = n.a(ahVar, Integer.toString(i4), str, x6VarA);
                            } else if (iJ2 == 1684305011) {
                                cVar.b = new e9.b().h(i4).f(str4).c(iA).n(iX).a(x6VarA).e(str).a();
                            } else if (iJ2 == 1682927731) {
                                int i10 = iJ - 8;
                                byte[] bArr3 = a;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i10);
                                ahVar.f(iD + 8);
                                ahVar.a(bArrCopyOf, bArr3.length, i10);
                                listA2 = tg.a(bArrCopyOf);
                            } else if (iJ2 == 1684425825) {
                                byte[] bArr4 = new byte[iJ - 8];
                                bArr4[0] = 102;
                                z2 = true;
                                bArr4[1] = 76;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                ahVar.f(iD + 12);
                                ahVar.a(bArr4, 4, iJ - 12);
                                listA = db.a(bArr4);
                            } else {
                                z2 = true;
                                if (iJ2 == 1634492771) {
                                    int i11 = iJ - 12;
                                    byte[] bArr5 = new byte[i11];
                                    ahVar.f(iD + 12);
                                    ahVar.a(bArr5, 0, i11);
                                    Pair pairA2 = o3.a(bArr5);
                                    int iIntValue2 = ((Integer) pairA2.first).intValue();
                                    int iIntValue3 = ((Integer) pairA2.second).intValue();
                                    listA = db.a(bArr5);
                                    iX = iIntValue2;
                                    iA = iIntValue3;
                                }
                            }
                            z2 = true;
                        }
                        iD += iJ;
                        i7 = i2;
                        i8 = i3;
                    }
                    listA = listA2;
                    z2 = true;
                    iD += iJ;
                    i7 = i2;
                    i8 = i3;
                }
                if (cVar.b == null || str4 == null) {
                }
                cVar.b = new e9.b().h(i4).f(str4).a(str5).c(iA).n(iX).j(i6).a(listA).a(x6VarA).e(str).a();
                return;
            }
            str2 = "audio/amr-wb";
        }
        str3 = str2;
        i6 = -1;
        str4 = str3;
        str5 = null;
        listA = null;
        while (iD - i7 < i8) {
            ahVar.f(iD);
            iJ = ahVar.j();
            if (iJ <= 0) {
                z2 = false;
            }
            m8.a(z2, "childAtomSize must be positive");
            iJ2 = ahVar.j();
            if (iJ2 == 1835557187) {
                int i12 = iJ - 13;
                byte[] bArr6 = new byte[i12];
                ahVar.f(iD + 13);
                ahVar.a(bArr6, 0, i12);
                listA2 = db.a(bArr6);
            } else {
                if (iJ2 != 1702061171) {
                    z2 = true;
                    if (iJ2 == 1702061171) {
                        iA2 = iD;
                    } else {
                        iA2 = a(ahVar, iD, iJ);
                    }
                    if (iA2 != -1) {
                        Pair pairA3 = a(ahVar, iA2);
                        str4 = (String) pairA3.first;
                        bArr = (byte[]) pairA3.second;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                com.applovin.impl.a.b bVarA2 = com.applovin.impl.a.a(bArr);
                                iX = bVarA2.a;
                                iA = bVarA2.b;
                                str5 = bVarA2.c;
                            }
                            listA = db.a(bArr);
                        }
                    }
                } else {
                    z2 = true;
                    if (iJ2 == 1702061171) {
                        iA2 = iD;
                    } else {
                        iA2 = a(ahVar, iD, iJ);
                    }
                    if (iA2 != -1) {
                        Pair pairA4 = a(ahVar, iA2);
                        str4 = (String) pairA4.first;
                        bArr = (byte[]) pairA4.second;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                com.applovin.impl.a.b bVarA3 = com.applovin.impl.a.a(bArr);
                                iX = bVarA3.a;
                                iA = bVarA3.b;
                                str5 = bVarA3.c;
                            }
                            listA = db.a(bArr);
                        }
                    }
                }
                iD += iJ;
                i7 = i2;
                i8 = i3;
            }
            listA = listA2;
            z2 = true;
            iD += iJ;
            i7 = i2;
            i8 = i3;
        }
        if (cVar.b == null) {
        }
    }

    private static Pair a(j1.a aVar) {
        j1.b bVarE = aVar.e(1701606260);
        if (bVarE == null) {
            return null;
        }
        ah ahVar = bVarE.b;
        ahVar.f(8);
        int iC = j1.c(ahVar.j());
        int iA = ahVar.A();
        long[] jArr = new long[iA];
        long[] jArr2 = new long[iA];
        for (int i = 0; i < iA; i++) {
            jArr[i] = iC == 1 ? ahVar.B() : ahVar.y();
            jArr2[i] = iC == 1 ? ahVar.s() : ahVar.j();
            if (ahVar.u() == 1) {
                ahVar.g(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair a(ah ahVar, int i) {
        ahVar.f(i + 12);
        ahVar.g(1);
        b(ahVar);
        ahVar.g(2);
        int iW = ahVar.w();
        if ((iW & 128) != 0) {
            ahVar.g(2);
        }
        if ((iW & 64) != 0) {
            ahVar.g(ahVar.C());
        }
        if ((iW & 32) != 0) {
            ahVar.g(2);
        }
        ahVar.g(1);
        b(ahVar);
        String strA = hf.a(ahVar.w());
        if (!"audio/mpeg".equals(strA) && !"audio/vnd.dts".equals(strA) && !"audio/vnd.dts.hd".equals(strA)) {
            ahVar.g(12);
            ahVar.g(1);
            int iB = b(ahVar);
            byte[] bArr = new byte[iB];
            ahVar.a(bArr, 0, iB);
            return Pair.create(strA, bArr);
        }
        return Pair.create(strA, null);
    }

    private static void a(ah ahVar, int i, int i2, int i3, c cVar) {
        ahVar.f(i2 + 16);
        if (i == 1835365492) {
            ahVar.t();
            String strT = ahVar.t();
            if (strT != null) {
                cVar.b = new e9.b().h(i3).f(strT).a();
            }
        }
    }

    private static mo a(ah ahVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            ahVar.f(i5);
            int iJ = ahVar.j();
            if (ahVar.j() == 1952804451) {
                int iC = j1.c(ahVar.j());
                ahVar.g(1);
                if (iC == 0) {
                    ahVar.g(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int iW = ahVar.w();
                    i3 = iW & 15;
                    i4 = (iW & 240) >> 4;
                }
                boolean z = ahVar.w() == 1;
                int iW2 = ahVar.w();
                byte[] bArr2 = new byte[16];
                ahVar.a(bArr2, 0, 16);
                if (z && iW2 == 0) {
                    int iW3 = ahVar.w();
                    bArr = new byte[iW3];
                    ahVar.a(bArr, 0, iW3);
                }
                return new mo(z, str, iW2, bArr2, i4, i3, bArr);
            }
            i5 += iJ;
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0245  */
    /* JADX WARN: Code duplicated, block: B:110:0x0283  */
    /* JADX WARN: Code duplicated, block: B:111:0x0286  */
    /* JADX WARN: Code duplicated, block: B:116:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:118:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:136:0x0357  */
    /* JADX WARN: Code duplicated, block: B:140:0x0361  */
    /* JADX WARN: Code duplicated, block: B:150:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:151:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:155:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:157:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:160:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:165:0x040c  */
    /* JADX WARN: Code duplicated, block: B:166:0x040e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0412  */
    /* JADX WARN: Code duplicated, block: B:172:0x042d  */
    /* JADX WARN: Code duplicated, block: B:173:0x042f  */
    /* JADX WARN: Code duplicated, block: B:176:0x0434  */
    /* JADX WARN: Code duplicated, block: B:177:0x0437  */
    /* JADX WARN: Code duplicated, block: B:179:0x043a  */
    /* JADX WARN: Code duplicated, block: B:180:0x043d  */
    /* JADX WARN: Code duplicated, block: B:182:0x0440  */
    /* JADX WARN: Code duplicated, block: B:183:0x0442  */
    /* JADX WARN: Code duplicated, block: B:185:0x0446  */
    /* JADX WARN: Code duplicated, block: B:186:0x0449  */
    /* JADX WARN: Code duplicated, block: B:190:0x0458  */
    /* JADX WARN: Code duplicated, block: B:192:0x0466  */
    /* JADX WARN: Code duplicated, block: B:193:0x0476  */
    /* JADX WARN: Code duplicated, block: B:196:0x047e  */
    /* JADX WARN: Code duplicated, block: B:198:0x04af  */
    /* JADX WARN: Code duplicated, block: B:209:0x0423 A[EDGE_INSN: B:209:0x0423->B:170:0x0423 BREAK  A[LOOP:2: B:153:0x03c0->B:169:0x041b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x0405 A[ADDED_TO_REGION, EDGE_INSN: B:213:0x0405->B:163:0x0405 BREAK  A[LOOP:3: B:158:0x03f5->B:162:0x0400], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x04b5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0182 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x0215 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x017a A[EDGE_INSN: B:224:0x017a->B:63:0x017a BREAK  A[LOOP:7: B:59:0x015d->B:62:0x0165], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0232 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x022a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:53:0x010b A[LOOP:0: B:51:0x0105->B:53:0x010b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x0131  */
    /* JADX WARN: Code duplicated, block: B:58:0x0157  */
    /* JADX WARN: Code duplicated, block: B:60:0x015f  */
    /* JADX WARN: Code duplicated, block: B:62:0x0165 A[LOOP:7: B:59:0x015d->B:62:0x0165, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x019e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x01a0 A[ADDED_TO_REGION, LOOP:8: B:67:0x01a0->B:69:0x01a4, LOOP_START, PHI: r16 r21 r24
  0x01a0: PHI (r16v7 int) = (r16v3 int), (r16v8 int) binds: [B:66:0x019e, B:69:0x01a4] A[DONT_GENERATE, DONT_INLINE]
  0x01a0: PHI (r21v5 int) = (r21v1 int), (r21v6 int) binds: [B:66:0x019e, B:69:0x01a4] A[DONT_GENERATE, DONT_INLINE]
  0x01a0: PHI (r24v3 int) = (r24v1 int), (r24v5 int) binds: [B:66:0x019e, B:69:0x01a4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:73:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:92:0x0222 A[DONT_INVERT, LOOP:9: B:92:0x0222->B:96:0x022c, LOOP_START, PHI: r16
  0x0222: PHI (r16v4 int) = (r16v3 int), (r16v5 int) binds: [B:91:0x0220, B:96:0x022c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:93:0x0224  */
    /* JADX WARN: Code duplicated, block: B:96:0x022c A[LOOP:9: B:92:0x0222->B:96:0x022c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:97:0x0232 A[EDGE_INSN: B:97:0x0232->B:98:0x0233 BREAK  A[LOOP:9: B:92:0x0222->B:96:0x022c]] */
    private static ro a(lo loVar, j1.a aVar, y9 y9Var) throws ch {
        b eVar;
        boolean z;
        int iA;
        int iA2;
        int iA3;
        int iA4;
        boolean z2;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        int iA5;
        int i;
        int i2;
        int iJ;
        int i3;
        int iA6;
        long j;
        long j2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z3;
        int i12;
        lo loVar2;
        String str;
        int i13;
        long[] jArr;
        int[] iArr;
        int i14;
        long j3;
        long[] jArr2;
        int[] iArr2;
        long j4;
        int i15;
        boolean zA;
        int i16;
        int i17;
        int iC;
        int i18;
        int iA7;
        int iJ2;
        int i19;
        long jC;
        long[] jArr3;
        int i20;
        int i21;
        long[] jArr4;
        boolean z4;
        int[] iArr3;
        int[] iArr4;
        long[] jArr5;
        int i22;
        int i23;
        boolean z5;
        int i24;
        long[] jArr6;
        long[] jArr7;
        int[] iArr5;
        int i25;
        boolean z6;
        boolean z7;
        long[] jArr8;
        int[] iArr6;
        int i26;
        int[] iArr7;
        long[] jArr9;
        int i27;
        int[] iArr8;
        long j5;
        int i28;
        long j6;
        int i29;
        int i30;
        int[] iArr9;
        long j7;
        boolean z8;
        boolean z9;
        int i31;
        int i32;
        int i33;
        boolean z10;
        long[] jArr10;
        int[] iArr10;
        j1.b bVarE = aVar.e(1937011578);
        if (bVarE != null) {
            eVar = new d(bVarE, loVar.f);
        } else {
            j1.b bVarE2 = aVar.e(1937013298);
            if (bVarE2 != null) {
                eVar = new e(bVarE2);
            } else {
                throw ch.a("Track has no sample table size information", null);
            }
        }
        int iB = eVar.b();
        if (iB == 0) {
            return new ro(loVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        j1.b bVarE3 = aVar.e(1937007471);
        if (bVarE3 == null) {
            bVarE3 = (j1.b) b1.a(aVar.e(1668232756));
            z = true;
        } else {
            z = false;
        }
        ah ahVar = bVarE3.b;
        ah ahVar2 = ((j1.b) b1.a(aVar.e(1937011555))).b;
        ah ahVar3 = ((j1.b) b1.a(aVar.e(1937011827))).b;
        j1.b bVarE4 = aVar.e(1937011571);
        ah ahVar4 = bVarE4 != null ? bVarE4.b : null;
        j1.b bVarE5 = aVar.e(1668576371);
        ah ahVar5 = bVarE5 != null ? bVarE5.b : null;
        a aVar2 = new a(ahVar2, ahVar, z);
        ahVar3.f(12);
        int iA8 = ahVar3.A() - 1;
        int iA9 = ahVar3.A();
        int iA10 = ahVar3.A();
        if (ahVar5 != null) {
            ahVar5.f(12);
            iA = ahVar5.A();
        } else {
            iA = 0;
        }
        if (ahVar4 != null) {
            ahVar4.f(12);
            iA2 = ahVar4.A();
            if (iA2 > 0) {
                iA3 = ahVar4.A() - 1;
            } else {
                ahVar4 = null;
            }
            iA4 = eVar.a();
            String str2 = loVar.f.m;
            if (iA4 == -1 && (("audio/raw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/g711-alaw".equals(str2)) && iA8 == 0 && iA == 0 && iA2 == 0)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                int i34 = aVar2.a;
                jArr10 = new long[i34];
                iArr10 = new int[i34];
                while (aVar2.a()) {
                    int i35 = aVar2.b;
                    jArr10[i35] = aVar2.d;
                    iArr10[i35] = aVar2.c;
                }
                r8.b bVarA = r8.a(iA4, jArr10, iArr10, iA10);
                long[] jArr11 = bVarA.a;
                int[] iArr11 = bVarA.b;
                int i36 = bVarA.c;
                long[] jArr12 = bVarA.d;
                int[] iArr12 = bVarA.e;
                long j8 = bVarA.f;
                loVar2 = loVar;
                i13 = iB;
                jArr = jArr11;
                iArr = iArr11;
                i14 = i36;
                iArr2 = iArr12;
                j3 = j8;
                jArr2 = jArr12;
            } else {
                jArrCopyOf = new long[iB];
                iArrCopyOf = new int[iB];
                jArrCopyOf2 = new long[iB];
                iArrCopyOf2 = new int[iB];
                iA5 = iA3;
                i = 0;
                i2 = 0;
                iJ = 0;
                i3 = 0;
                iA6 = 0;
                j = 0;
                j2 = 0;
                i4 = iA;
                i5 = iA10;
                i6 = iA9;
                i7 = iA8;
                i8 = iA2;
                while (true) {
                    i9 = i7;
                    if (i < iB) {
                        i10 = i6;
                        i11 = i3;
                        break;
                    }
                    j4 = j2;
                    i15 = i3;
                    zA = true;
                    while (i15 == 0) {
                        zA = aVar2.a();
                        if (zA) {
                            break;
                        }
                        int i37 = i6;
                        long j9 = aVar2.d;
                        i15 = aVar2.c;
                        j4 = j9;
                        i6 = i37;
                        i5 = i5;
                        iB = iB;
                    }
                    i16 = iB;
                    i10 = i6;
                    i17 = i5;
                    if (!zA) {
                        oc.d("AtomParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i);
                        iB = i;
                        i11 = i15;
                        break;
                    }
                    if (ahVar5 != null) {
                        while (iA6 == 0 && i4 > 0) {
                            iA6 = ahVar5.A();
                            iJ = ahVar5.j();
                            i4--;
                        }
                        iA6--;
                    }
                    int i38 = iJ;
                    jArrCopyOf[i] = j4;
                    iC = eVar.c();
                    iArrCopyOf[i] = iC;
                    if (iC > i2) {
                        i2 = iC;
                    }
                    jArrCopyOf2[i] = j + ((long) i38);
                    if (ahVar4 == null) {
                        i18 = 1;
                    } else {
                        i18 = 0;
                    }
                    iArrCopyOf2[i] = i18;
                    if (i == iA5) {
                        iArrCopyOf2[i] = 1;
                        i8--;
                        if (i8 > 0) {
                            iA5 = ((ah) b1.a(ahVar4)).A() - 1;
                        }
                    }
                    int i39 = iA5;
                    j += (long) i17;
                    iA7 = i10 - 1;
                    if (iA7 == 0 || i9 <= 0) {
                        iJ2 = i17;
                        i19 = i9;
                    } else {
                        iA7 = ahVar3.A();
                        iJ2 = ahVar3.j();
                        i19 = i9 - 1;
                    }
                    int i40 = iA7;
                    long j10 = j4 + ((long) iArrCopyOf[i]);
                    i3 = i15 - 1;
                    i++;
                    j2 = j10;
                    iA5 = i39;
                    i5 = iJ2;
                    iB = i16;
                    iJ = i38;
                    i7 = i19;
                    i6 = i40;
                }
                long j11 = j + ((long) iJ);
                if (ahVar5 != null) {
                    z3 = true;
                    break;
                }
                while (true) {
                    if (i4 > 0) {
                        z3 = true;
                        break;
                    }
                    if (ahVar5.A() != 0) {
                        z3 = false;
                        break;
                    }
                    ahVar5.j();
                    i4--;
                }
                if (i8 != 0 && i10 == 0 && i11 == 0 && i9 == 0) {
                    i12 = iA6;
                    if (i12 == 0 && z3) {
                        loVar2 = loVar;
                    }
                    i13 = iB;
                    jArr = jArrCopyOf;
                    iArr = iArrCopyOf;
                    i14 = i2;
                    j3 = j11;
                    jArr2 = jArrCopyOf2;
                    iArr2 = iArrCopyOf2;
                } else {
                    i12 = iA6;
                }
                StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                loVar2 = loVar;
                sb.append(loVar2.a);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i8);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i10);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i11);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i9);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(i12);
                if (z3) {
                    str = "";
                } else {
                    str = ", ctts invalid";
                }
                sb.append(str);
                oc.d("AtomParsers", sb.toString());
                i13 = iB;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                i14 = i2;
                j3 = j11;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            }
            jC = xp.c(j3, 1000000L, loVar2.c);
            jArr3 = loVar2.h;
            if (jArr3 == null) {
                xp.a(jArr2, 1000000L, loVar2.c);
                return new ro(loVar, jArr, iArr, i14, jArr2, iArr2, jC);
            }
            if (jArr3.length != 1 && loVar2.b == 1 && jArr2.length >= 2) {
                long j12 = ((long[]) b1.a(loVar2.i))[0];
                long jC2 = j12 + xp.c(loVar2.h[0], loVar2.c, loVar2.d);
                i20 = i13;
                if (a(jArr2, j3, j12, jC2)) {
                    long jC3 = xp.c(j12 - jArr2[0], loVar2.f.A, loVar2.c);
                    i21 = i14;
                    long jC4 = xp.c(j3 - jC2, loVar2.f.A, loVar2.c);
                    if ((jC3 != 0 || jC4 != 0) && jC3 <= 2147483647L && jC4 <= 2147483647L) {
                        y9Var.a = (int) jC3;
                        y9Var.b = (int) jC4;
                        xp.a(jArr2, 1000000L, loVar2.c);
                        return new ro(loVar, jArr, iArr, i21, jArr2, iArr2, xp.c(loVar2.h[0], 1000000L, loVar2.d));
                    }
                }
                jArr4 = loVar2.h;
                if (jArr4.length != 1 && jArr4[0] == 0) {
                    long j13 = ((long[]) b1.a(loVar2.i))[0];
                    for (int i41 = 0; i41 < jArr2.length; i41++) {
                        jArr2[i41] = xp.c(jArr2[i41] - j13, 1000000L, loVar2.c);
                    }
                    return new ro(loVar, jArr, iArr, i21, jArr2, iArr2, xp.c(j3 - j13, 1000000L, loVar2.c));
                }
                if (loVar2.b == 1) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                iArr3 = new int[jArr4.length];
                iArr4 = new int[jArr4.length];
                jArr5 = (long[]) b1.a(loVar2.i);
                i22 = 0;
                i23 = 0;
                z5 = false;
                i24 = 0;
                while (true) {
                    jArr6 = loVar2.h;
                    if (i22 >= jArr6.length) {
                        break;
                    }
                    long[] jArr13 = jArr;
                    int[] iArr13 = iArr;
                    j7 = jArr5[i22];
                    if (j7 != -1) {
                        long j14 = jArr6[i22];
                        boolean z11 = z5;
                        i32 = i24;
                        long jC5 = xp.c(j14, loVar2.c, loVar2.d);
                        iArr3[i22] = xp.b(jArr2, j7, true, true);
                        z8 = z4;
                        iArr4[i22] = xp.a(jArr2, j7 + jC5, z8, false);
                        while (true) {
                            i33 = iArr3[i22];
                            i31 = iArr4[i22];
                            if (i33 < i31 || (iArr2[i33] & 1) != 0) {
                                break;
                            }
                            iArr3[i22] = i33 + 1;
                        }
                        i23 += i31 - i33;
                        if (i32 != i33) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z9 = z11 | z10;
                    } else {
                        int i42 = i24;
                        z8 = z4;
                        z9 = z5;
                        i31 = i42;
                    }
                    i22++;
                    z5 = z9;
                    z4 = z8;
                    jArr = jArr13;
                    i24 = i31;
                    iArr = iArr13;
                }
                jArr7 = jArr;
                iArr5 = iArr;
                boolean z12 = z5;
                i25 = 0;
                if (i23 != i20) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z12 | z6;
                if (z7) {
                    jArr8 = new long[i23];
                } else {
                    jArr8 = jArr7;
                }
                if (z7) {
                    iArr6 = new int[i23];
                } else {
                    iArr6 = iArr5;
                }
                if (z7) {
                    i26 = 0;
                } else {
                    i26 = i21;
                }
                if (z7) {
                    iArr7 = new int[i23];
                } else {
                    iArr7 = iArr2;
                }
                jArr9 = new long[i23];
                i27 = i26;
                iArr8 = iArr5;
                j5 = 0;
                i28 = 0;
                while (i25 < loVar2.h.length) {
                    j6 = loVar2.i[i25];
                    i29 = iArr3[i25];
                    int[] iArr14 = iArr3;
                    i30 = iArr4[i25];
                    int[] iArr15 = iArr4;
                    if (z7) {
                        int i43 = i30 - i29;
                        System.arraycopy(jArr7, i29, jArr8, i28, i43);
                        iArr9 = iArr8;
                        System.arraycopy(iArr9, i29, iArr6, i28, i43);
                        System.arraycopy(iArr2, i29, iArr7, i28, i43);
                    } else {
                        iArr9 = iArr8;
                    }
                    int i44 = i27;
                    while (i29 < i30) {
                        int i45 = i25;
                        int[] iArr16 = iArr7;
                        long[] jArr14 = jArr2;
                        int[] iArr17 = iArr2;
                        long j15 = j5;
                        jArr9[i28] = xp.c(j5, 1000000L, loVar2.d) + xp.c(Math.max(0L, jArr2[i29] - j6), 1000000L, loVar2.c);
                        if (!z7 && iArr6[i28] > i44) {
                            i44 = iArr9[i29];
                        }
                        i28++;
                        i29++;
                        iArr2 = iArr17;
                        j5 = j15;
                        jArr2 = jArr14;
                        iArr7 = iArr16;
                        i25 = i45;
                    }
                    int i46 = i25;
                    i27 = i44;
                    j5 += loVar2.h[i46];
                    iArr8 = iArr9;
                    iArr4 = iArr15;
                    jArr7 = jArr7;
                    iArr7 = iArr7;
                    i25 = i46 + 1;
                    iArr3 = iArr14;
                }
                return new ro(loVar, jArr8, iArr6, i27, jArr9, iArr7, xp.c(j5, 1000000L, loVar2.d));
            }
            i20 = i13;
            i21 = i14;
            jArr4 = loVar2.h;
            if (jArr4.length != 1) {
            }
            if (loVar2.b == 1) {
                z4 = true;
            } else {
                z4 = false;
            }
            iArr3 = new int[jArr4.length];
            iArr4 = new int[jArr4.length];
            jArr5 = (long[]) b1.a(loVar2.i);
            i22 = 0;
            i23 = 0;
            z5 = false;
            i24 = 0;
            while (true) {
                jArr6 = loVar2.h;
                if (i22 >= jArr6.length) {
                    break;
                    break;
                }
                long[] jArr15 = jArr;
                int[] iArr18 = iArr;
                j7 = jArr5[i22];
                if (j7 != -1) {
                    long j16 = jArr6[i22];
                    boolean z13 = z5;
                    i32 = i24;
                    long jC6 = xp.c(j16, loVar2.c, loVar2.d);
                    iArr3[i22] = xp.b(jArr2, j7, true, true);
                    z8 = z4;
                    iArr4[i22] = xp.a(jArr2, j7 + jC6, z8, false);
                    while (true) {
                        i33 = iArr3[i22];
                        i31 = iArr4[i22];
                        if (i33 < i31) {
                            break;
                        }
                        break;
                        break;
                        iArr3[i22] = i33 + 1;
                    }
                    i23 += i31 - i33;
                    if (i32 != i33) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z9 = z13 | z10;
                } else {
                    int i47 = i24;
                    z8 = z4;
                    z9 = z5;
                    i31 = i47;
                }
                i22++;
                z5 = z9;
                z4 = z8;
                jArr = jArr15;
                i24 = i31;
                iArr = iArr18;
            }
            jArr7 = jArr;
            iArr5 = iArr;
            boolean z14 = z5;
            i25 = 0;
            if (i23 != i20) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z14 | z6;
            if (z7) {
                jArr8 = new long[i23];
            } else {
                jArr8 = jArr7;
            }
            if (z7) {
                iArr6 = new int[i23];
            } else {
                iArr6 = iArr5;
            }
            if (z7) {
                i26 = 0;
            } else {
                i26 = i21;
            }
            if (z7) {
                iArr7 = new int[i23];
            } else {
                iArr7 = iArr2;
            }
            jArr9 = new long[i23];
            i27 = i26;
            iArr8 = iArr5;
            j5 = 0;
            i28 = 0;
            while (i25 < loVar2.h.length) {
                j6 = loVar2.i[i25];
                i29 = iArr3[i25];
                int[] iArr19 = iArr3;
                i30 = iArr4[i25];
                int[] iArr110 = iArr4;
                if (z7) {
                    int i48 = i30 - i29;
                    System.arraycopy(jArr7, i29, jArr8, i28, i48);
                    iArr9 = iArr8;
                    System.arraycopy(iArr9, i29, iArr6, i28, i48);
                    System.arraycopy(iArr2, i29, iArr7, i28, i48);
                } else {
                    iArr9 = iArr8;
                }
                int i49 = i27;
                while (i29 < i30) {
                    int i410 = i25;
                    int[] iArr111 = iArr7;
                    long[] jArr16 = jArr2;
                    int[] iArr112 = iArr2;
                    long j17 = j5;
                    jArr9[i28] = xp.c(j5, 1000000L, loVar2.d) + xp.c(Math.max(0L, jArr2[i29] - j6), 1000000L, loVar2.c);
                    if (!z7) {
                    }
                    i28++;
                    i29++;
                    iArr2 = iArr112;
                    j5 = j17;
                    jArr2 = jArr16;
                    iArr7 = iArr111;
                    i25 = i410;
                }
                int i411 = i25;
                i27 = i49;
                j5 += loVar2.h[i411];
                iArr8 = iArr9;
                iArr4 = iArr110;
                jArr7 = jArr7;
                iArr7 = iArr7;
                i25 = i411 + 1;
                iArr3 = iArr19;
            }
            return new ro(loVar, jArr8, iArr6, i27, jArr9, iArr7, xp.c(j5, 1000000L, loVar2.d));
        }
        iA2 = 0;
        iA3 = -1;
        iA4 = eVar.a();
        String str3 = loVar.f.m;
        if (iA4 == -1) {
            z2 = false;
        } else {
            z2 = false;
        }
        if (z2) {
            int i310 = aVar2.a;
            jArr10 = new long[i310];
            iArr10 = new int[i310];
            while (aVar2.a()) {
                int i311 = aVar2.b;
                jArr10[i311] = aVar2.d;
                iArr10[i311] = aVar2.c;
            }
            r8.b bVarA2 = r8.a(iA4, jArr10, iArr10, iA10);
            long[] jArr17 = bVarA2.a;
            int[] iArr113 = bVarA2.b;
            int i312 = bVarA2.c;
            long[] jArr18 = bVarA2.d;
            int[] iArr114 = bVarA2.e;
            long j18 = bVarA2.f;
            loVar2 = loVar;
            i13 = iB;
            jArr = jArr17;
            iArr = iArr113;
            i14 = i312;
            iArr2 = iArr114;
            j3 = j18;
            jArr2 = jArr18;
        } else {
            jArrCopyOf = new long[iB];
            iArrCopyOf = new int[iB];
            jArrCopyOf2 = new long[iB];
            iArrCopyOf2 = new int[iB];
            iA5 = iA3;
            i = 0;
            i2 = 0;
            iJ = 0;
            i3 = 0;
            iA6 = 0;
            j = 0;
            j2 = 0;
            i4 = iA;
            i5 = iA10;
            i6 = iA9;
            i7 = iA8;
            i8 = iA2;
            while (true) {
                i9 = i7;
                if (i < iB) {
                    i10 = i6;
                    i11 = i3;
                    break;
                }
                j4 = j2;
                i15 = i3;
                zA = true;
                while (i15 == 0) {
                    zA = aVar2.a();
                    if (zA) {
                        break;
                        break;
                    }
                    int i313 = i6;
                    long j19 = aVar2.d;
                    i15 = aVar2.c;
                    j4 = j19;
                    i6 = i313;
                    i5 = i5;
                    iB = iB;
                }
                i16 = iB;
                i10 = i6;
                i17 = i5;
                if (!zA) {
                    oc.d("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i);
                    iB = i;
                    i11 = i15;
                    break;
                }
                if (ahVar5 != null) {
                    while (iA6 == 0) {
                        iA6 = ahVar5.A();
                        iJ = ahVar5.j();
                        i4--;
                    }
                    iA6--;
                }
                int i314 = iJ;
                jArrCopyOf[i] = j4;
                iC = eVar.c();
                iArrCopyOf[i] = iC;
                if (iC > i2) {
                    i2 = iC;
                }
                jArrCopyOf2[i] = j + ((long) i314);
                if (ahVar4 == null) {
                    i18 = 1;
                } else {
                    i18 = 0;
                }
                iArrCopyOf2[i] = i18;
                if (i == iA5) {
                    iArrCopyOf2[i] = 1;
                    i8--;
                    if (i8 > 0) {
                        iA5 = ((ah) b1.a(ahVar4)).A() - 1;
                    }
                }
                int i315 = iA5;
                j += (long) i17;
                iA7 = i10 - 1;
                if (iA7 == 0) {
                    iJ2 = i17;
                    i19 = i9;
                } else {
                    iJ2 = i17;
                    i19 = i9;
                }
                int i412 = iA7;
                long j110 = j4 + ((long) iArrCopyOf[i]);
                i3 = i15 - 1;
                i++;
                j2 = j110;
                iA5 = i315;
                i5 = iJ2;
                iB = i16;
                iJ = i314;
                i7 = i19;
                i6 = i412;
            }
            long j111 = j + ((long) iJ);
            if (ahVar5 != null) {
                z3 = true;
                break;
            }
            while (true) {
                if (i4 > 0) {
                    z3 = true;
                    break;
                }
                if (ahVar5.A() != 0) {
                    z3 = false;
                    break;
                }
                ahVar5.j();
                i4--;
            }
            if (i8 != 0) {
                i12 = iA6;
                StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                loVar2 = loVar;
                sb2.append(loVar2.a);
                sb2.append(": remainingSynchronizationSamples ");
                sb2.append(i8);
                sb2.append(", remainingSamplesAtTimestampDelta ");
                sb2.append(i10);
                sb2.append(", remainingSamplesInChunk ");
                sb2.append(i11);
                sb2.append(", remainingTimestampDeltaChanges ");
                sb2.append(i9);
                sb2.append(", remainingSamplesAtTimestampOffset ");
                sb2.append(i12);
                if (z3) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb2.append(str);
                oc.d("AtomParsers", sb2.toString());
            } else {
                i12 = iA6;
                StringBuilder sb3 = new StringBuilder("Inconsistent stbl box for track ");
                loVar2 = loVar;
                sb3.append(loVar2.a);
                sb3.append(": remainingSynchronizationSamples ");
                sb3.append(i8);
                sb3.append(", remainingSamplesAtTimestampDelta ");
                sb3.append(i10);
                sb3.append(", remainingSamplesInChunk ");
                sb3.append(i11);
                sb3.append(", remainingTimestampDeltaChanges ");
                sb3.append(i9);
                sb3.append(", remainingSamplesAtTimestampOffset ");
                sb3.append(i12);
                if (z3) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb3.append(str);
                oc.d("AtomParsers", sb3.toString());
            }
            i13 = iB;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            i14 = i2;
            j3 = j111;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        jC = xp.c(j3, 1000000L, loVar2.c);
        jArr3 = loVar2.h;
        if (jArr3 == null) {
            xp.a(jArr2, 1000000L, loVar2.c);
            return new ro(loVar, jArr, iArr, i14, jArr2, iArr2, jC);
        }
        if (jArr3.length != 1) {
            i20 = i13;
            i21 = i14;
        } else {
            i20 = i13;
            i21 = i14;
        }
        jArr4 = loVar2.h;
        if (jArr4.length != 1) {
        }
        if (loVar2.b == 1) {
            z4 = true;
        } else {
            z4 = false;
        }
        iArr3 = new int[jArr4.length];
        iArr4 = new int[jArr4.length];
        jArr5 = (long[]) b1.a(loVar2.i);
        i22 = 0;
        i23 = 0;
        z5 = false;
        i24 = 0;
        while (true) {
            jArr6 = loVar2.h;
            if (i22 >= jArr6.length) {
                break;
                break;
            }
            long[] jArr19 = jArr;
            int[] iArr115 = iArr;
            j7 = jArr5[i22];
            if (j7 != -1) {
                long j112 = jArr6[i22];
                boolean z15 = z5;
                i32 = i24;
                long jC7 = xp.c(j112, loVar2.c, loVar2.d);
                iArr3[i22] = xp.b(jArr2, j7, true, true);
                z8 = z4;
                iArr4[i22] = xp.a(jArr2, j7 + jC7, z8, false);
                while (true) {
                    i33 = iArr3[i22];
                    i31 = iArr4[i22];
                    if (i33 < i31) {
                        break;
                        break;
                    }
                    break;
                    break;
                    iArr3[i22] = i33 + 1;
                }
                i23 += i31 - i33;
                if (i32 != i33) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z9 = z15 | z10;
            } else {
                int i413 = i24;
                z8 = z4;
                z9 = z5;
                i31 = i413;
            }
            i22++;
            z5 = z9;
            z4 = z8;
            jArr = jArr19;
            i24 = i31;
            iArr = iArr115;
        }
        jArr7 = jArr;
        iArr5 = iArr;
        boolean z16 = z5;
        i25 = 0;
        if (i23 != i20) {
            z6 = true;
        } else {
            z6 = false;
        }
        z7 = z16 | z6;
        if (z7) {
            jArr8 = new long[i23];
        } else {
            jArr8 = jArr7;
        }
        if (z7) {
            iArr6 = new int[i23];
        } else {
            iArr6 = iArr5;
        }
        if (z7) {
            i26 = 0;
        } else {
            i26 = i21;
        }
        if (z7) {
            iArr7 = new int[i23];
        } else {
            iArr7 = iArr2;
        }
        jArr9 = new long[i23];
        i27 = i26;
        iArr8 = iArr5;
        j5 = 0;
        i28 = 0;
        while (i25 < loVar2.h.length) {
            j6 = loVar2.i[i25];
            i29 = iArr3[i25];
            int[] iArr116 = iArr3;
            i30 = iArr4[i25];
            int[] iArr117 = iArr4;
            if (z7) {
                int i414 = i30 - i29;
                System.arraycopy(jArr7, i29, jArr8, i28, i414);
                iArr9 = iArr8;
                System.arraycopy(iArr9, i29, iArr6, i28, i414);
                System.arraycopy(iArr2, i29, iArr7, i28, i414);
            } else {
                iArr9 = iArr8;
            }
            int i415 = i27;
            while (i29 < i30) {
                int i416 = i25;
                int[] iArr118 = iArr7;
                long[] jArr110 = jArr2;
                int[] iArr119 = iArr2;
                long j113 = j5;
                jArr9[i28] = xp.c(j5, 1000000L, loVar2.d) + xp.c(Math.max(0L, jArr2[i29] - j6), 1000000L, loVar2.c);
                if (!z7) {
                }
                i28++;
                i29++;
                iArr2 = iArr119;
                j5 = j113;
                jArr2 = jArr110;
                iArr7 = iArr118;
                i25 = i416;
            }
            int i417 = i25;
            i27 = i415;
            j5 += loVar2.h[i417];
            iArr8 = iArr9;
            iArr4 = iArr117;
            jArr7 = jArr7;
            iArr7 = iArr7;
            i25 = i417 + 1;
            iArr3 = iArr116;
        }
        return new ro(loVar, jArr8, iArr6, i27, jArr9, iArr7, xp.c(j5, 1000000L, loVar2.d));
    }

    private static c a(ah ahVar, int i, int i2, String str, x6 x6Var, boolean z) throws ch {
        int i3;
        ahVar.f(12);
        int iJ = ahVar.j();
        c cVar = new c(iJ);
        for (int i4 = 0; i4 < iJ; i4++) {
            int iD = ahVar.d();
            int iJ2 = ahVar.j();
            m8.a(iJ2 > 0, "childAtomSize must be positive");
            int iJ3 = ahVar.j();
            if (iJ3 == 1635148593 || iJ3 == 1635148595 || iJ3 == 1701733238 || iJ3 == 1831958048 || iJ3 == 1836070006 || iJ3 == 1752589105 || iJ3 == 1751479857 || iJ3 == 1932670515 || iJ3 == 1211250227 || iJ3 == 1987063864 || iJ3 == 1987063865 || iJ3 == 1635135537 || iJ3 == 1685479798 || iJ3 == 1685479729 || iJ3 == 1685481573 || iJ3 == 1685481521) {
                i3 = iD;
                a(ahVar, iJ3, i3, iJ2, i, i2, x6Var, cVar, i4);
            } else if (iJ3 == 1836069985 || iJ3 == 1701733217 || iJ3 == 1633889587 || iJ3 == 1700998451 || iJ3 == 1633889588 || iJ3 == 1685353315 || iJ3 == 1685353317 || iJ3 == 1685353320 || iJ3 == 1685353324 || iJ3 == 1685353336 || iJ3 == 1935764850 || iJ3 == 1935767394 || iJ3 == 1819304813 || iJ3 == 1936684916 || iJ3 == 1953984371 || iJ3 == 778924082 || iJ3 == 778924083 || iJ3 == 1835557169 || iJ3 == 1835560241 || iJ3 == 1634492771 || iJ3 == 1634492791 || iJ3 == 1970037111 || iJ3 == 1332770163 || iJ3 == 1716281667) {
                i3 = iD;
                a(ahVar, iJ3, iD, iJ2, i, str, z, x6Var, cVar, i4);
            } else {
                if (iJ3 == 1414810956 || iJ3 == 1954034535 || iJ3 == 2004251764 || iJ3 == 1937010800 || iJ3 == 1664495672) {
                    a(ahVar, iJ3, iD, iJ2, i, str, cVar);
                } else if (iJ3 == 1835365492) {
                    a(ahVar, iJ3, iD, i, cVar);
                } else if (iJ3 == 1667329389) {
                    cVar.b = new e9.b().h(i).f("application/x-camera-motion").a();
                }
                i3 = iD;
            }
            ahVar.f(i3 + iJ2);
        }
        return cVar;
    }

    private static void a(ah ahVar, int i, int i2, int i3, int i4, String str, c cVar) {
        ahVar.f(i2 + 16);
        String str2 = "application/ttml+xml";
        db dbVarA = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                ahVar.a(bArr, 0, i5);
                dbVarA = db.a(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i == 1937010800) {
                j = 0;
            } else if (i == 1664495672) {
                cVar.d = 1;
                str2 = "application/x-mp4-cea-608";
            } else {
                throw new IllegalStateException();
            }
        }
        cVar.b = new e9.b().h(i4).f(str2).e(str).a(j).a(dbVarA).a();
    }

    private static lo a(j1.a aVar, j1.b bVar, long j, x6 x6Var, boolean z, boolean z2) throws ch {
        long[] jArr;
        long[] jArr2;
        j1.a aVarD;
        Pair pairA;
        j1.a aVar2 = (j1.a) b1.a(aVar.d(1835297121));
        int iA = a(c(((j1.b) b1.a(aVar2.e(1751411826))).b));
        if (iA == -1) {
            return null;
        }
        f fVarF = f(((j1.b) b1.a(aVar.e(1953196132))).b);
        long j2 = j == -9223372036854775807L ? fVarF.b : j;
        long jE = e(bVar.b);
        long jC = j2 != -9223372036854775807L ? xp.c(j2, 1000000L, jE) : -9223372036854775807L;
        j1.a aVar3 = (j1.a) b1.a(((j1.a) b1.a(aVar2.d(1835626086))).d(1937007212));
        Pair pairD = d(((j1.b) b1.a(aVar2.e(1835296868))).b);
        c cVarA = a(((j1.b) b1.a(aVar3.e(1937011556))).b, fVarF.a, fVarF.c, (String) pairD.second, x6Var, z2);
        if (z || (aVarD = aVar.d(1701082227)) == null || (pairA = a(aVarD)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairA.first;
            jArr2 = (long[]) pairA.second;
            jArr = jArr3;
        }
        if (cVarA.b == null) {
            return null;
        }
        return new lo(fVarF.a, iA, ((Long) pairD.first).longValue(), jE, jC, cVarA.b, cVarA.d, cVarA.a, cVarA.c, jArr, jArr2);
    }

    public static Pair a(j1.b bVar) {
        ah ahVar = bVar.b;
        ahVar.f(8);
        af afVarE = null;
        af afVarD = null;
        while (ahVar.a() >= 8) {
            int iD = ahVar.d();
            int iJ = ahVar.j();
            int iJ2 = ahVar.j();
            if (iJ2 == 1835365473) {
                ahVar.f(iD);
                afVarE = e(ahVar, iD + iJ);
            } else if (iJ2 == 1936553057) {
                ahVar.f(iD);
                afVarD = d(ahVar, iD + iJ);
            }
            ahVar.f(iD + iJ);
        }
        return Pair.create(afVarE, afVarD);
    }

    private static void a(ah ahVar, int i, int i2, int i3, int i4, int i5, x6 x6Var, c cVar, int i6) throws ch {
        String str;
        x6 x6Var2;
        String str2;
        ah ahVar2 = ahVar;
        int i7 = i2;
        int i8 = i3;
        x6 x6VarA = x6Var;
        ahVar2.f(i7 + 16);
        ahVar2.g(16);
        int iC = ahVar.C();
        int iC2 = ahVar.C();
        ahVar2.g(50);
        int iD = ahVar.d();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair pairD = d(ahVar2, i7, i8);
            if (pairD != null) {
                iIntValue = ((Integer) pairD.first).intValue();
                x6VarA = x6VarA == null ? null : x6VarA.a(((mo) pairD.second).b);
                cVar.a[i6] = (mo) pairD.second;
            }
            ahVar2.f(iD);
        }
        String str3 = "video/3gpp";
        if (iIntValue == 1831958048) {
            str = "video/mpeg";
        } else {
            str = iIntValue == 1211250227 ? "video/3gpp" : null;
        }
        float fC = 1.0f;
        int i9 = -1;
        String str4 = null;
        List listA = null;
        byte[] bArrC = null;
        r3 r3Var = null;
        boolean z = false;
        while (true) {
            if (iD - i7 >= i8) {
                x6Var2 = x6VarA;
                break;
            }
            ahVar2.f(iD);
            int iD2 = ahVar.d();
            String str5 = str3;
            int iJ = ahVar.j();
            if (iJ == 0) {
                x6Var2 = x6VarA;
                if (ahVar.d() - i7 == i8) {
                    break;
                }
            } else {
                x6Var2 = x6VarA;
            }
            m8.a(iJ > 0, "childAtomSize must be positive");
            int iJ2 = ahVar.j();
            if (iJ2 == 1635148611) {
                m8.a(str == null, (String) null);
                ahVar2.f(iD2 + 8);
                w1 w1VarB = w1.b(ahVar);
                listA = w1VarB.a;
                cVar.c = w1VarB.b;
                if (!z) {
                    fC = w1VarB.e;
                }
                str4 = w1VarB.f;
                str2 = MimeTypes.VIDEO_H264;
            } else if (iJ2 == 1752589123) {
                m8.a(str == null, (String) null);
                ahVar2.f(iD2 + 8);
                na naVarA = na.a(ahVar);
                listA = naVarA.a;
                cVar.c = naVarA.b;
                str4 = naVarA.c;
                str2 = MimeTypes.VIDEO_H265;
            } else {
                if (iJ2 == 1685480259 || iJ2 == 1685485123) {
                    w6 w6VarA = w6.a(ahVar);
                    if (w6VarA != null) {
                        str4 = w6VarA.c;
                        str = "video/dolby-vision";
                    }
                } else if (iJ2 == 1987076931) {
                    m8.a(str == null, (String) null);
                    str2 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                } else if (iJ2 == 1635135811) {
                    m8.a(str == null, (String) null);
                    str = MimeTypes.VIDEO_AV1;
                } else if (iJ2 == 1681012275) {
                    m8.a(str == null, (String) null);
                    str = str5;
                } else if (iJ2 == 1702061171) {
                    m8.a(str == null, (String) null);
                    Pair pairA = a(ahVar2, iD2);
                    String str6 = (String) pairA.first;
                    byte[] bArr = (byte[]) pairA.second;
                    if (bArr != null) {
                        listA = db.a(bArr);
                    }
                    str = str6;
                } else if (iJ2 == 1885434736) {
                    fC = c(ahVar2, iD2);
                    z = true;
                } else if (iJ2 == 1937126244) {
                    bArrC = c(ahVar2, iD2, iJ);
                } else if (iJ2 == 1936995172) {
                    int iW = ahVar.w();
                    ahVar2.g(3);
                    if (iW == 0) {
                        int iW2 = ahVar.w();
                        if (iW2 == 0) {
                            i9 = 0;
                        } else if (iW2 == 1) {
                            i9 = 1;
                        } else if (iW2 == 2) {
                            i9 = 2;
                        } else if (iW2 == 3) {
                            i9 = 3;
                        }
                    }
                } else if (iJ2 == 1668246642) {
                    int iJ3 = ahVar.j();
                    boolean z2 = iJ3 == 1852009592;
                    if (!z2 && iJ3 != 1852009571) {
                        oc.d("AtomParsers", "Unsupported color type: " + j1.a(iJ3));
                    } else {
                        int iC3 = ahVar.C();
                        int iC4 = ahVar.C();
                        ahVar2.g(2);
                        r3Var = new r3(r3.a(iC3), z2 && (ahVar.w() & 128) != 0 ? 1 : 2, r3.b(iC4), null);
                    }
                }
                iD += iJ;
                ahVar2 = ahVar;
                i7 = i2;
                i8 = i3;
                str3 = str5;
                x6VarA = x6Var2;
            }
            str = str2;
            iD += iJ;
            ahVar2 = ahVar;
            i7 = i2;
            i8 = i3;
            str3 = str5;
            x6VarA = x6Var2;
        }
        if (str == null) {
            return;
        }
        cVar.b = new e9.b().h(i4).f(str).a(str4).q(iC).g(iC2).b(fC).m(i5).a(bArrC).p(i9).a(listA).a(x6Var2).a(r3Var).a();
    }

    public static List a(j1.a aVar, y9 y9Var, long j, x6 x6Var, boolean z, boolean z2, Function function) {
        lo loVar;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < aVar.d.size(); i++) {
            j1.a aVar2 = (j1.a) aVar.d.get(i);
            if (aVar2.a == 1953653099 && (loVar = (lo) function.apply(a(aVar2, (j1.b) b1.a(aVar.e(1836476516)), j, x6Var, z, z2))) != null) {
                arrayList.add(a(loVar, (j1.a) b1.a(((j1.a) b1.a(((j1.a) b1.a(aVar2.d(1835297121))).d(1835626086))).d(1937007212)), y9Var));
            }
        }
        return arrayList;
    }
}
