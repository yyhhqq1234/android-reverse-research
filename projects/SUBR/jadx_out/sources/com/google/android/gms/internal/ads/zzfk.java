package com.google.android.gms.internal.ads;

import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfk {
    public static final byte[] zza = {0, 0, 0, 1};
    public static final float[] zzb = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzc = new Object();
    private static int[] zzd = new int[10];

    public static int zza(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        zzcw.zzf(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            zzh(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            zzh(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            zzh(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b = bArr[i5];
            if ((b & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                    zzh(zArr);
                    return i6;
                }
                i5 = i6;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b9  */
    public static zzfe zzc(byte[] bArr, int i, int i2, zzfh zzfhVar) {
        boolean z;
        int i3;
        int iZzc;
        int iZzc2;
        int i4;
        int i5;
        int iZzc3;
        int iMax;
        int i6;
        int iZzb;
        float f;
        int i7;
        int i8;
        int i9;
        zzfg zzfgVar;
        int i10;
        int iZza;
        int i11;
        int i12;
        zzfc zzfcVar;
        zzey zzeyVarZzl = zzl(new zzfl(bArr, i, i2));
        zzfl zzflVar = new zzfl(bArr, i + 2, i2);
        zzflVar.zzf(4);
        int iZza2 = zzflVar.zza(3);
        if (zzeyVarZzl.zzb == 0 || iZza2 != 7) {
            z = false;
        } else {
            iZza2 = 7;
            z = true;
        }
        int i13 = (zzfhVar == null || zzfhVar.zza.isEmpty()) ? 0 : ((zzex) zzfhVar.zza.get(Math.min(zzeyVarZzl.zzb, zzfhVar.zza.size() - 1))).zza;
        zzez zzezVarZzm = null;
        if (!z) {
            zzflVar.zze();
            zzezVarZzm = zzm(zzflVar, true, iZza2, null);
        } else if (zzfhVar != null) {
            zzfa zzfaVar = zzfhVar.zzb;
            int i14 = zzfaVar.zzb[i13];
            if (zzfaVar.zza.size() > i14) {
                zzezVarZzm = (zzez) zzfhVar.zzb.zza.get(i14);
            }
        }
        int iZzc4 = zzflVar.zzc();
        if (z) {
            int iZza3 = zzflVar.zzh() ? zzflVar.zza(8) : -1;
            if (zzfhVar == null || (zzfcVar = zzfhVar.zzc) == null) {
                i5 = 0;
                i4 = 0;
                iZzc2 = 0;
                iZzc3 = 0;
                iZzc = 0;
            } else {
                if (iZza3 == -1) {
                    iZza3 = zzfcVar.zzb[i13];
                }
                if (iZza3 == -1 || zzfcVar.zza.size() <= iZza3) {
                    i5 = 0;
                    i4 = 0;
                    iZzc2 = 0;
                    iZzc3 = 0;
                    iZzc = 0;
                } else {
                    zzfb zzfbVar = (zzfb) zzfhVar.zzc.zza.get(iZza3);
                    int i15 = zzfbVar.zza;
                    int i16 = zzfbVar.zzd;
                    iZzc = zzfbVar.zze;
                    int i17 = zzfbVar.zzb;
                    i5 = i16;
                    i4 = i15;
                    iZzc3 = zzfbVar.zzc;
                    iZzc2 = i17;
                }
            }
        } else {
            int iZzc5 = zzflVar.zzc();
            if (iZzc5 == 3) {
                zzflVar.zze();
                i3 = 3;
            } else {
                i3 = iZzc5;
            }
            int iZzc6 = zzflVar.zzc();
            iZzc = zzflVar.zzc();
            if (zzflVar.zzh()) {
                int iZzc7 = zzflVar.zzc();
                int iZzc8 = zzflVar.zzc();
                int iZzc9 = zzflVar.zzc();
                int iZzc10 = zzflVar.zzc();
                iZzc6 = zzk(iZzc6, i3, iZzc7, iZzc8);
                iZzc = zzj(iZzc, i3, iZzc9, iZzc10);
            }
            iZzc2 = zzflVar.zzc();
            i4 = iZzc5;
            i5 = iZzc6;
            iZzc3 = zzflVar.zzc();
        }
        int iZzc11 = zzflVar.zzc();
        if (z) {
            iMax = -1;
        } else {
            int i18 = true != zzflVar.zzh() ? iZza2 : 0;
            iMax = -1;
            while (i18 <= iZza2) {
                zzflVar.zzc();
                iMax = Math.max(zzflVar.zzc(), iMax);
                zzflVar.zzc();
                i18++;
                iZza2 = iZza2;
            }
        }
        zzflVar.zzc();
        zzflVar.zzc();
        zzflVar.zzc();
        zzflVar.zzc();
        zzflVar.zzc();
        zzflVar.zzc();
        if (zzflVar.zzh()) {
            int i19 = 6;
            if (z && zzflVar.zzh()) {
                zzflVar.zzf(6);
            } else if (zzflVar.zzh()) {
                int i20 = 0;
                while (i20 < 4) {
                    int i21 = 0;
                    while (i21 < i19) {
                        if (zzflVar.zzh()) {
                            int iMin = Math.min(64, 1 << ((i20 + i20) + 4));
                            if (i20 > 1) {
                                zzflVar.zzb();
                            }
                            for (int i22 = 0; i22 < iMin; i22++) {
                                zzflVar.zzb();
                            }
                            i12 = 3;
                        } else {
                            zzflVar.zzc();
                            i12 = 3;
                        }
                        i21 += i20 == i12 ? 3 : 1;
                        i5 = i5;
                        iMax = iMax;
                        i19 = 6;
                    }
                    i20++;
                    i19 = 6;
                }
            }
        }
        int i23 = i5;
        int i24 = iMax;
        zzflVar.zzf(2);
        if (zzflVar.zzh()) {
            zzflVar.zzf(8);
            zzflVar.zzc();
            zzflVar.zzc();
            zzflVar.zze();
        }
        int iZzc12 = zzflVar.zzc();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i25 = -1;
        int i26 = -1;
        int i27 = 0;
        while (i27 < iZzc12) {
            if (i27 == 0 || !zzflVar.zzh()) {
                int iZzc13 = zzflVar.zzc();
                int iZzc14 = zzflVar.zzc();
                iArr = new int[iZzc13];
                int i28 = 0;
                while (i28 < iZzc13) {
                    iArr[i28] = (i28 > 0 ? iArr[i28 - 1] : 0) - (zzflVar.zzc() + 1);
                    zzflVar.zze();
                    i28++;
                }
                int[] iArr2 = new int[iZzc14];
                int i29 = 0;
                while (i29 < iZzc14) {
                    iArr2[i29] = (i29 > 0 ? iArr2[i29 - 1] : 0) + zzflVar.zzc() + 1;
                    zzflVar.zze();
                    i29++;
                }
                i26 = iZzc14;
                iArrCopyOf = iArr2;
                i25 = iZzc13;
            } else {
                int i30 = i25 + i26;
                boolean zZzh = zzflVar.zzh();
                boolean z2 = true;
                int iZzc15 = zzflVar.zzc() + 1;
                int i31 = 1 - ((zZzh ? 1 : 0) + (zZzh ? 1 : 0));
                int i32 = i30 + 1;
                boolean[] zArr = new boolean[i32];
                int i33 = 0;
                while (i33 <= i30) {
                    if (zzflVar.zzh()) {
                        zArr[i33] = z2;
                    } else {
                        zArr[i33] = zzflVar.zzh();
                    }
                    i33++;
                    z2 = true;
                }
                int i34 = i26 - 1;
                int[] iArr3 = new int[i32];
                int[] iArr4 = new int[i32];
                int i35 = 0;
                while (true) {
                    i11 = i31 * iZzc15;
                    if (i34 < 0) {
                        break;
                    }
                    int i36 = iArrCopyOf[i34] + i11;
                    if (i36 < 0 && zArr[i25 + i34]) {
                        iArr3[i35] = i36;
                        i35++;
                    }
                    i34--;
                }
                if (i11 < 0 && zArr[i30]) {
                    iArr3[i35] = i11;
                    i35++;
                }
                int i37 = i35;
                for (int i38 = 0; i38 < i25; i38++) {
                    int i39 = iArr[i38] + i11;
                    if (i39 < 0 && zArr[i38]) {
                        iArr3[i37] = i39;
                        i37++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr3, i37);
                int i40 = 0;
                for (int i41 = i25 - 1; i41 >= 0; i41--) {
                    int i42 = iArr[i41] + i11;
                    if (i42 > 0 && zArr[i41]) {
                        iArr4[i40] = i42;
                        i40++;
                    }
                }
                if (i11 > 0 && zArr[i30]) {
                    iArr4[i40] = i11;
                    i40++;
                }
                int i43 = i40;
                for (int i44 = 0; i44 < i26; i44++) {
                    int i45 = iArrCopyOf[i44] + i11;
                    if (i45 > 0 && zArr[i25 + i44]) {
                        iArr4[i43] = i45;
                        i43++;
                    }
                }
                i26 = i43;
                iArrCopyOf = Arrays.copyOf(iArr4, i43);
                iArr = iArrCopyOf2;
                i25 = i37;
            }
            i27++;
            iZzc12 = iZzc12;
            zzezVarZzm = zzezVarZzm;
            zzeyVarZzl = zzeyVarZzl;
            iZzc3 = iZzc3;
            iZzc2 = iZzc2;
            i4 = i4;
        }
        zzey zzeyVar = zzeyVarZzl;
        int i46 = i4;
        int i47 = iZzc2;
        int i48 = iZzc3;
        zzez zzezVar = zzezVarZzm;
        if (zzflVar.zzh()) {
            int iZzc16 = zzflVar.zzc();
            for (int i49 = 0; i49 < iZzc16; i49++) {
                zzflVar.zzf(iZzc11 + 5);
            }
        }
        zzflVar.zzf(2);
        float f2 = 1.0f;
        if (zzflVar.zzh()) {
            if (zzflVar.zzh()) {
                int iZza4 = zzflVar.zza(8);
                if (iZza4 == 255) {
                    int iZza5 = zzflVar.zza(16);
                    int iZza6 = zzflVar.zza(16);
                    if (iZza5 != 0 && iZza6 != 0) {
                        f2 = iZza5 / iZza6;
                    }
                } else if (iZza4 < 17) {
                    f2 = zzb[iZza4];
                } else {
                    zzdo.zzf("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iZza4);
                }
            }
            if (zzflVar.zzh()) {
                zzflVar.zze();
            }
            if (zzflVar.zzh()) {
                zzflVar.zzf(3);
                i9 = true != zzflVar.zzh() ? 2 : 1;
                if (zzflVar.zzh()) {
                    int iZza7 = zzflVar.zza(8);
                    int iZza8 = zzflVar.zza(8);
                    zzflVar.zzf(8);
                    iZza = zzk.zza(iZza7);
                    iZzb = zzk.zzb(iZza8);
                } else {
                    iZzb = -1;
                    iZza = -1;
                }
            } else if (zzfhVar == null || (zzfgVar = zzfhVar.zzd) == null || zzfgVar.zza.size() <= (i10 = zzfgVar.zzb[i13])) {
                iZzb = -1;
                i9 = -1;
                iZza = -1;
            } else {
                zzff zzffVar = (zzff) zzfhVar.zzd.zza.get(i10);
                iZza = zzffVar.zza;
                int i50 = zzffVar.zzb;
                iZzb = zzffVar.zzc;
                i9 = i50;
            }
            if (zzflVar.zzh()) {
                zzflVar.zzc();
                zzflVar.zzc();
            }
            zzflVar.zze();
            if (zzflVar.zzh()) {
                iZzc += iZzc;
            }
            i8 = i9;
            i7 = iZza;
            i6 = iZzc;
            f = f2;
        } else {
            i6 = iZzc;
            iZzb = -1;
            f = 1.0f;
            i7 = -1;
            i8 = -1;
        }
        return new zzfe(zzeyVar, zzezVar, i46, i47, i48, iZzc4, i23, i6, f, i24, i7, i8, iZzb);
    }

    /* JADX WARN: Code duplicated, block: B:445:0x014b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x010f  */
    /* JADX WARN: Code duplicated, block: B:68:0x0126  */
    /* JADX WARN: Code duplicated, block: B:72:0x0138  */
    /* JADX WARN: Code duplicated, block: B:74:0x013d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0145  */
    /* JADX WARN: Multi-variable type inference failed */
    public static zzfh zzd(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        zzfg zzfgVar;
        boolean z;
        int iZza;
        int iZza2;
        int iZza3;
        int iZza4;
        int i5;
        int i6;
        boolean[][] zArr;
        int i7;
        int i8;
        zzfa zzfaVar;
        int[] iArr;
        int i9;
        int i10;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean zZzh;
        int i11;
        int i12;
        int i13;
        int iZzc;
        int i14;
        int i15;
        int i16;
        zzfl zzflVar = new zzfl(bArr, i, i2);
        zzey zzeyVarZzl = zzl(zzflVar);
        zzflVar.zzf(4);
        boolean zZzh2 = zzflVar.zzh();
        boolean zZzh3 = zzflVar.zzh();
        int iZza5 = zzflVar.zza(6) + 1;
        int iZza6 = zzflVar.zza(3);
        zzflVar.zzf(17);
        zzez zzezVarZzm = zzm(zzflVar, true, iZza6, null);
        int i17 = 0;
        for (int i18 = true != zzflVar.zzh() ? iZza6 : 0; i18 <= iZza6; i18++) {
            zzflVar.zzc();
            zzflVar.zzc();
            zzflVar.zzc();
        }
        int iZza7 = zzflVar.zza(6);
        int iZzc2 = zzflVar.zzc() + 1;
        zzfa zzfaVar2 = new zzfa(zzfxn.zzo(zzezVarZzm), new int[1]);
        boolean z5 = iZza5 >= 2 && iZzc2 >= 2;
        boolean z6 = zZzh2 && zZzh3;
        int i19 = iZza7 + 1;
        if (!z5 || !z6 || i19 < iZza5) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iZzc2, i19);
        int[] iArr3 = new int[iZzc2];
        int[] iArr4 = new int[iZzc2];
        iArr2[0][0] = 0;
        iArr3[0] = 1;
        iArr4[0] = 0;
        for (int i20 = 1; i20 < iZzc2; i20++) {
            int i21 = 0;
            for (int i22 = 0; i22 <= iZza7; i22++) {
                if (zzflVar.zzh()) {
                    iArr2[i20][i21] = i22;
                    iArr4[i20] = i22;
                    i21++;
                }
                iArr3[i20] = i21;
            }
        }
        int i23 = 8;
        if (zzflVar.zzh()) {
            zzflVar.zzf(64);
            if (zzflVar.zzh()) {
                zzflVar.zzc();
            }
            int iZzc3 = zzflVar.zzc();
            while (i17 < iZzc3) {
                zzflVar.zzc();
                if (i17 == 0 || zzflVar.zzh()) {
                    boolean zZzh4 = zzflVar.zzh();
                    boolean zZzh5 = zzflVar.zzh();
                    if (zZzh4 || zZzh5) {
                        z3 = zZzh4;
                        z4 = zZzh5;
                        zZzh = zzflVar.zzh();
                        if (zZzh) {
                            zzflVar.zzf(19);
                        }
                        zzflVar.zzf(i23);
                        if (zZzh) {
                            zzflVar.zzf(4);
                        }
                        zzflVar.zzf(15);
                        i12 = zZzh4;
                        i11 = zZzh5;
                    }
                    i13 = 0;
                    while (i13 <= iZza6) {
                        if (!zzflVar.zzh() || zzflVar.zzh()) {
                            zzflVar.zzc();
                        } else {
                            if (zzflVar.zzh()) {
                                iZzc = 0;
                            }
                            i14 = i12 + i11;
                            int[] iArr5 = iArr4;
                            i15 = 0;
                            while (i15 < i14) {
                                int i24 = i14;
                                for (i16 = 0; i16 <= iZzc; i16++) {
                                    zzflVar.zzc();
                                    zzflVar.zzc();
                                    if (zZzh) {
                                        zzflVar.zzc();
                                        zzflVar.zzc();
                                    }
                                    zzflVar.zze();
                                }
                                i15++;
                                i14 = i24;
                            }
                            i13++;
                            iZzc3 = iZzc3;
                            iArr4 = iArr5;
                        }
                        iZzc = zzflVar.zzc();
                        i14 = i12 + i11;
                        int[] iArr6 = iArr4;
                        i15 = 0;
                        while (i15 < i14) {
                            int i25 = i14;
                            while (i16 <= iZzc) {
                                zzflVar.zzc();
                                zzflVar.zzc();
                                if (zZzh) {
                                    zzflVar.zzc();
                                    zzflVar.zzc();
                                }
                                zzflVar.zze();
                            }
                            i15++;
                            i14 = i25;
                        }
                        i13++;
                        iZzc3 = iZzc3;
                        iArr4 = iArr6;
                    }
                    i17++;
                    i23 = 8;
                } else {
                    z3 = false;
                    z4 = false;
                }
                zZzh = false;
                i12 = z3;
                i11 = z4;
                i13 = 0;
                while (i13 <= iZza6) {
                    if (zzflVar.zzh()) {
                        zzflVar.zzc();
                        iZzc = zzflVar.zzc();
                    } else {
                        zzflVar.zzc();
                        iZzc = zzflVar.zzc();
                    }
                    i14 = i12 + i11;
                    int[] iArr7 = iArr4;
                    i15 = 0;
                    while (i15 < i14) {
                        int i26 = i14;
                        while (i16 <= iZzc) {
                            zzflVar.zzc();
                            zzflVar.zzc();
                            if (zZzh) {
                                zzflVar.zzc();
                                zzflVar.zzc();
                            }
                            zzflVar.zze();
                        }
                        i15++;
                        i14 = i26;
                    }
                    i13++;
                    iZzc3 = iZzc3;
                    iArr4 = iArr7;
                }
                i17++;
                i23 = 8;
            }
        }
        int[] iArr8 = iArr4;
        if (!zzflVar.zzh()) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        zzflVar.zzd();
        zzez zzezVarZzm2 = zzm(zzflVar, false, iZza6, zzezVarZzm);
        boolean zZzh6 = zzflVar.zzh();
        boolean[] zArr2 = new boolean[16];
        int i27 = 0;
        for (int i28 = 0; i28 < 16; i28++) {
            boolean zZzh7 = zzflVar.zzh();
            zArr2[i28] = zZzh7;
            if (zZzh7) {
                i27++;
            }
        }
        if (i27 == 0 || !zArr2[1]) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        int i29 = i27 + 1;
        int[] iArr9 = new int[i27];
        for (int i30 = 0; i30 < i27 - (zZzh6 ? 1 : 0); i30++) {
            iArr9[i30] = zzflVar.zza(3);
        }
        int[] iArr10 = new int[i29];
        if (zZzh6) {
            for (int i31 = 1; i31 < i27; i31++) {
                for (int i32 = 0; i32 < i31; i32++) {
                    iArr10[i31] = iArr10[i31] + iArr9[i32] + 1;
                }
            }
            iArr10[i27] = 6;
        }
        int[][] iArr11 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iZza5, i27);
        int[] iArr12 = new int[iZza5];
        iArr12[0] = 0;
        boolean zZzh8 = zzflVar.zzh();
        int i33 = 1;
        while (i33 < iZza5) {
            if (zZzh8) {
                iArr12[i33] = zzflVar.zza(6);
            } else {
                iArr12[i33] = i33;
            }
            if (zZzh6) {
                z2 = zZzh6 ? 1 : 0;
                int i34 = 0;
                while (i34 < i27) {
                    int i35 = i34 + 1;
                    iArr11[i33][i34] = (iArr12[i33] & ((1 << iArr10[i35]) - 1)) >> iArr10[i34];
                    i34 = i35;
                }
            } else {
                int i36 = 0;
                while (i36 < i27) {
                    iArr11[i33][i36] = zzflVar.zza(iArr9[i36] + 1);
                    i36++;
                    zZzh6 = zZzh6 ? 1 : 0;
                }
                z2 = zZzh6;
            }
            i33++;
            zZzh6 = z2;
        }
        int[] iArr13 = new int[i19];
        int i37 = 1;
        for (int i38 = 0; i38 < iZza5; i38++) {
            iArr13[iArr12[i38]] = -1;
            int i39 = 0;
            int i40 = 0;
            while (i39 < 16) {
                if (zArr2[i39]) {
                    i9 = 1;
                    if (i39 == 1) {
                        iArr13[iArr12[i38]] = iArr11[i38][i40];
                        i10 = 1;
                    } else {
                        i10 = i39;
                    }
                    i40++;
                    i39 = i10;
                } else {
                    i9 = 1;
                }
                i39 += i9;
            }
            if (i38 > 0) {
                int i41 = 0;
                while (true) {
                    if (i41 >= i38) {
                        i37++;
                        break;
                    }
                    if (iArr13[iArr12[i38]] == iArr13[iArr12[i41]]) {
                        break;
                    }
                    i41++;
                }
            }
        }
        int iZza8 = zzflVar.zza(4);
        if (i37 < 2 || iZza8 == 0) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        int[] iArr14 = new int[i37];
        for (int i42 = 0; i42 < i37; i42++) {
            iArr14[i42] = zzflVar.zza(iZza8);
        }
        int[] iArr15 = new int[i19];
        for (int i43 = 0; i43 < iZza5; i43++) {
            iArr15[Math.min(iArr12[i43], iZza7)] = i43;
        }
        zzfxk zzfxkVar = new zzfxk();
        int i44 = 0;
        while (i44 <= iZza7) {
            int[] iArr16 = iArr13;
            int iMin = Math.min(iArr13[i44], i37 - 1);
            zzfxkVar.zzf(new zzex(iArr15[i44], iMin >= 0 ? iArr14[iMin] : -1));
            i44++;
            iArr13 = iArr16;
        }
        zzfxn zzfxnVarZzi = zzfxkVar.zzi();
        if (((zzex) zzfxnVarZzi.get(0)).zzb == -1) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        int i45 = 1;
        while (true) {
            if (i45 > iZza7) {
                i3 = -1;
                i45 = -1;
                break;
            }
            i3 = -1;
            if (((zzex) zzfxnVarZzi.get(i45)).zzb != -1) {
                break;
            }
            i45++;
        }
        if (i45 == i3) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        boolean[][] zArr3 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iZza5, iZza5);
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iZza5, iZza5);
        for (int i46 = 1; i46 < iZza5; i46++) {
            for (int i47 = 0; i47 < i46; i47++) {
                boolean[] zArr5 = zArr3[i46];
                boolean[] zArr6 = zArr4[i46];
                boolean zZzh9 = zzflVar.zzh();
                zArr6[i47] = zZzh9;
                zArr5[i47] = zZzh9;
            }
        }
        for (int i48 = 1; i48 < iZza5; i48++) {
            int i49 = iZza5 - 1;
            for (int i50 = 0; i50 < i49; i50++) {
                for (int i51 = 0; i51 < i48; i51++) {
                    boolean[] zArr7 = zArr4[i48];
                    if (zArr7[i51] && zArr4[i51][i50]) {
                        zArr7[i50] = true;
                        break;
                    }
                }
            }
        }
        int[] iArr17 = new int[i19];
        for (int i52 = 0; i52 < iZza5; i52++) {
            int i53 = 0;
            for (int i54 = 0; i54 < i52; i54++) {
                i53 += zArr3[i52][i54] ? 1 : 0;
            }
            iArr17[iArr12[i52]] = i53;
        }
        int i55 = 0;
        for (int i56 = 0; i56 < iZza5; i56++) {
            if (iArr17[iArr12[i56]] == 0) {
                i55++;
            }
        }
        if (i55 > 1) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        int[] iArr18 = new int[iZza5];
        int[] iArr19 = new int[iZzc2];
        if (zzflVar.zzh()) {
            for (int i57 = 0; i57 < iZza5; i57++) {
                iArr18[i57] = zzflVar.zza(3);
            }
            i4 = iZza6;
        } else {
            i4 = iZza6;
            Arrays.fill(iArr18, 0, iZza5, i4);
        }
        int i58 = 0;
        while (i58 < iZzc2) {
            boolean[][] zArr8 = zArr4;
            int[] iArr20 = iArr17;
            int[] iArr21 = iArr12;
            int iMax = 0;
            for (int i59 = 0; i59 < iArr3[i58]; i59++) {
                iMax = Math.max(iMax, iArr18[((zzex) zzfxnVarZzi.get(iArr2[i58][i59])).zza]);
            }
            iArr19[i58] = iMax + 1;
            i58++;
            zArr4 = zArr8;
            iArr12 = iArr21;
            iArr17 = iArr20;
        }
        boolean[][] zArr9 = zArr4;
        int[] iArr22 = iArr17;
        int[] iArr23 = iArr12;
        if (zzflVar.zzh()) {
            int i60 = 0;
            while (i60 < iZza5 - 1) {
                int i61 = i60 + 1;
                for (int i62 = i61; i62 < iZza5; i62++) {
                    if (zArr3[i62][i60]) {
                        zzflVar.zzf(3);
                    }
                }
                i60 = i61;
            }
        }
        zzflVar.zze();
        int iZzc4 = zzflVar.zzc() + 1;
        zzfxk zzfxkVar2 = new zzfxk();
        zzfxkVar2.zzf(zzezVarZzm);
        if (iZzc4 > 1) {
            zzfxkVar2.zzf(zzezVarZzm2);
            zzez zzezVarZzm3 = zzezVarZzm2;
            for (int i63 = 2; i63 < iZzc4; i63++) {
                zzezVarZzm3 = zzm(zzflVar, zzflVar.zzh(), i4, zzezVarZzm3);
                zzfxkVar2.zzf(zzezVarZzm3);
            }
        }
        zzfxn zzfxnVarZzi2 = zzfxkVar2.zzi();
        int iZzc5 = zzflVar.zzc() + iZzc2;
        if (iZzc5 > iZzc2) {
            return new zzfh(zzeyVarZzl, null, zzfaVar2, null, null);
        }
        int iZza9 = zzflVar.zza(2);
        boolean[][] zArr10 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iZzc5, i19);
        int[] iArr24 = new int[iZzc5];
        int[] iArr25 = new int[iZzc5];
        int i64 = 0;
        while (i64 < iZzc2) {
            int i65 = iZzc2;
            iArr24[i64] = 0;
            int i66 = iArr8[i64];
            iArr25[i64] = i66;
            if (iZza9 == 0) {
                iArr = iArr19;
                i8 = iZza5;
                zzfaVar = zzfaVar2;
                Arrays.fill(zArr10[i64], 0, iArr3[i64], true);
                iArr24[i64] = iArr3[i64];
            } else {
                i8 = iZza5;
                zzfaVar = zzfaVar2;
                iArr = iArr19;
                if (iZza9 == 1) {
                    for (int i67 = 0; i67 < iArr3[i64]; i67++) {
                        zArr10[i64][i67] = iArr2[i64][i67] == i66;
                    }
                    iArr24[i64] = 1;
                } else {
                    zArr10[0][0] = true;
                    iArr24[0] = 1;
                }
                i64++;
                iZzc2 = i65;
                iArr19 = iArr;
                iZza5 = i8;
                zzfaVar2 = zzfaVar;
            }
            i64++;
            iZzc2 = i65;
            iArr19 = iArr;
            iZza5 = i8;
            zzfaVar2 = zzfaVar;
        }
        int i68 = iZza5;
        zzfa zzfaVar3 = zzfaVar2;
        int[] iArr26 = iArr19;
        int i69 = iZzc2;
        int[] iArr27 = new int[i19];
        int i70 = 2;
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iZzc5, i19);
        int i71 = 0;
        int i72 = 1;
        while (i72 < iZzc5) {
            if (iZza9 == i70) {
                for (int i73 = 0; i73 < iArr3[i72]; i73++) {
                    zArr10[i72][i73] = zzflVar.zzh();
                    int i74 = iArr24[i72];
                    boolean z7 = zArr10[i72][i73];
                    iArr24[i72] = i74 + (z7 ? 1 : 0);
                    if (z7) {
                        iArr25[i72] = iArr2[i72][i73];
                    }
                }
            }
            if (i71 == 0) {
                if (iArr2[i72][0] == 0 && zArr10[i72][0]) {
                    i71 = 0;
                    for (int i75 = 1; i75 < iArr3[i72]; i75++) {
                        if (iArr2[i72][i75] == i45 && zArr10[i72][i45]) {
                            i71 = i72;
                        }
                    }
                } else {
                    i71 = 0;
                }
            }
            int i76 = 0;
            while (i76 < iArr3[i72]) {
                if (iZzc4 > 1) {
                    zArr11[i72][i76] = zArr10[i72][i76];
                    zArr = zArr10;
                    i7 = iZza9;
                    i5 = i45;
                    int iZza10 = zzgag.zza(iZzc4, RoundingMode.CEILING);
                    if (zArr11[i72][i76]) {
                        i6 = iZzc4;
                        break;
                    }
                    int i77 = ((zzex) zzfxnVarZzi.get(iArr2[i72][i76])).zza;
                    int i78 = 0;
                    while (true) {
                        if (i78 >= i76) {
                            i6 = iZzc4;
                            break;
                        }
                        i6 = iZzc4;
                        if (zArr9[i77][((zzex) zzfxnVarZzi.get(iArr2[i72][i78])).zza]) {
                            zArr11[i72][i76] = true;
                            break;
                        }
                        i78++;
                        iZzc4 = i6;
                    }
                    if (zArr11[i72][i76]) {
                        if (i71 <= 0 || i72 != i71) {
                            zzflVar.zzf(iZza10);
                        } else {
                            iArr27[i76] = zzflVar.zza(iZza10);
                        }
                    }
                } else {
                    i5 = i45;
                    i6 = iZzc4;
                    zArr = zArr10;
                    i7 = iZza9;
                }
                i76++;
                iZza9 = i7;
                zArr10 = zArr;
                i45 = i5;
                iZzc4 = i6;
            }
            int i79 = i45;
            int i80 = iZzc4;
            boolean[][] zArr12 = zArr10;
            int i81 = iZza9;
            if (iArr24[i72] == 1 && iArr22[iArr25[i72]] > 0) {
                zzflVar.zze();
            }
            i72++;
            iZza9 = i81;
            zArr10 = zArr12;
            i45 = i79;
            iZzc4 = i80;
            i70 = 2;
        }
        if (i71 == 0) {
            return new zzfh(zzeyVarZzl, null, zzfaVar3, null, null);
        }
        int iZzc6 = zzflVar.zzc() + 1;
        zzfxk zzfxkVarZzi = zzfxn.zzi(iZzc6);
        int[] iArr28 = new int[i68];
        int i82 = 0;
        while (i82 < iZzc6) {
            int iZza11 = zzflVar.zza(16);
            int iZza12 = zzflVar.zza(16);
            if (zzflVar.zzh()) {
                iZza2 = zzflVar.zza(2);
                if (iZza2 == 3) {
                    zzflVar.zze();
                }
                iZza3 = zzflVar.zza(4);
                iZza4 = zzflVar.zza(4);
            } else {
                iZza2 = 0;
                iZza3 = 0;
                iZza4 = 0;
            }
            if (zzflVar.zzh()) {
                int iZzc7 = zzflVar.zzc();
                int iZzc8 = zzflVar.zzc();
                int iZzc9 = zzflVar.zzc();
                int iZzc10 = zzflVar.zzc();
                iZza11 = zzk(iZza11, iZza2, iZzc7, iZzc8);
                iZza12 = zzj(iZza12, iZza2, iZzc9, iZzc10);
            }
            zzfxkVarZzi.zzf(new zzfb(iZza2, iZza3, iZza4, iZza11, iZza12));
            i82++;
            zzfxnVarZzi = zzfxnVarZzi;
            zzeyVarZzl = zzeyVarZzl;
        }
        zzey zzeyVar = zzeyVarZzl;
        zzfxn zzfxnVar = zzfxnVarZzi;
        if (iZzc6 <= 1 || !zzflVar.zzh()) {
            for (int i83 = 1; i83 < i68; i83++) {
                iArr28[i83] = Math.min(i83, iZzc6 - 1);
            }
        } else {
            int iZza13 = zzgag.zza(iZzc6, RoundingMode.CEILING);
            for (int i84 = 1; i84 < i68; i84++) {
                iArr28[i84] = zzflVar.zza(iZza13);
            }
        }
        zzfc zzfcVar = new zzfc(zzfxkVarZzi.zzi(), iArr28);
        zzflVar.zzf(2);
        for (int i85 = 1; i85 < i68; i85++) {
            if (iArr22[iArr23[i85]] == 0) {
                zzflVar.zze();
            }
        }
        for (int i86 = 1; i86 < iZzc5; i86++) {
            boolean zZzh10 = zzflVar.zzh();
            int i87 = 0;
            while (i87 < iArr26[i86]) {
                if ((i87 <= 0 || !zZzh10) ? i87 == 0 : zzflVar.zzh()) {
                    for (int i88 = 0; i88 < iArr3[i86]; i88++) {
                        if (zArr11[i86][i88]) {
                            zzflVar.zzc();
                        }
                    }
                    zzflVar.zzc();
                    zzflVar.zzc();
                }
                i87++;
            }
        }
        int iZzc11 = zzflVar.zzc() + 2;
        if (zzflVar.zzh()) {
            zzflVar.zzf(iZzc11);
        } else {
            for (int i89 = 1; i89 < i68; i89++) {
                for (int i90 = 0; i90 < i89; i90++) {
                    if (zArr3[i89][i90]) {
                        zzflVar.zzf(iZzc11);
                    }
                }
            }
        }
        int iZzc12 = zzflVar.zzc();
        for (int i91 = 1; i91 <= iZzc12; i91++) {
            zzflVar.zzf(8);
        }
        if (zzflVar.zzh()) {
            zzflVar.zzd();
            if (zzflVar.zzh() || zzflVar.zzh()) {
                zzflVar.zze();
            }
            boolean zZzh11 = zzflVar.zzh();
            boolean zZzh12 = zzflVar.zzh();
            if (zZzh11 || zZzh12) {
                for (int i92 = 0; i92 < i69; i92++) {
                    for (int i93 = 0; i93 < iArr26[i92]; i93++) {
                        boolean zZzh13 = zZzh11 ? zzflVar.zzh() : false;
                        boolean zZzh14 = zZzh12 ? zzflVar.zzh() : false;
                        if (zZzh13) {
                            zzflVar.zzf(32);
                        }
                        if (zZzh14) {
                            zzflVar.zzf(18);
                        }
                    }
                }
            }
            boolean zZzh15 = zzflVar.zzh();
            if (zZzh15) {
                z = true;
                iZza = zzflVar.zza(4) + 1;
            } else {
                z = true;
                iZza = i68;
            }
            zzfxk zzfxkVarZzi2 = zzfxn.zzi(iZza);
            int[] iArr29 = new int[i68];
            int i94 = 0;
            while (i94 < iZza) {
                zzflVar.zzf(3);
                int i95 = z != zzflVar.zzh() ? 2 : 1;
                int iZza14 = zzk.zza(zzflVar.zza(8));
                int iZzb = zzk.zzb(zzflVar.zza(8));
                zzflVar.zzf(8);
                zzfxkVarZzi2.zzf(new zzff(iZza14, i95, iZzb));
                i94++;
                z = true;
            }
            if (zZzh15 && iZza > 1) {
                for (int i96 = 0; i96 < i68; i96++) {
                    iArr29[i96] = zzflVar.zza(4);
                }
            }
            zzfgVar = new zzfg(zzfxkVarZzi2.zzi(), iArr29);
        } else {
            zzfgVar = null;
        }
        return new zzfh(zzeyVar, zzfxnVar, new zzfa(zzfxnVarZzi2, iArr27), zzfcVar, zzfgVar);
    }

    public static zzfi zze(byte[] bArr, int i, int i2) {
        zzfl zzflVar = new zzfl(bArr, 4, i2);
        int iZzc = zzflVar.zzc();
        int iZzc2 = zzflVar.zzc();
        zzflVar.zze();
        return new zzfi(iZzc, iZzc2, zzflVar.zzh());
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:101:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:102:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:105:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:108:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:113:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:114:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:115:0x01f9 A[PHI: r19
  0x01f9: PHI (r19v4 int) = (r19v2 int), (r19v6 int) binds: [B:107:0x01ca, B:114:0x01f7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:118:0x0201  */
    /* JADX WARN: Code duplicated, block: B:121:0x020d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0218  */
    /* JADX WARN: Code duplicated, block: B:127:0x0221  */
    /* JADX WARN: Code duplicated, block: B:130:0x0228  */
    /* JADX WARN: Code duplicated, block: B:133:0x0234  */
    /* JADX WARN: Code duplicated, block: B:134:0x0251  */
    /* JADX WARN: Code duplicated, block: B:136:0x025b  */
    /* JADX WARN: Code duplicated, block: B:141:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:25:0x0074 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0076  */
    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0084  */
    /* JADX WARN: Code duplicated, block: B:34:0x0087  */
    /* JADX WARN: Code duplicated, block: B:35:0x008a  */
    /* JADX WARN: Code duplicated, block: B:38:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0095  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:57:0x010e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0122  */
    /* JADX WARN: Code duplicated, block: B:62:0x0134  */
    /* JADX WARN: Code duplicated, block: B:63:0x0137 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x0139  */
    /* JADX WARN: Code duplicated, block: B:65:0x013c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0140  */
    /* JADX WARN: Code duplicated, block: B:68:0x0142  */
    /* JADX WARN: Code duplicated, block: B:84:0x016c A[PHI: r2
  0x016c: PHI (r2v4 int) = (r2v3 int), (r2v3 int), (r2v3 int), (r2v3 int), (r2v3 int), (r2v25 int) binds: [B:72:0x0154, B:74:0x0158, B:76:0x015c, B:78:0x0160, B:80:0x0164, B:83:0x016a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:86:0x0170  */
    /* JADX WARN: Code duplicated, block: B:87:0x0173 A[PHI: r2
  0x0173: PHI (r2v24 int) = (r2v4 int), (r2v3 int) binds: [B:85:0x016e, B:82:0x0168] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:90:0x017e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0184  */
    /* JADX WARN: Code duplicated, block: B:94:0x018e  */
    /* JADX WARN: Code duplicated, block: B:98:0x019f  */
    /* JADX WARN: Instruction removed from duplicated block: B:101:0x01a8, please report this as an issue */
    public static zzfj zzf(byte[] bArr, int i, int i2) {
        int iZzc;
        int i3;
        boolean zZzh;
        int iZzc2;
        int iZzc3;
        int i4;
        int i5;
        int i6;
        int i7;
        int iZzb;
        int i8;
        int iZzc4;
        boolean z;
        boolean zZzh2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f;
        int i16;
        int i17;
        int iZzb2;
        float f2;
        boolean zZzh3;
        boolean zZzh4;
        int i18;
        int iZza;
        int iZza2;
        int i19;
        int i20;
        zzfl zzflVar = new zzfl(bArr, i, i2);
        int iZza3 = zzflVar.zza(8);
        int iZza4 = zzflVar.zza(8);
        int iZza5 = zzflVar.zza(8);
        int iZzc5 = zzflVar.zzc();
        if (iZza3 == 100 || iZza3 == 110 || iZza3 == 122 || iZza3 == 244 || iZza3 == 44 || iZza3 == 83 || iZza3 == 86 || iZza3 == 118 || iZza3 == 128) {
            iZzc = zzflVar.zzc();
            if (iZzc == 3) {
                zZzh = zzflVar.zzh();
                i3 = 3;
            } else {
                i3 = iZzc;
                zZzh = false;
            }
            iZzc2 = zzflVar.zzc();
            iZzc3 = zzflVar.zzc();
            zzflVar.zze();
            if (zzflVar.zzh()) {
                if (i3 != 3) {
                    i4 = 8;
                } else {
                    i4 = 12;
                }
                for (i5 = 0; i5 < i4; i5++) {
                    if (!zzflVar.zzh()) {
                        if (i5 < 6) {
                            i6 = 16;
                        } else {
                            i6 = 64;
                        }
                        iZzb = 8;
                        i8 = 8;
                        for (i7 = 0; i7 < i6; i7++) {
                            if (iZzb != 0) {
                                iZzb = ((i8 + zzflVar.zzb()) + 256) % 256;
                            }
                            if (iZzb != 0) {
                                i8 = iZzb;
                            }
                        }
                    }
                }
            }
        } else if (iZza3 == 138) {
            iZza3 = 138;
            iZzc = zzflVar.zzc();
            if (iZzc == 3) {
                zZzh = zzflVar.zzh();
                i3 = 3;
            } else {
                i3 = iZzc;
                zZzh = false;
            }
            iZzc2 = zzflVar.zzc();
            iZzc3 = zzflVar.zzc();
            zzflVar.zze();
            if (zzflVar.zzh()) {
                if (i3 != 3) {
                    i4 = 8;
                } else {
                    i4 = 12;
                }
                while (i5 < i4) {
                    if (!zzflVar.zzh()) {
                        if (i5 < 6) {
                            i6 = 16;
                        } else {
                            i6 = 64;
                        }
                        iZzb = 8;
                        i8 = 8;
                        while (i7 < i6) {
                            if (iZzb != 0) {
                                iZzb = ((i8 + zzflVar.zzb()) + 256) % 256;
                            }
                            if (iZzb != 0) {
                                i8 = iZzb;
                            }
                        }
                    }
                }
            }
        } else {
            iZzc = 1;
            zZzh = false;
            iZzc2 = 0;
            iZzc3 = 0;
        }
        int iZzc6 = zzflVar.zzc() + 4;
        int iZzc7 = zzflVar.zzc();
        if (iZzc7 != 0) {
            if (iZzc7 == 1) {
                boolean zZzh5 = zzflVar.zzh();
                zzflVar.zzb();
                zzflVar.zzb();
                long jZzc = zzflVar.zzc();
                for (int i21 = 0; i21 < jZzc; i21++) {
                    zzflVar.zzc();
                }
                z = zZzh5;
                iZzc7 = 1;
                iZzc4 = 0;
            } else {
                iZzc4 = 0;
            }
            int iZzc8 = zzflVar.zzc();
            zzflVar.zze();
            int iZzc9 = zzflVar.zzc() + 1;
            int iZzc10 = zzflVar.zzc() + 1;
            zZzh2 = zzflVar.zzh();
            i9 = 2 - (zZzh2 ? 1 : 0);
            if (!zZzh2) {
                zzflVar.zze();
            }
            zzflVar.zze();
            i10 = iZzc9 * 16;
            i11 = iZzc10 * i9 * 16;
            if (zzflVar.zzh()) {
                int iZzc11 = zzflVar.zzc();
                int iZzc12 = zzflVar.zzc();
                int iZzc13 = zzflVar.zzc();
                int iZzc14 = zzflVar.zzc();
                if (iZzc == 0) {
                    i19 = 1;
                } else {
                    if (iZzc == 3) {
                        i19 = 1;
                    } else {
                        i19 = 2;
                    }
                    if (iZzc == 1) {
                        i20 = 2;
                    } else {
                        i20 = 1;
                    }
                    i9 *= i20;
                }
                i10 -= (iZzc11 + iZzc12) * i19;
                i11 -= (iZzc13 + iZzc14) * i9;
            }
            int i22 = i10;
            int i23 = i11;
            if (iZza3 != 44 || iZza3 == 86 || iZza3 == 100 || iZza3 == 110 || iZza3 == 122) {
                if ((iZza4 & 16) != 0) {
                    i12 = iZza3;
                    i13 = 0;
                } else {
                    i12 = iZza3;
                    i13 = 16;
                }
            } else if (iZza3 == 244) {
                iZza3 = 244;
                if ((iZza4 & 16) != 0) {
                    i12 = iZza3;
                    i13 = 0;
                } else {
                    i12 = iZza3;
                    i13 = 16;
                }
            } else {
                i12 = iZza3;
                i13 = 16;
            }
            i14 = -1;
            if (zzflVar.zzh()) {
                if (zzflVar.zzh()) {
                    iZza = zzflVar.zza(8);
                    if (iZza == 255) {
                        iZza2 = zzflVar.zza(16);
                        int iZza6 = zzflVar.zza(16);
                        if (iZza2 != 0 || iZza6 == 0) {
                            f2 = 1.0f;
                        } else {
                            f2 = iZza2 / iZza6;
                        }
                    } else if (iZza < 17) {
                        f2 = zzb[iZza];
                    } else {
                        zzdo.zzf("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iZza);
                        f2 = 1.0f;
                    }
                } else {
                    f2 = 1.0f;
                }
                if (zzflVar.zzh()) {
                    zzflVar.zze();
                }
                if (zzflVar.zzh()) {
                    zzflVar.zzf(3);
                    i18 = true != zzflVar.zzh() ? 2 : 1;
                    if (zzflVar.zzh()) {
                        int iZza7 = zzflVar.zza(8);
                        int iZza8 = zzflVar.zza(8);
                        zzflVar.zzf(8);
                        int iZza9 = zzk.zza(iZza7);
                        iZzb2 = zzk.zzb(iZza8);
                        i16 = iZza9;
                        i14 = i18;
                    } else {
                        i14 = i18;
                        i16 = -1;
                        iZzb2 = -1;
                    }
                } else {
                    i16 = -1;
                    iZzb2 = -1;
                }
                if (zzflVar.zzh()) {
                    zzflVar.zzc();
                    zzflVar.zzc();
                }
                if (zzflVar.zzh()) {
                    zzflVar.zzf(65);
                }
                zZzh3 = zzflVar.zzh();
                if (zZzh3) {
                    zzn(zzflVar);
                }
                zZzh4 = zzflVar.zzh();
                if (zZzh4) {
                    zzn(zzflVar);
                }
                if (zZzh3 || zZzh4) {
                    zzflVar.zze();
                }
                zzflVar.zze();
                if (zzflVar.zzh()) {
                    zzflVar.zze();
                    zzflVar.zzc();
                    zzflVar.zzc();
                    zzflVar.zzc();
                    zzflVar.zzc();
                    int iZzc15 = zzflVar.zzc();
                    zzflVar.zzc();
                    i15 = iZzc15;
                } else {
                    i15 = i13;
                }
                i17 = i14;
                f = f2;
            } else {
                i15 = i13;
                f = 1.0f;
                i16 = -1;
                i17 = -1;
                iZzb2 = -1;
            }
            return new zzfj(i12, iZza4, iZza5, iZzc5, iZzc8, i22, i23, f, iZzc2, iZzc3, zZzh, zZzh2, iZzc6, iZzc7, iZzc4, z, i16, i17, iZzb2, i15);
        }
        iZzc4 = zzflVar.zzc() + 4;
        z = false;
        int iZzc16 = zzflVar.zzc();
        zzflVar.zze();
        int iZzc17 = zzflVar.zzc() + 1;
        int iZzc18 = zzflVar.zzc() + 1;
        zZzh2 = zzflVar.zzh();
        i9 = 2 - (zZzh2 ? 1 : 0);
        if (!zZzh2) {
            zzflVar.zze();
        }
        zzflVar.zze();
        i10 = iZzc17 * 16;
        i11 = iZzc18 * i9 * 16;
        if (zzflVar.zzh()) {
            int iZzc19 = zzflVar.zzc();
            int iZzc110 = zzflVar.zzc();
            int iZzc111 = zzflVar.zzc();
            int iZzc112 = zzflVar.zzc();
            if (iZzc == 0) {
                i19 = 1;
            } else {
                if (iZzc == 3) {
                    i19 = 1;
                } else {
                    i19 = 2;
                }
                if (iZzc == 1) {
                    i20 = 2;
                } else {
                    i20 = 1;
                }
                i9 *= i20;
            }
            i10 -= (iZzc19 + iZzc110) * i19;
            i11 -= (iZzc111 + iZzc112) * i9;
        }
        int i24 = i10;
        int i25 = i11;
        if (iZza3 != 44) {
            if ((iZza4 & 16) != 0) {
                i12 = iZza3;
                i13 = 0;
            } else {
                i12 = iZza3;
                i13 = 16;
            }
        } else if ((iZza4 & 16) != 0) {
            i12 = iZza3;
            i13 = 0;
        } else {
            i12 = iZza3;
            i13 = 16;
        }
        i14 = -1;
        if (zzflVar.zzh()) {
            if (zzflVar.zzh()) {
                f2 = 1.0f;
            } else {
                iZza = zzflVar.zza(8);
                if (iZza == 255) {
                    iZza2 = zzflVar.zza(16);
                    int iZza10 = zzflVar.zza(16);
                    if (iZza2 != 0) {
                        f2 = 1.0f;
                    } else {
                        f2 = 1.0f;
                    }
                } else if (iZza < 17) {
                    f2 = zzb[iZza];
                } else {
                    zzdo.zzf("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iZza);
                    f2 = 1.0f;
                }
            }
            if (zzflVar.zzh()) {
                zzflVar.zze();
            }
            if (zzflVar.zzh()) {
                zzflVar.zzf(3);
                if (true != zzflVar.zzh()) {
                }
                if (zzflVar.zzh()) {
                    int iZza11 = zzflVar.zza(8);
                    int iZza12 = zzflVar.zza(8);
                    zzflVar.zzf(8);
                    int iZza13 = zzk.zza(iZza11);
                    iZzb2 = zzk.zzb(iZza12);
                    i16 = iZza13;
                    i14 = i18;
                } else {
                    i14 = i18;
                    i16 = -1;
                    iZzb2 = -1;
                }
            } else {
                i16 = -1;
                iZzb2 = -1;
            }
            if (zzflVar.zzh()) {
                zzflVar.zzc();
                zzflVar.zzc();
            }
            if (zzflVar.zzh()) {
                zzflVar.zzf(65);
            }
            zZzh3 = zzflVar.zzh();
            if (zZzh3) {
                zzn(zzflVar);
            }
            zZzh4 = zzflVar.zzh();
            if (zZzh4) {
                zzn(zzflVar);
            }
            if (zZzh3) {
                zzflVar.zze();
            } else {
                zzflVar.zze();
            }
            zzflVar.zze();
            if (zzflVar.zzh()) {
                zzflVar.zze();
                zzflVar.zzc();
                zzflVar.zzc();
                zzflVar.zzc();
                zzflVar.zzc();
                int iZzc113 = zzflVar.zzc();
                zzflVar.zzc();
                i15 = iZzc113;
            } else {
                i15 = i13;
            }
            i17 = i14;
            f = f2;
        } else {
            i15 = i13;
            f = 1.0f;
            i16 = -1;
            i17 = -1;
            iZzb2 = -1;
        }
        return new zzfj(i12, iZza4, iZza5, iZzc5, iZzc16, i24, i25, f, iZzc2, iZzc3, zZzh, zZzh2, iZzc6, iZzc7, iZzc4, z, i16, i17, iZzb2, i15);
    }

    public static String zzg(List list) {
        for (int i = 0; i < list.size(); i++) {
            byte[] bArr = (byte[]) list.get(i);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                zzfxk zzfxkVar = new zzfxk();
                int i2 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i2 >= length2) {
                        break;
                    }
                    int iZza = zza(bArr, i2, length2, zArr);
                    if (iZza != length2) {
                        zzfxkVar.zzf(Integer.valueOf(iZza));
                    }
                    i2 = iZza + 3;
                }
                zzfxn zzfxnVarZzi = zzfxkVar.zzi();
                for (int i3 = 0; i3 < zzfxnVarZzi.size(); i3++) {
                    if (((Integer) zzfxnVarZzi.get(i3)).intValue() + 3 < length) {
                        zzfl zzflVar = new zzfl(bArr, ((Integer) zzfxnVarZzi.get(i3)).intValue() + 3, length);
                        zzey zzeyVarZzl = zzl(zzflVar);
                        if (zzeyVarZzl.zza == 33 && zzeyVarZzl.zzb == 0) {
                            zzflVar.zzf(4);
                            int iZza2 = zzflVar.zza(3);
                            zzflVar.zze();
                            zzez zzezVarZzm = zzm(zzflVar, true, iZza2, null);
                            return zzcy.zzd(zzezVarZzm.zza, zzezVarZzm.zzb, zzezVarZzm.zzc, zzezVarZzm.zzd, zzezVarZzm.zze, zzezVarZzm.zzf);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static void zzh(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean zzi(byte b) {
        if (((b & 96) >> 5) != 0) {
            return true;
        }
        int i = b & 31;
        return (i == 1 || i == 9 || i == 14) ? false : true;
    }

    private static int zzj(int i, int i2, int i3, int i4) {
        return i - ((i2 == 1 ? 2 : 1) * (i3 + i4));
    }

    private static int zzk(int i, int i2, int i3, int i4) {
        int i5 = 2;
        if (i2 != 1 && i2 != 2) {
            i5 = 1;
        }
        return i - (i5 * (i3 + i4));
    }

    private static zzey zzl(zzfl zzflVar) {
        zzflVar.zze();
        return new zzey(zzflVar.zza(6), zzflVar.zza(6), zzflVar.zza(3) - 1);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c A[SYNTHETIC] */
    private static zzez zzm(zzfl zzflVar, boolean z, int i, zzez zzezVar) {
        int[] iArr;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean zZzh;
        int iZza;
        int i5;
        int i6;
        int[] iArr2 = new int[6];
        if (!z) {
            if (zzezVar != null) {
                int i7 = zzezVar.zza;
                zZzh = zzezVar.zzb;
                iZza = zzezVar.zzc;
                i5 = zzezVar.zzd;
                iArr2 = zzezVar.zze;
                i2 = i7;
            } else {
                iArr = iArr2;
                i2 = 0;
                z2 = false;
                i3 = 0;
                i4 = 0;
            }
            int iZza2 = zzflVar.zza(8);
            i6 = 0;
            for (int i8 = 0; i8 < i; i8++) {
                if (zzflVar.zzh()) {
                    i6 += 88;
                }
                if (zzflVar.zzh()) {
                    i6 += 8;
                }
            }
            zzflVar.zzf(i6);
            if (i > 0) {
                int i9 = 8 - i;
                zzflVar.zzf(i9 + i9);
            }
            return new zzez(i2, z2, i3, i4, iArr, iZza2);
        }
        int iZza3 = zzflVar.zza(2);
        zZzh = zzflVar.zzh();
        iZza = zzflVar.zza(5);
        i5 = 0;
        for (int i10 = 0; i10 < 32; i10++) {
            if (zzflVar.zzh()) {
                i5 |= 1 << i10;
            }
        }
        for (int i11 = 0; i11 < 6; i11++) {
            iArr2[i11] = zzflVar.zza(8);
        }
        i2 = iZza3;
        iArr = iArr2;
        z2 = zZzh;
        i3 = iZza;
        i4 = i5;
        int iZza4 = zzflVar.zza(8);
        i6 = 0;
        while (i8 < i) {
            if (zzflVar.zzh()) {
                i6 += 88;
            }
            if (zzflVar.zzh()) {
                i6 += 8;
            }
        }
        zzflVar.zzf(i6);
        if (i > 0) {
            int i12 = 8 - i;
            zzflVar.zzf(i12 + i12);
        }
        return new zzez(i2, z2, i3, i4, iArr, iZza4);
    }

    private static void zzn(zzfl zzflVar) {
        int iZzc = zzflVar.zzc() + 1;
        zzflVar.zzf(8);
        for (int i = 0; i < iZzc; i++) {
            zzflVar.zzc();
            zzflVar.zzc();
            zzflVar.zze();
        }
        zzflVar.zzf(20);
    }

    public static int zzb(byte[] bArr, int i) {
        int i2;
        synchronized (zzc) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    try {
                        if (i3 >= i - 2) {
                            i3 = i;
                            break;
                        }
                        int i5 = i3 + 1;
                        if (bArr[i3] == 0 && bArr[i5] == 0 && bArr[i3 + 2] == 3) {
                            break;
                        }
                        i3 = i5;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = zzd;
                    int length = iArr.length;
                    if (length <= i4) {
                        zzd = Arrays.copyOf(iArr, length + length);
                    }
                    zzd[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = zzd[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i7 = i11 + 1;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }
}
