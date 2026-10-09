package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.core.internal.view.SupportMenu;
import androidx.work.WorkRequest;
import com.google.android.gms.drive.DriveFile;
import com.unity3d.services.core.device.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaik {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb;

    static {
        int i = zzei.zza;
        zzb = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int zza(int i) {
        return (i >> 24) & 255;
    }

    public static zzay zzb(zzen zzenVar) {
        zzem zzemVar;
        zzeo zzeoVarZzb = zzenVar.zzb(1751411826);
        zzeo zzeoVarZzb2 = zzenVar.zzb(1801812339);
        zzeo zzeoVarZzb3 = zzenVar.zzb(1768715124);
        if (zzeoVarZzb != null && zzeoVarZzb2 != null && zzeoVarZzb3 != null && zzi(zzeoVarZzb.zza) == 1835299937) {
            zzdy zzdyVar = zzeoVarZzb2.zza;
            zzdyVar.zzL(12);
            int iZzg = zzdyVar.zzg();
            String[] strArr = new String[iZzg];
            for (int i = 0; i < iZzg; i++) {
                int iZzg2 = zzdyVar.zzg();
                zzdyVar.zzM(4);
                strArr[i] = zzdyVar.zzB(iZzg2 - 8, StandardCharsets.UTF_8);
            }
            zzdy zzdyVar2 = zzeoVarZzb3.zza;
            zzdyVar2.zzL(8);
            ArrayList arrayList = new ArrayList();
            while (zzdyVar2.zzb() > 8) {
                int iZzd = zzdyVar2.zzd() + zzdyVar2.zzg();
                int iZzg3 = zzdyVar2.zzg() - 1;
                if (iZzg3 < 0 || iZzg3 >= iZzg) {
                    zzdo.zzf("BoxParsers", "Skipped metadata with unknown key index: " + iZzg3);
                } else {
                    String str = strArr[iZzg3];
                    while (true) {
                        int iZzd2 = zzdyVar2.zzd();
                        if (iZzd2 >= iZzd) {
                            zzemVar = null;
                            break;
                        }
                        int iZzg4 = zzdyVar2.zzg();
                        if (zzdyVar2.zzg() == 1684108385) {
                            int iZzg5 = zzdyVar2.zzg();
                            int iZzg6 = zzdyVar2.zzg();
                            int i2 = iZzg4 - 16;
                            byte[] bArr = new byte[i2];
                            zzdyVar2.zzH(bArr, 0, i2);
                            zzemVar = new zzem(str, bArr, iZzg6, iZzg5);
                            break;
                        }
                        zzdyVar2.zzL(iZzd2 + iZzg4);
                    }
                    if (zzemVar != null) {
                        arrayList.add(zzemVar);
                    }
                }
                zzdyVar2.zzL(iZzd);
            }
            if (!arrayList.isEmpty()) {
                return new zzay(arrayList);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00da  */
    public static zzay zzc(zzeo zzeoVar) {
        int iZzn;
        zzdy zzdyVar = zzeoVar.zza;
        zzdyVar.zzL(8);
        zzay zzayVar = new zzay(-9223372036854775807L, new zzax[0]);
        while (zzdyVar.zzb() >= 8) {
            int iZzd = zzdyVar.zzd();
            int iZzg = zzdyVar.zzg() + iZzd;
            int iZzg2 = zzdyVar.zzg();
            zzay zzayVar2 = null;
            if (iZzg2 == 1835365473) {
                zzdyVar.zzL(iZzd);
                zzdyVar.zzM(8);
                zzg(zzdyVar);
                while (zzdyVar.zzd() < iZzg) {
                    int iZzd2 = zzdyVar.zzd();
                    int iZzg3 = zzdyVar.zzg() + iZzd2;
                    if (zzdyVar.zzg() == 1768715124) {
                        zzdyVar.zzL(iZzd2);
                        zzdyVar.zzM(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzdyVar.zzd() < iZzg3) {
                            zzax zzaxVarZza = zzais.zza(zzdyVar);
                            if (zzaxVarZza != null) {
                                arrayList.add(zzaxVarZza);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            zzayVar2 = new zzay(arrayList);
                            break;
                        }
                        break;
                    }
                    zzdyVar.zzL(iZzg3);
                }
                zzayVar = zzayVar.zzd(zzayVar2);
            } else if (iZzg2 == 1936553057) {
                zzdyVar.zzL(iZzd);
                zzdyVar.zzM(12);
                while (zzdyVar.zzd() < iZzg) {
                    int iZzd3 = zzdyVar.zzd();
                    int iZzg4 = zzdyVar.zzg();
                    if (zzdyVar.zzg() == 1935766900) {
                        if (iZzg4 < 16) {
                            break;
                        }
                        zzdyVar.zzM(4);
                        int i = -1;
                        int i2 = 0;
                        for (int i3 = 0; i3 < 2; i3++) {
                            int iZzm = zzdyVar.zzm();
                            int iZzm2 = zzdyVar.zzm();
                            if (iZzm == 0) {
                                i = iZzm2;
                            } else if (iZzm == 1) {
                                i2 = iZzm2;
                            }
                        }
                        if (i == 12) {
                            iZzn = 240;
                        } else if (i == 13) {
                            iZzn = 120;
                        } else if (i == 21 && zzdyVar.zzb() >= 8 && zzdyVar.zzd() + 8 <= iZzg) {
                            int iZzg5 = zzdyVar.zzg();
                            int iZzg6 = zzdyVar.zzg();
                            if (iZzg5 < 12 || iZzg6 != 1936877170) {
                                iZzn = -2147483647;
                            } else {
                                iZzn = zzdyVar.zzn();
                            }
                        } else {
                            iZzn = -2147483647;
                        }
                        if (iZzn == -2147483647) {
                            break;
                        }
                        zzayVar2 = new zzay(-9223372036854775807L, new zzahc(iZzn, i2));
                        break;
                    }
                    zzdyVar.zzL(iZzd3 + iZzg4);
                }
                zzayVar = zzayVar.zzd(zzayVar2);
            } else if (iZzg2 == -1451722374) {
                zzayVar = zzayVar.zzd(zzl(zzdyVar));
            }
            zzdyVar.zzL(iZzg);
        }
        return zzayVar;
    }

    public static zzew zzd(zzdy zzdyVar) {
        long jZzt;
        long jZzt2;
        zzdyVar.zzL(8);
        if (zza(zzdyVar.zzg()) == 0) {
            jZzt = zzdyVar.zzu();
            jZzt2 = zzdyVar.zzu();
        } else {
            jZzt = zzdyVar.zzt();
            jZzt2 = zzdyVar.zzt();
        }
        return new zzew(jZzt, jZzt2, zzdyVar.zzu());
    }

    /* JADX WARN: Code duplicated, block: B:101:0x026d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x026f  */
    /* JADX WARN: Code duplicated, block: B:103:0x027d  */
    /* JADX WARN: Code duplicated, block: B:108:0x02a1 A[DONT_INVERT, LOOP:13: B:108:0x02a1->B:112:0x02ab, LOOP_START, PHI: r16
  0x02a1: PHI (r16v15 int) = (r16v3 int), (r16v16 int) binds: [B:107:0x029f, B:112:0x02ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:109:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:112:0x02ab A[LOOP:13: B:108:0x02a1->B:112:0x02ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x02b1 A[EDGE_INSN: B:113:0x02b1->B:114:0x02b2 BREAK  A[LOOP:13: B:108:0x02a1->B:112:0x02ab]] */
    /* JADX WARN: Code duplicated, block: B:115:0x02b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x02b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x02b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x02ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x02bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x02be  */
    /* JADX WARN: Code duplicated, block: B:121:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:122:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:123:0x02df  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:125:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:127:0x0308  */
    /* JADX WARN: Code duplicated, block: B:130:0x0350  */
    /* JADX WARN: Code duplicated, block: B:131:0x0353  */
    /* JADX WARN: Code duplicated, block: B:136:0x037d  */
    /* JADX WARN: Code duplicated, block: B:138:0x0393  */
    /* JADX WARN: Code duplicated, block: B:154:0x0413  */
    /* JADX WARN: Code duplicated, block: B:156:0x0417  */
    /* JADX WARN: Code duplicated, block: B:157:0x0419 A[PHI: r7
  0x0419: PHI (r7v34 long) = (r7v33 long), (r7v36 long) binds: [B:153:0x0411, B:156:0x0417] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:159:0x0420  */
    /* JADX WARN: Code duplicated, block: B:166:0x0459  */
    /* JADX WARN: Code duplicated, block: B:168:0x0462  */
    /* JADX WARN: Code duplicated, block: B:171:0x046f A[LOOP:4: B:169:0x046c->B:171:0x046f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:174:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:177:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:178:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:182:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:184:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:192:0x0504 A[LOOP:7: B:192:0x0504->B:196:0x0515, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:194:0x050d  */
    /* JADX WARN: Code duplicated, block: B:196:0x0515 A[LOOP:7: B:192:0x0504->B:196:0x0515, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:197:0x0518  */
    /* JADX WARN: Code duplicated, block: B:200:0x0522  */
    /* JADX WARN: Code duplicated, block: B:201:0x0524  */
    /* JADX WARN: Code duplicated, block: B:203:0x052a  */
    /* JADX WARN: Code duplicated, block: B:207:0x0547  */
    /* JADX WARN: Code duplicated, block: B:208:0x0549  */
    /* JADX WARN: Code duplicated, block: B:211:0x054e  */
    /* JADX WARN: Code duplicated, block: B:212:0x0551  */
    /* JADX WARN: Code duplicated, block: B:214:0x0555  */
    /* JADX WARN: Code duplicated, block: B:215:0x0558  */
    /* JADX WARN: Code duplicated, block: B:218:0x055c  */
    /* JADX WARN: Code duplicated, block: B:220:0x0560  */
    /* JADX WARN: Code duplicated, block: B:221:0x0563  */
    /* JADX WARN: Code duplicated, block: B:225:0x0570  */
    /* JADX WARN: Code duplicated, block: B:227:0x057a  */
    /* JADX WARN: Code duplicated, block: B:228:0x058a  */
    /* JADX WARN: Code duplicated, block: B:231:0x0592  */
    /* JADX WARN: Code duplicated, block: B:233:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:234:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:244:0x0616  */
    /* JADX WARN: Code duplicated, block: B:245:0x062b  */
    /* JADX WARN: Code duplicated, block: B:255:0x053e A[EDGE_INSN: B:255:0x053e->B:205:0x053e BREAK  A[LOOP:5: B:180:0x04ba->B:204:0x0535], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x051a A[EDGE_INSN: B:260:0x051a->B:198:0x051a BREAK  A[LOOP:7: B:192:0x0504->B:196:0x0515], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x051a A[EDGE_INSN: B:261:0x051a->B:198:0x051a BREAK  A[LOOP:7: B:192:0x0504->B:196:0x0515], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x027f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x01f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:0x0232 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x02a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:50:0x011c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x01b3 A[PHI: r11
  0x01b3: PHI (r11v4 int) = (r11v3 int), (r11v3 int), (r11v38 int), (r11v3 int) binds: [B:41:0x00fc, B:48:0x0118, B:65:0x01b2, B:47:0x0116] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:73:0x01df A[LOOP:11: B:70:0x01d7->B:73:0x01df, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x021e  */
    /* JADX WARN: Code duplicated, block: B:81:0x0223 A[ADDED_TO_REGION, LOOP:12: B:81:0x0223->B:83:0x0227, LOOP_START, PHI: r2 r16 r29
  0x0223: PHI (r2v5 int) = (r2v3 int), (r2v6 int) binds: [B:79:0x0220, B:83:0x0227] A[DONT_GENERATE, DONT_INLINE]
  0x0223: PHI (r16v18 int) = (r16v3 int), (r16v19 int) binds: [B:79:0x0220, B:83:0x0227] A[DONT_GENERATE, DONT_INLINE]
  0x0223: PHI (r29v3 int) = (r29v1 int), (r29v7 int) binds: [B:79:0x0220, B:83:0x0227] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x0225 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0227 A[LOOP:12: B:81:0x0223->B:83:0x0227, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:89:0x0243  */
    /* JADX WARN: Code duplicated, block: B:92:0x024b  */
    /* JADX WARN: Code duplicated, block: B:93:0x024d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0252  */
    /* JADX WARN: Code duplicated, block: B:98:0x0259  */
    public static zzaje zze(zzajb zzajbVar, zzen zzenVar, zzadb zzadbVar) throws zzbc {
        zzaid zzaihVar;
        boolean z;
        int iZzp;
        int iZzp2;
        int iZzp3;
        int iZza;
        zzab zzabVar;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        int i;
        zzajb zzajbVar2;
        int iZzp4;
        int i2;
        long j;
        long j2;
        int i3;
        int iZzp5;
        int i4;
        int i5;
        int i6;
        boolean z2;
        int i7;
        long[] jArr;
        long j3;
        int[] iArr;
        int i8;
        int[] iArr2;
        long[] jArr2;
        String str;
        long j4;
        boolean zZza;
        int i9;
        int iZzg;
        int iZzc;
        int i10;
        long jZzu;
        long[] jArr3;
        int[] iArr3;
        long[] jArr4;
        int length;
        boolean z3;
        int[] iArr4;
        int[] iArr5;
        long[] jArr5;
        int i11;
        boolean z4;
        int i12;
        int i13;
        long[] jArr6;
        int[] iArr6;
        long[] jArr7;
        boolean z5;
        boolean z6;
        long[] jArr8;
        int[] iArr7;
        int[] iArr8;
        long[] jArr9;
        boolean z7;
        int i14;
        int i15;
        long j5;
        zzajb zzajbVarZza;
        long j6;
        int i16;
        int i17;
        long[] jArr10;
        long jZzu2;
        boolean z8;
        long j7;
        int[] iArr9;
        int i18;
        int i19;
        int i20;
        long j8;
        int iZza2;
        int i21;
        boolean z9;
        int i22;
        long j9;
        int i23;
        int length2;
        long j10;
        long jZzu3;
        long j11;
        long jZzu4;
        long jZzu5;
        String str2;
        zzajb zzajbVarZza2 = zzajbVar;
        zzeo zzeoVarZzb = zzenVar.zzb(1937011578);
        if (zzeoVarZzb != null) {
            zzaihVar = new zzaig(zzeoVarZzb, zzajbVarZza2.zzg);
        } else {
            zzeo zzeoVarZzb2 = zzenVar.zzb(1937013298);
            if (zzeoVarZzb2 == null) {
                throw zzbc.zza("Track has no sample table size information", null);
            }
            zzaihVar = new zzaih(zzeoVarZzb2);
        }
        int iZzb = zzaihVar.zzb();
        if (iZzb == 0) {
            return new zzaje(zzajbVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        if (zzajbVarZza2.zzb == 2) {
            long j12 = zzajbVarZza2.zzf;
            if (j12 > 0) {
                zzz zzzVarZzb = zzajbVarZza2.zzg.zzb();
                zzzVarZzb.zzI(iZzb / (j12 / 1000000.0f));
                zzajbVarZza2 = zzajbVarZza2.zza(zzzVarZzb.zzag());
            }
        }
        zzajb zzajbVar3 = zzajbVarZza2;
        zzeo zzeoVarZzb3 = zzenVar.zzb(1937007471);
        if (zzeoVarZzb3 == null) {
            zzeoVarZzb3 = zzenVar.zzb(1668232756);
            zzeoVarZzb3.getClass();
            z = true;
        } else {
            z = false;
        }
        zzeo zzeoVarZzb4 = zzenVar.zzb(1937011555);
        zzeoVarZzb4.getClass();
        zzdy zzdyVar = zzeoVarZzb4.zza;
        zzeo zzeoVarZzb5 = zzenVar.zzb(1937011827);
        zzeoVarZzb5.getClass();
        zzdy zzdyVar2 = zzeoVarZzb5.zza;
        zzeo zzeoVarZzb6 = zzenVar.zzb(1937011571);
        zzdy zzdyVar3 = zzeoVarZzb6 != null ? zzeoVarZzb6.zza : null;
        zzeo zzeoVarZzb7 = zzenVar.zzb(1668576371);
        zzdy zzdyVar4 = zzeoVarZzb7 != null ? zzeoVarZzb7.zza : null;
        zzahz zzahzVar = new zzahz(zzdyVar, zzeoVarZzb3.zza, z);
        zzdyVar2.zzL(12);
        int iZzp6 = zzdyVar2.zzp() - 1;
        int iZzp7 = zzdyVar2.zzp();
        int iZzp8 = zzdyVar2.zzp();
        if (zzdyVar4 != null) {
            zzdyVar4.zzL(12);
            iZzp = zzdyVar4.zzp();
        } else {
            iZzp = 0;
        }
        if (zzdyVar3 != null) {
            zzdyVar3.zzL(12);
            iZzp2 = zzdyVar3.zzp();
            if (iZzp2 > 0) {
                iZzp3 = zzdyVar3.zzp() - 1;
            } else {
                zzdyVar3 = null;
            }
            iZza = zzaihVar.zza();
            zzabVar = zzajbVar3.zzg;
            if (iZza != -1) {
                str2 = zzabVar.zzo;
                if (("audio/raw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/g711-alaw".equals(str2)) || iZzp6 != 0) {
                    jArrCopyOf = new long[iZzb];
                    iArrCopyOf = new int[iZzb];
                    jArrCopyOf2 = new long[iZzb];
                    iArrCopyOf2 = new int[iZzb];
                    i = iZzp6;
                    zzajbVar2 = zzajbVar3;
                    iZzp4 = iZzp3;
                    i2 = 0;
                    j = 0;
                    j2 = 0;
                    i3 = 0;
                    iZzp5 = 0;
                    i4 = 0;
                    i5 = iZzp;
                    i6 = 0;
                    while (i6 < iZzb) {
                        j4 = j;
                        zZza = true;
                        while (true) {
                            if (i3 != 0) {
                                i9 = i3;
                                break;
                            }
                            zZza = zzahzVar.zza();
                            if (zZza) {
                                i9 = 0;
                                break;
                            }
                            zzdy zzdyVar5 = zzdyVar2;
                            long j13 = zzahzVar.zzd;
                            i3 = zzahzVar.zzc;
                            j4 = j13;
                            zzdyVar2 = zzdyVar5;
                            zzdyVar3 = zzdyVar3;
                            iZzb = iZzb;
                        }
                        if (!zZza) {
                            zzdo.zzf("BoxParsers", "Unexpected end of chunk data");
                            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
                            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
                            iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i6);
                            iZzb = i6;
                            break;
                        }
                        iZzg = i4;
                        if (zzdyVar4 != null) {
                            while (iZzp5 == 0) {
                                if (i5 > 0) {
                                    iZzp5 = 0;
                                    break;
                                }
                                i5--;
                                iZzp5 = zzdyVar4.zzp();
                                iZzg = zzdyVar4.zzg();
                            }
                            iZzp5--;
                        }
                        jArrCopyOf[i6] = j4;
                        iZzc = zzaihVar.zzc();
                        iArrCopyOf[i6] = iZzc;
                        if (iZzc > i2) {
                            i2 = iZzc;
                        }
                        jArrCopyOf2[i6] = j2 + ((long) iZzg);
                        if (zzdyVar3 == 0) {
                            i10 = 1;
                        } else {
                            i10 = 0;
                        }
                        iArrCopyOf2[i6] = i10;
                        if (i6 == iZzp4) {
                            iArrCopyOf2[i6] = 1;
                            iZzp2--;
                            if (iZzp2 > 0) {
                                zzdyVar3.getClass();
                                iZzp4 = zzdyVar3.zzp() - 1;
                            }
                        }
                        j2 += (long) iZzp8;
                        iZzp7--;
                        if (iZzp7 != 0) {
                            if (i > 0) {
                                i--;
                                iZzp7 = zzdyVar2.zzp();
                                iZzp8 = zzdyVar2.zzg();
                            } else {
                                iZzp7 = 0;
                            }
                        }
                        long j14 = j4 + ((long) iArrCopyOf[i6]);
                        i3 = i9 - 1;
                        i6++;
                        i4 = iZzg;
                        iZzb = iZzb;
                        zzdyVar2 = zzdyVar2;
                        j = j14;
                        zzdyVar3 = zzdyVar3;
                    }
                    long j15 = j2 + ((long) i4);
                    if (zzdyVar4 != null) {
                        z2 = true;
                        break;
                    }
                    while (true) {
                        if (i5 > 0) {
                            z2 = true;
                            break;
                        }
                        if (zzdyVar4.zzp() != 0) {
                            z2 = false;
                            break;
                        }
                        zzdyVar4.zzg();
                        i5--;
                    }
                    if (iZzp2 == 0) {
                        if (iZzp7 == 0) {
                            if (i3 == 0) {
                                i7 = 0;
                            } else if (i == 0) {
                                z2 = z2;
                                iZzb = iZzb;
                                i = i;
                                zzajbVar2 = zzajbVar2;
                                iZzp5 = iZzp5;
                                i7 = 0;
                                iZzp2 = 0;
                                i3 = 0;
                            } else if (iZzp5 == 0) {
                                z2 = z2;
                                iZzb = iZzb;
                                zzajbVar2 = zzajbVar2;
                                iZzp5 = iZzp5;
                                i7 = 0;
                                iZzp2 = 0;
                                i3 = 0;
                                i = 0;
                            } else if (z2) {
                                iZzb = iZzb;
                                zzajbVar2 = zzajbVar2;
                            } else {
                                iZzb = iZzb;
                                zzajbVar2 = zzajbVar2;
                                i7 = 0;
                                iZzp2 = 0;
                                i3 = 0;
                                i = 0;
                                iZzp5 = 0;
                                z2 = false;
                            }
                            jArr = jArrCopyOf2;
                            j3 = j15;
                            iZzb = iZzb;
                            iArr = iArrCopyOf;
                            i8 = i2;
                            iArr2 = iArrCopyOf2;
                            jArr2 = jArrCopyOf;
                        } else {
                            i7 = iZzp7;
                        }
                        iZzp2 = 0;
                    } else {
                        z2 = z2;
                        iZzb = iZzb;
                        i7 = iZzp7;
                        i3 = i3;
                        i = i;
                        zzajbVar2 = zzajbVar2;
                        iZzp5 = iZzp5;
                    }
                    int i24 = zzajbVar2.zza;
                    StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                    sb.append(i24);
                    sb.append(": remainingSynchronizationSamples ");
                    sb.append(iZzp2);
                    sb.append(", remainingSamplesAtTimestampDelta ");
                    sb.append(i7);
                    sb.append(", remainingSamplesInChunk ");
                    sb.append(i3);
                    sb.append(", remainingTimestampDeltaChanges ");
                    sb.append(i);
                    sb.append(", remainingSamplesAtTimestampOffset ");
                    sb.append(iZzp5);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    zzdo.zzf("BoxParsers", sb.toString());
                    jArr = jArrCopyOf2;
                    j3 = j15;
                    iZzb = iZzb;
                    iArr = iArrCopyOf;
                    i8 = i2;
                    iArr2 = iArrCopyOf2;
                    jArr2 = jArrCopyOf;
                } else if (iZzp == 0 || iZzp2 != 0) {
                    iZzp6 = 0;
                    jArrCopyOf = new long[iZzb];
                    iArrCopyOf = new int[iZzb];
                    jArrCopyOf2 = new long[iZzb];
                    iArrCopyOf2 = new int[iZzb];
                    i = iZzp6;
                    zzajbVar2 = zzajbVar3;
                    iZzp4 = iZzp3;
                    i2 = 0;
                    j = 0;
                    j2 = 0;
                    i3 = 0;
                    iZzp5 = 0;
                    i4 = 0;
                    i5 = iZzp;
                    i6 = 0;
                    while (i6 < iZzb) {
                        j4 = j;
                        zZza = true;
                        while (true) {
                            if (i3 != 0) {
                                i9 = i3;
                                break;
                            }
                            zZza = zzahzVar.zza();
                            if (zZza) {
                                i9 = 0;
                                break;
                            }
                            zzdy zzdyVar6 = zzdyVar2;
                            long j16 = zzahzVar.zzd;
                            i3 = zzahzVar.zzc;
                            j4 = j16;
                            zzdyVar2 = zzdyVar6;
                            zzdyVar3 = zzdyVar3;
                            iZzb = iZzb;
                        }
                        if (!zZza) {
                            zzdo.zzf("BoxParsers", "Unexpected end of chunk data");
                            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
                            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
                            iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i6);
                            iZzb = i6;
                            break;
                        }
                        iZzg = i4;
                        if (zzdyVar4 != null) {
                            while (iZzp5 == 0) {
                                if (i5 > 0) {
                                    iZzp5 = 0;
                                    break;
                                }
                                i5--;
                                iZzp5 = zzdyVar4.zzp();
                                iZzg = zzdyVar4.zzg();
                            }
                            iZzp5--;
                        }
                        jArrCopyOf[i6] = j4;
                        iZzc = zzaihVar.zzc();
                        iArrCopyOf[i6] = iZzc;
                        if (iZzc > i2) {
                            i2 = iZzc;
                        }
                        jArrCopyOf2[i6] = j2 + ((long) iZzg);
                        if (zzdyVar3 == 0) {
                            i10 = 1;
                        } else {
                            i10 = 0;
                        }
                        iArrCopyOf2[i6] = i10;
                        if (i6 == iZzp4) {
                            iArrCopyOf2[i6] = 1;
                            iZzp2--;
                            if (iZzp2 > 0) {
                                zzdyVar3.getClass();
                                iZzp4 = zzdyVar3.zzp() - 1;
                            }
                        }
                        j2 += (long) iZzp8;
                        iZzp7--;
                        if (iZzp7 != 0) {
                            if (i > 0) {
                                i--;
                                iZzp7 = zzdyVar2.zzp();
                                iZzp8 = zzdyVar2.zzg();
                            } else {
                                iZzp7 = 0;
                            }
                        }
                        long j17 = j4 + ((long) iArrCopyOf[i6]);
                        i3 = i9 - 1;
                        i6++;
                        i4 = iZzg;
                        iZzb = iZzb;
                        zzdyVar2 = zzdyVar2;
                        j = j17;
                        zzdyVar3 = zzdyVar3;
                    }
                    long j18 = j2 + ((long) i4);
                    if (zzdyVar4 != null) {
                        z2 = true;
                        break;
                    }
                    while (true) {
                        if (i5 > 0) {
                            z2 = true;
                            break;
                        }
                        if (zzdyVar4.zzp() != 0) {
                            z2 = false;
                            break;
                        }
                        zzdyVar4.zzg();
                        i5--;
                    }
                    if (iZzp2 == 0) {
                        if (iZzp7 == 0) {
                            if (i3 == 0) {
                                i7 = 0;
                            } else if (i == 0) {
                                z2 = z2;
                                iZzb = iZzb;
                                i = i;
                                zzajbVar2 = zzajbVar2;
                                iZzp5 = iZzp5;
                                i7 = 0;
                                iZzp2 = 0;
                                i3 = 0;
                            } else if (iZzp5 == 0) {
                                z2 = z2;
                                iZzb = iZzb;
                                zzajbVar2 = zzajbVar2;
                                iZzp5 = iZzp5;
                                i7 = 0;
                                iZzp2 = 0;
                                i3 = 0;
                                i = 0;
                            } else if (z2) {
                                iZzb = iZzb;
                                zzajbVar2 = zzajbVar2;
                                i7 = 0;
                                iZzp2 = 0;
                                i3 = 0;
                                i = 0;
                                iZzp5 = 0;
                                z2 = false;
                            } else {
                                iZzb = iZzb;
                                zzajbVar2 = zzajbVar2;
                            }
                            jArr = jArrCopyOf2;
                            j3 = j18;
                            iZzb = iZzb;
                            iArr = iArrCopyOf;
                            i8 = i2;
                            iArr2 = iArrCopyOf2;
                            jArr2 = jArrCopyOf;
                        } else {
                            i7 = iZzp7;
                        }
                        iZzp2 = 0;
                    } else {
                        z2 = z2;
                        iZzb = iZzb;
                        i7 = iZzp7;
                        i3 = i3;
                        i = i;
                        zzajbVar2 = zzajbVar2;
                        iZzp5 = iZzp5;
                    }
                    int i25 = zzajbVar2.zza;
                    StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                    sb2.append(i25);
                    sb2.append(": remainingSynchronizationSamples ");
                    sb2.append(iZzp2);
                    sb2.append(", remainingSamplesAtTimestampDelta ");
                    sb2.append(i7);
                    sb2.append(", remainingSamplesInChunk ");
                    sb2.append(i3);
                    sb2.append(", remainingTimestampDeltaChanges ");
                    sb2.append(i);
                    sb2.append(", remainingSamplesAtTimestampOffset ");
                    sb2.append(iZzp5);
                    if (true != z2) {
                        str = ", ctts invalid";
                    } else {
                        str = "";
                    }
                    sb2.append(str);
                    zzdo.zzf("BoxParsers", sb2.toString());
                    jArr = jArrCopyOf2;
                    j3 = j18;
                    iZzb = iZzb;
                    iArr = iArrCopyOf;
                    i8 = i2;
                    iArr2 = iArrCopyOf2;
                    jArr2 = jArrCopyOf;
                } else {
                    int i26 = zzahzVar.zza;
                    long[] jArr11 = new long[i26];
                    int[] iArr10 = new int[i26];
                    while (zzahzVar.zza()) {
                        int i27 = zzahzVar.zzb;
                        jArr11[i27] = zzahzVar.zzd;
                        iArr10[i27] = zzahzVar.zzc;
                    }
                    long j19 = iZzp8;
                    int i28 = 8192 / iZza;
                    int i29 = 0;
                    for (int i30 = 0; i30 < i26; i30++) {
                        int i31 = iArr10[i30];
                        int i32 = zzei.zza;
                        i29 += ((i31 + i28) - 1) / i28;
                    }
                    long[] jArr12 = new long[i29];
                    int[] iArr11 = new int[i29];
                    long[] jArr13 = new long[i29];
                    int[] iArr12 = new int[i29];
                    int i33 = 0;
                    int i34 = 0;
                    i8 = 0;
                    int i35 = 0;
                    while (i34 < i26) {
                        int i36 = iArr10[i34];
                        long j20 = jArr11[i34];
                        int i37 = i35;
                        int i38 = i26;
                        int iMax = i8;
                        int i39 = i37;
                        long[] jArr14 = jArr11;
                        int i40 = i36;
                        while (i40 > 0) {
                            int iMin = Math.min(i28, i40);
                            jArr12[i39] = j20;
                            int i41 = i28;
                            int i42 = iZza * iMin;
                            iArr11[i39] = i42;
                            iMax = Math.max(iMax, i42);
                            jArr13[i39] = ((long) i33) * j19;
                            iArr12[i39] = 1;
                            j20 += (long) iArr11[i39];
                            i33 += iMin;
                            i40 -= iMin;
                            i39++;
                            i28 = i41;
                            iZza = iZza;
                        }
                        i34++;
                        jArr11 = jArr14;
                        int i43 = i39;
                        i8 = iMax;
                        i26 = i38;
                        i35 = i43;
                    }
                    j3 = j19 * ((long) i33);
                    jArr2 = jArr12;
                    zzajbVar2 = zzajbVar3;
                    jArr = jArr13;
                    iArr2 = iArr12;
                    iArr = iArr11;
                }
            } else {
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i = iZzp6;
                zzajbVar2 = zzajbVar3;
                iZzp4 = iZzp3;
                i2 = 0;
                j = 0;
                j2 = 0;
                i3 = 0;
                iZzp5 = 0;
                i4 = 0;
                i5 = iZzp;
                i6 = 0;
                while (i6 < iZzb) {
                    j4 = j;
                    zZza = true;
                    while (true) {
                        if (i3 != 0) {
                            i9 = i3;
                            break;
                        }
                        zZza = zzahzVar.zza();
                        if (zZza) {
                            i9 = 0;
                            break;
                        }
                        zzdy zzdyVar7 = zzdyVar2;
                        long j110 = zzahzVar.zzd;
                        i3 = zzahzVar.zzc;
                        j4 = j110;
                        zzdyVar2 = zzdyVar7;
                        zzdyVar3 = zzdyVar3;
                        iZzb = iZzb;
                    }
                    if (!zZza) {
                        zzdo.zzf("BoxParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i6);
                        iZzb = i6;
                        break;
                    }
                    iZzg = i4;
                    if (zzdyVar4 != null) {
                        while (iZzp5 == 0) {
                            if (i5 > 0) {
                                iZzp5 = 0;
                                break;
                            }
                            i5--;
                            iZzp5 = zzdyVar4.zzp();
                            iZzg = zzdyVar4.zzg();
                        }
                        iZzp5--;
                    }
                    jArrCopyOf[i6] = j4;
                    iZzc = zzaihVar.zzc();
                    iArrCopyOf[i6] = iZzc;
                    if (iZzc > i2) {
                        i2 = iZzc;
                    }
                    jArrCopyOf2[i6] = j2 + ((long) iZzg);
                    if (zzdyVar3 == 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    iArrCopyOf2[i6] = i10;
                    if (i6 == iZzp4) {
                        iArrCopyOf2[i6] = 1;
                        iZzp2--;
                        if (iZzp2 > 0) {
                            zzdyVar3.getClass();
                            iZzp4 = zzdyVar3.zzp() - 1;
                        }
                    }
                    j2 += (long) iZzp8;
                    iZzp7--;
                    if (iZzp7 != 0) {
                        if (i > 0) {
                            i--;
                            iZzp7 = zzdyVar2.zzp();
                            iZzp8 = zzdyVar2.zzg();
                        } else {
                            iZzp7 = 0;
                        }
                    }
                    long j111 = j4 + ((long) iArrCopyOf[i6]);
                    i3 = i9 - 1;
                    i6++;
                    i4 = iZzg;
                    iZzb = iZzb;
                    zzdyVar2 = zzdyVar2;
                    j = j111;
                    zzdyVar3 = zzdyVar3;
                }
                long j112 = j2 + ((long) i4);
                if (zzdyVar4 != null) {
                    z2 = true;
                    break;
                }
                while (true) {
                    if (i5 > 0) {
                        z2 = true;
                        break;
                    }
                    if (zzdyVar4.zzp() != 0) {
                        z2 = false;
                        break;
                    }
                    zzdyVar4.zzg();
                    i5--;
                }
                if (iZzp2 == 0) {
                    if (iZzp7 == 0) {
                        if (i3 == 0) {
                            i7 = 0;
                        } else if (i == 0) {
                            z2 = z2;
                            iZzb = iZzb;
                            i = i;
                            zzajbVar2 = zzajbVar2;
                            iZzp5 = iZzp5;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                        } else if (iZzp5 == 0) {
                            z2 = z2;
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                            iZzp5 = iZzp5;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                            i = 0;
                        } else if (z2) {
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                            i = 0;
                            iZzp5 = 0;
                            z2 = false;
                        } else {
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                        }
                        jArr = jArrCopyOf2;
                        j3 = j112;
                        iZzb = iZzb;
                        iArr = iArrCopyOf;
                        i8 = i2;
                        iArr2 = iArrCopyOf2;
                        jArr2 = jArrCopyOf;
                    } else {
                        i7 = iZzp7;
                    }
                    iZzp2 = 0;
                } else {
                    z2 = z2;
                    iZzb = iZzb;
                    i7 = iZzp7;
                    i3 = i3;
                    i = i;
                    zzajbVar2 = zzajbVar2;
                    iZzp5 = iZzp5;
                }
                int i210 = zzajbVar2.zza;
                StringBuilder sb3 = new StringBuilder("Inconsistent stbl box for track ");
                sb3.append(i210);
                sb3.append(": remainingSynchronizationSamples ");
                sb3.append(iZzp2);
                sb3.append(", remainingSamplesAtTimestampDelta ");
                sb3.append(i7);
                sb3.append(", remainingSamplesInChunk ");
                sb3.append(i3);
                sb3.append(", remainingTimestampDeltaChanges ");
                sb3.append(i);
                sb3.append(", remainingSamplesAtTimestampOffset ");
                sb3.append(iZzp5);
                if (true != z2) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb3.append(str);
                zzdo.zzf("BoxParsers", sb3.toString());
                jArr = jArrCopyOf2;
                j3 = j112;
                iZzb = iZzb;
                iArr = iArrCopyOf;
                i8 = i2;
                iArr2 = iArrCopyOf2;
                jArr2 = jArrCopyOf;
            }
            jZzu = zzei.zzu(j3, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN);
            jArr3 = zzajbVar2.zzi;
            if (jArr3 == null) {
                zzei.zzF(jArr, 1000000L, zzajbVar2.zzc);
                return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr2, jZzu);
            }
            iArr3 = iArr2;
            if (jArr3.length == 1 && zzajbVar2.zzb == 1 && (length2 = jArr.length) >= 2) {
                long[] jArr15 = zzajbVar2.zzj;
                jArr15.getClass();
                j10 = jArr15[0];
                jZzu3 = zzei.zzu(jArr3[0], zzajbVar2.zzc, zzajbVar2.zzd, RoundingMode.DOWN) + j10;
                int i44 = length2 - 1;
                int iMax2 = Math.max(0, Math.min(4, i44));
                int iMax3 = Math.max(0, Math.min(length2 - 4, i44));
                j11 = jArr[0];
                if (j11 <= j10 && j10 < jArr[iMax2] && jArr[iMax3] < jZzu3 && jZzu3 <= j3) {
                    jZzu4 = zzei.zzu(j10 - j11, zzajbVar2.zzg.zzE, zzajbVar2.zzc, RoundingMode.DOWN);
                    jZzu5 = zzei.zzu(j3 - jZzu3, zzajbVar2.zzg.zzE, zzajbVar2.zzc, RoundingMode.DOWN);
                    if (jZzu4 != 0) {
                        if (jZzu4 <= 2147483647L && jZzu5 <= 2147483647L) {
                            zzadbVar.zza = (int) jZzu4;
                            zzadbVar.zzb = (int) jZzu5;
                            zzei.zzF(jArr, 1000000L, zzajbVar2.zzc);
                            return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr3, zzei.zzu(zzajbVar2.zzi[0], 1000000L, zzajbVar2.zzd, RoundingMode.DOWN));
                        }
                    } else if (jZzu5 != 0) {
                        jZzu4 = 0;
                        if (jZzu4 <= 2147483647L) {
                            zzadbVar.zza = (int) jZzu4;
                            zzadbVar.zzb = (int) jZzu5;
                            zzei.zzF(jArr, 1000000L, zzajbVar2.zzc);
                            return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr3, zzei.zzu(zzajbVar2.zzi[0], 1000000L, zzajbVar2.zzd, RoundingMode.DOWN));
                        }
                    }
                }
            }
            jArr4 = zzajbVar2.zzi;
            length = jArr4.length;
            if (length == 1) {
                if (jArr4[0] == 0) {
                    long[] jArr16 = zzajbVar2.zzj;
                    jArr16.getClass();
                    j9 = jArr16[0];
                    for (i23 = 0; i23 < jArr.length; i23++) {
                        jArr[i23] = zzei.zzu(jArr[i23] - j9, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN);
                    }
                    return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr3, zzei.zzu(j3 - j9, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN));
                }
                length = 1;
            }
            if (zzajbVar2.zzb == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            long[] jArr17 = zzajbVar2.zzj;
            iArr4 = new int[length];
            iArr5 = new int[length];
            jArr17.getClass();
            jArr5 = jArr17;
            i11 = 0;
            z4 = false;
            i12 = 0;
            i13 = 0;
            while (true) {
                jArr6 = zzajbVar2.zzi;
                if (i13 < jArr6.length) {
                    break;
                }
                long[] jArr18 = jArr2;
                j7 = jArr5[i13];
                if (j7 != -1) {
                    long j21 = jArr6[i13];
                    boolean z10 = z4;
                    i19 = i12;
                    iArr9 = iArr5;
                    int i45 = i11;
                    long jZzu6 = zzei.zzu(j21, zzajbVar2.zzc, zzajbVar2.zzd, RoundingMode.DOWN);
                    iArr4[i13] = zzei.zzd(jArr, j7, true, true);
                    while (true) {
                        i20 = iArr4[i13];
                        if (i20 < 0 || (iArr3[i20] & 1) != 0) {
                            break;
                        }
                        iArr4[i13] = i20 - 1;
                    }
                    j8 = j7 + jZzu6;
                    iZza2 = zzei.zza(jArr, j8, z3, false);
                    iArr9[i13] = iZza2;
                    if (zzajbVar2.zzb == 2) {
                        while (true) {
                            iZza2 = iArr9[i13];
                            if (iZza2 < jArr.length - 1) {
                                break;
                            }
                            i22 = iZza2 + 1;
                            if (jArr[i22] <= j8) {
                                break;
                            }
                            iArr9[i13] = i22;
                        }
                    }
                    i21 = iArr4[i13];
                    int i46 = i45 + (iZza2 - i21);
                    if (i19 != i21) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    z4 = z10 | z9;
                    i18 = iZza2;
                    i11 = i46;
                } else {
                    iArr9 = iArr5;
                    i18 = i12;
                }
                i13++;
                i12 = i18;
                jArr2 = jArr18;
                iArr5 = iArr9;
            }
            iArr6 = iArr5;
            boolean z11 = z4;
            jArr7 = jArr2;
            if (i11 != iZzb) {
                z5 = true;
            } else {
                z5 = false;
            }
            z6 = z11 | z5;
            if (z6) {
                jArr8 = new long[i11];
            } else {
                jArr8 = jArr7;
            }
            if (z6) {
                iArr7 = new int[i11];
            } else {
                iArr7 = iArr;
            }
            if (true == z6) {
                i8 = 0;
            }
            if (z6) {
                iArr8 = new int[i11];
            } else {
                iArr8 = iArr3;
            }
            jArr9 = new long[i11];
            z7 = false;
            i14 = 0;
            i15 = 0;
            j5 = 0;
            while (i15 < zzajbVar2.zzi.length) {
                j6 = zzajbVar2.zzj[i15];
                i16 = iArr4[i15];
                i17 = iArr6[i15];
                if (z6) {
                    int i47 = i17 - i16;
                    jArr10 = jArr7;
                    System.arraycopy(jArr10, i16, jArr8, i14, i47);
                    System.arraycopy(iArr, i16, iArr7, i14, i47);
                    System.arraycopy(iArr3, i16, iArr8, i14, i47);
                } else {
                    jArr10 = jArr7;
                }
                int i48 = i8;
                while (i16 < i17) {
                    int[] iArr13 = iArr8;
                    int i49 = i17;
                    long jZzu7 = zzei.zzu(j5, 1000000L, zzajbVar2.zzd, RoundingMode.DOWN);
                    long[] jArr19 = jArr8;
                    long[] jArr20 = jArr;
                    jZzu2 = zzei.zzu(jArr[i16] - j6, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN);
                    if (jZzu2 < 0) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    z7 = (!z8) | z7;
                    jArr9[i14] = jZzu7 + jZzu2;
                    if (!z6 && iArr7[i14] > i48) {
                        i48 = iArr[i16];
                    }
                    i14++;
                    i16++;
                    i17 = i49;
                    jArr8 = jArr19;
                    iArr8 = iArr13;
                    jArr = jArr20;
                }
                j5 += zzajbVar2.zzi[i15];
                i15++;
                jArr8 = jArr8;
                i8 = i48;
                iArr8 = iArr8;
                jArr7 = jArr10;
                iArr4 = iArr4;
            }
            long[] jArr21 = jArr8;
            int[] iArr14 = iArr8;
            long jZzu8 = zzei.zzu(j5, 1000000L, zzajbVar2.zzd, RoundingMode.DOWN);
            if (z7) {
                zzz zzzVarZzb2 = zzajbVar2.zzg.zzb();
                zzzVarZzb2.zzJ(true);
                zzajbVarZza = zzajbVar2.zza(zzzVarZzb2.zzag());
            } else {
                zzajbVarZza = zzajbVar2;
            }
            return new zzaje(zzajbVarZza, jArr21, iArr7, i8, jArr9, iArr14, jZzu8);
        }
        iZzp2 = 0;
        iZzp3 = -1;
        iZza = zzaihVar.zza();
        zzabVar = zzajbVar3.zzg;
        if (iZza != -1) {
            str2 = zzabVar.zzo;
            if ("audio/raw".equals(str2)) {
                if (iZzp == 0) {
                }
                iZzp6 = 0;
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i = iZzp6;
                zzajbVar2 = zzajbVar3;
                iZzp4 = iZzp3;
                i2 = 0;
                j = 0;
                j2 = 0;
                i3 = 0;
                iZzp5 = 0;
                i4 = 0;
                i5 = iZzp;
                i6 = 0;
                while (i6 < iZzb) {
                    j4 = j;
                    zZza = true;
                    while (true) {
                        if (i3 != 0) {
                            i9 = i3;
                            break;
                        }
                        zZza = zzahzVar.zza();
                        if (zZza) {
                            i9 = 0;
                            break;
                        }
                        zzdy zzdyVar8 = zzdyVar2;
                        long j113 = zzahzVar.zzd;
                        i3 = zzahzVar.zzc;
                        j4 = j113;
                        zzdyVar2 = zzdyVar8;
                        zzdyVar3 = zzdyVar3;
                        iZzb = iZzb;
                    }
                    if (!zZza) {
                        zzdo.zzf("BoxParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i6);
                        iZzb = i6;
                        break;
                    }
                    iZzg = i4;
                    if (zzdyVar4 != null) {
                        while (iZzp5 == 0) {
                            if (i5 > 0) {
                                iZzp5 = 0;
                                break;
                            }
                            i5--;
                            iZzp5 = zzdyVar4.zzp();
                            iZzg = zzdyVar4.zzg();
                        }
                        iZzp5--;
                    }
                    jArrCopyOf[i6] = j4;
                    iZzc = zzaihVar.zzc();
                    iArrCopyOf[i6] = iZzc;
                    if (iZzc > i2) {
                        i2 = iZzc;
                    }
                    jArrCopyOf2[i6] = j2 + ((long) iZzg);
                    if (zzdyVar3 == 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    iArrCopyOf2[i6] = i10;
                    if (i6 == iZzp4) {
                        iArrCopyOf2[i6] = 1;
                        iZzp2--;
                        if (iZzp2 > 0) {
                            zzdyVar3.getClass();
                            iZzp4 = zzdyVar3.zzp() - 1;
                        }
                    }
                    j2 += (long) iZzp8;
                    iZzp7--;
                    if (iZzp7 != 0) {
                        if (i > 0) {
                            i--;
                            iZzp7 = zzdyVar2.zzp();
                            iZzp8 = zzdyVar2.zzg();
                        } else {
                            iZzp7 = 0;
                        }
                    }
                    long j114 = j4 + ((long) iArrCopyOf[i6]);
                    i3 = i9 - 1;
                    i6++;
                    i4 = iZzg;
                    iZzb = iZzb;
                    zzdyVar2 = zzdyVar2;
                    j = j114;
                    zzdyVar3 = zzdyVar3;
                }
                long j115 = j2 + ((long) i4);
                if (zzdyVar4 != null) {
                    z2 = true;
                    break;
                }
                while (true) {
                    if (i5 > 0) {
                        z2 = true;
                        break;
                    }
                    if (zzdyVar4.zzp() != 0) {
                        z2 = false;
                        break;
                    }
                    zzdyVar4.zzg();
                    i5--;
                }
                if (iZzp2 == 0) {
                    if (iZzp7 == 0) {
                        if (i3 == 0) {
                            i7 = 0;
                        } else if (i == 0) {
                            z2 = z2;
                            iZzb = iZzb;
                            i = i;
                            zzajbVar2 = zzajbVar2;
                            iZzp5 = iZzp5;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                        } else if (iZzp5 == 0) {
                            z2 = z2;
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                            iZzp5 = iZzp5;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                            i = 0;
                        } else if (z2) {
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                            i = 0;
                            iZzp5 = 0;
                            z2 = false;
                        } else {
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                        }
                        jArr = jArrCopyOf2;
                        j3 = j115;
                        iZzb = iZzb;
                        iArr = iArrCopyOf;
                        i8 = i2;
                        iArr2 = iArrCopyOf2;
                        jArr2 = jArrCopyOf;
                    } else {
                        i7 = iZzp7;
                    }
                    iZzp2 = 0;
                } else {
                    z2 = z2;
                    iZzb = iZzb;
                    i7 = iZzp7;
                    i3 = i3;
                    i = i;
                    zzajbVar2 = zzajbVar2;
                    iZzp5 = iZzp5;
                }
                int i211 = zzajbVar2.zza;
                StringBuilder sb4 = new StringBuilder("Inconsistent stbl box for track ");
                sb4.append(i211);
                sb4.append(": remainingSynchronizationSamples ");
                sb4.append(iZzp2);
                sb4.append(", remainingSamplesAtTimestampDelta ");
                sb4.append(i7);
                sb4.append(", remainingSamplesInChunk ");
                sb4.append(i3);
                sb4.append(", remainingTimestampDeltaChanges ");
                sb4.append(i);
                sb4.append(", remainingSamplesAtTimestampOffset ");
                sb4.append(iZzp5);
                if (true != z2) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb4.append(str);
                zzdo.zzf("BoxParsers", sb4.toString());
                jArr = jArrCopyOf2;
                j3 = j115;
                iZzb = iZzb;
                iArr = iArrCopyOf;
                i8 = i2;
                iArr2 = iArrCopyOf2;
                jArr2 = jArrCopyOf;
            } else {
                if (iZzp == 0) {
                }
                iZzp6 = 0;
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i = iZzp6;
                zzajbVar2 = zzajbVar3;
                iZzp4 = iZzp3;
                i2 = 0;
                j = 0;
                j2 = 0;
                i3 = 0;
                iZzp5 = 0;
                i4 = 0;
                i5 = iZzp;
                i6 = 0;
                while (i6 < iZzb) {
                    j4 = j;
                    zZza = true;
                    while (true) {
                        if (i3 != 0) {
                            i9 = i3;
                            break;
                        }
                        zZza = zzahzVar.zza();
                        if (zZza) {
                            i9 = 0;
                            break;
                        }
                        zzdy zzdyVar9 = zzdyVar2;
                        long j116 = zzahzVar.zzd;
                        i3 = zzahzVar.zzc;
                        j4 = j116;
                        zzdyVar2 = zzdyVar9;
                        zzdyVar3 = zzdyVar3;
                        iZzb = iZzb;
                    }
                    if (!zZza) {
                        zzdo.zzf("BoxParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i6);
                        iZzb = i6;
                        break;
                    }
                    iZzg = i4;
                    if (zzdyVar4 != null) {
                        while (iZzp5 == 0) {
                            if (i5 > 0) {
                                iZzp5 = 0;
                                break;
                            }
                            i5--;
                            iZzp5 = zzdyVar4.zzp();
                            iZzg = zzdyVar4.zzg();
                        }
                        iZzp5--;
                    }
                    jArrCopyOf[i6] = j4;
                    iZzc = zzaihVar.zzc();
                    iArrCopyOf[i6] = iZzc;
                    if (iZzc > i2) {
                        i2 = iZzc;
                    }
                    jArrCopyOf2[i6] = j2 + ((long) iZzg);
                    if (zzdyVar3 == 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    iArrCopyOf2[i6] = i10;
                    if (i6 == iZzp4) {
                        iArrCopyOf2[i6] = 1;
                        iZzp2--;
                        if (iZzp2 > 0) {
                            zzdyVar3.getClass();
                            iZzp4 = zzdyVar3.zzp() - 1;
                        }
                    }
                    j2 += (long) iZzp8;
                    iZzp7--;
                    if (iZzp7 != 0) {
                        if (i > 0) {
                            i--;
                            iZzp7 = zzdyVar2.zzp();
                            iZzp8 = zzdyVar2.zzg();
                        } else {
                            iZzp7 = 0;
                        }
                    }
                    long j117 = j4 + ((long) iArrCopyOf[i6]);
                    i3 = i9 - 1;
                    i6++;
                    i4 = iZzg;
                    iZzb = iZzb;
                    zzdyVar2 = zzdyVar2;
                    j = j117;
                    zzdyVar3 = zzdyVar3;
                }
                long j118 = j2 + ((long) i4);
                if (zzdyVar4 != null) {
                    z2 = true;
                    break;
                }
                while (true) {
                    if (i5 > 0) {
                        z2 = true;
                        break;
                    }
                    if (zzdyVar4.zzp() != 0) {
                        z2 = false;
                        break;
                    }
                    zzdyVar4.zzg();
                    i5--;
                }
                if (iZzp2 == 0) {
                    if (iZzp7 == 0) {
                        if (i3 == 0) {
                            i7 = 0;
                        } else if (i == 0) {
                            z2 = z2;
                            iZzb = iZzb;
                            i = i;
                            zzajbVar2 = zzajbVar2;
                            iZzp5 = iZzp5;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                        } else if (iZzp5 == 0) {
                            z2 = z2;
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                            iZzp5 = iZzp5;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                            i = 0;
                        } else if (z2) {
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                            i7 = 0;
                            iZzp2 = 0;
                            i3 = 0;
                            i = 0;
                            iZzp5 = 0;
                            z2 = false;
                        } else {
                            iZzb = iZzb;
                            zzajbVar2 = zzajbVar2;
                        }
                        jArr = jArrCopyOf2;
                        j3 = j118;
                        iZzb = iZzb;
                        iArr = iArrCopyOf;
                        i8 = i2;
                        iArr2 = iArrCopyOf2;
                        jArr2 = jArrCopyOf;
                    } else {
                        i7 = iZzp7;
                    }
                    iZzp2 = 0;
                } else {
                    z2 = z2;
                    iZzb = iZzb;
                    i7 = iZzp7;
                    i3 = i3;
                    i = i;
                    zzajbVar2 = zzajbVar2;
                    iZzp5 = iZzp5;
                }
                int i212 = zzajbVar2.zza;
                StringBuilder sb5 = new StringBuilder("Inconsistent stbl box for track ");
                sb5.append(i212);
                sb5.append(": remainingSynchronizationSamples ");
                sb5.append(iZzp2);
                sb5.append(", remainingSamplesAtTimestampDelta ");
                sb5.append(i7);
                sb5.append(", remainingSamplesInChunk ");
                sb5.append(i3);
                sb5.append(", remainingTimestampDeltaChanges ");
                sb5.append(i);
                sb5.append(", remainingSamplesAtTimestampOffset ");
                sb5.append(iZzp5);
                if (true != z2) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                sb5.append(str);
                zzdo.zzf("BoxParsers", sb5.toString());
                jArr = jArrCopyOf2;
                j3 = j118;
                iZzb = iZzb;
                iArr = iArrCopyOf;
                i8 = i2;
                iArr2 = iArrCopyOf2;
                jArr2 = jArrCopyOf;
            }
        } else {
            jArrCopyOf = new long[iZzb];
            iArrCopyOf = new int[iZzb];
            jArrCopyOf2 = new long[iZzb];
            iArrCopyOf2 = new int[iZzb];
            i = iZzp6;
            zzajbVar2 = zzajbVar3;
            iZzp4 = iZzp3;
            i2 = 0;
            j = 0;
            j2 = 0;
            i3 = 0;
            iZzp5 = 0;
            i4 = 0;
            i5 = iZzp;
            i6 = 0;
            while (i6 < iZzb) {
                j4 = j;
                zZza = true;
                while (true) {
                    if (i3 != 0) {
                        i9 = i3;
                        break;
                    }
                    zZza = zzahzVar.zza();
                    if (zZza) {
                        i9 = 0;
                        break;
                    }
                    zzdy zzdyVar10 = zzdyVar2;
                    long j119 = zzahzVar.zzd;
                    i3 = zzahzVar.zzc;
                    j4 = j119;
                    zzdyVar2 = zzdyVar10;
                    zzdyVar3 = zzdyVar3;
                    iZzb = iZzb;
                }
                if (!zZza) {
                    zzdo.zzf("BoxParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i6);
                    iZzb = i6;
                    break;
                }
                iZzg = i4;
                if (zzdyVar4 != null) {
                    while (iZzp5 == 0) {
                        if (i5 > 0) {
                            iZzp5 = 0;
                            break;
                        }
                        i5--;
                        iZzp5 = zzdyVar4.zzp();
                        iZzg = zzdyVar4.zzg();
                    }
                    iZzp5--;
                }
                jArrCopyOf[i6] = j4;
                iZzc = zzaihVar.zzc();
                iArrCopyOf[i6] = iZzc;
                if (iZzc > i2) {
                    i2 = iZzc;
                }
                jArrCopyOf2[i6] = j2 + ((long) iZzg);
                if (zzdyVar3 == 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                iArrCopyOf2[i6] = i10;
                if (i6 == iZzp4) {
                    iArrCopyOf2[i6] = 1;
                    iZzp2--;
                    if (iZzp2 > 0) {
                        zzdyVar3.getClass();
                        iZzp4 = zzdyVar3.zzp() - 1;
                    }
                }
                j2 += (long) iZzp8;
                iZzp7--;
                if (iZzp7 != 0) {
                    if (i > 0) {
                        i--;
                        iZzp7 = zzdyVar2.zzp();
                        iZzp8 = zzdyVar2.zzg();
                    } else {
                        iZzp7 = 0;
                    }
                }
                long j1110 = j4 + ((long) iArrCopyOf[i6]);
                i3 = i9 - 1;
                i6++;
                i4 = iZzg;
                iZzb = iZzb;
                zzdyVar2 = zzdyVar2;
                j = j1110;
                zzdyVar3 = zzdyVar3;
            }
            long j1111 = j2 + ((long) i4);
            if (zzdyVar4 != null) {
                z2 = true;
                break;
            }
            while (true) {
                if (i5 > 0) {
                    z2 = true;
                    break;
                }
                if (zzdyVar4.zzp() != 0) {
                    z2 = false;
                    break;
                }
                zzdyVar4.zzg();
                i5--;
            }
            if (iZzp2 == 0) {
                if (iZzp7 == 0) {
                    if (i3 == 0) {
                        i7 = 0;
                    } else if (i == 0) {
                        z2 = z2;
                        iZzb = iZzb;
                        i = i;
                        zzajbVar2 = zzajbVar2;
                        iZzp5 = iZzp5;
                        i7 = 0;
                        iZzp2 = 0;
                        i3 = 0;
                    } else if (iZzp5 == 0) {
                        z2 = z2;
                        iZzb = iZzb;
                        zzajbVar2 = zzajbVar2;
                        iZzp5 = iZzp5;
                        i7 = 0;
                        iZzp2 = 0;
                        i3 = 0;
                        i = 0;
                    } else if (z2) {
                        iZzb = iZzb;
                        zzajbVar2 = zzajbVar2;
                        i7 = 0;
                        iZzp2 = 0;
                        i3 = 0;
                        i = 0;
                        iZzp5 = 0;
                        z2 = false;
                    } else {
                        iZzb = iZzb;
                        zzajbVar2 = zzajbVar2;
                    }
                    jArr = jArrCopyOf2;
                    j3 = j1111;
                    iZzb = iZzb;
                    iArr = iArrCopyOf;
                    i8 = i2;
                    iArr2 = iArrCopyOf2;
                    jArr2 = jArrCopyOf;
                } else {
                    i7 = iZzp7;
                }
                iZzp2 = 0;
            } else {
                z2 = z2;
                iZzb = iZzb;
                i7 = iZzp7;
                i3 = i3;
                i = i;
                zzajbVar2 = zzajbVar2;
                iZzp5 = iZzp5;
            }
            int i213 = zzajbVar2.zza;
            StringBuilder sb6 = new StringBuilder("Inconsistent stbl box for track ");
            sb6.append(i213);
            sb6.append(": remainingSynchronizationSamples ");
            sb6.append(iZzp2);
            sb6.append(", remainingSamplesAtTimestampDelta ");
            sb6.append(i7);
            sb6.append(", remainingSamplesInChunk ");
            sb6.append(i3);
            sb6.append(", remainingTimestampDeltaChanges ");
            sb6.append(i);
            sb6.append(", remainingSamplesAtTimestampOffset ");
            sb6.append(iZzp5);
            if (true != z2) {
                str = ", ctts invalid";
            } else {
                str = "";
            }
            sb6.append(str);
            zzdo.zzf("BoxParsers", sb6.toString());
            jArr = jArrCopyOf2;
            j3 = j1111;
            iZzb = iZzb;
            iArr = iArrCopyOf;
            i8 = i2;
            iArr2 = iArrCopyOf2;
            jArr2 = jArrCopyOf;
        }
        jZzu = zzei.zzu(j3, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN);
        jArr3 = zzajbVar2.zzi;
        if (jArr3 == null) {
            zzei.zzF(jArr, 1000000L, zzajbVar2.zzc);
            return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr2, jZzu);
        }
        iArr3 = iArr2;
        if (jArr3.length == 1) {
            long[] jArr110 = zzajbVar2.zzj;
            jArr110.getClass();
            j10 = jArr110[0];
            jZzu3 = zzei.zzu(jArr3[0], zzajbVar2.zzc, zzajbVar2.zzd, RoundingMode.DOWN) + j10;
            int i410 = length2 - 1;
            int iMax4 = Math.max(0, Math.min(4, i410));
            int iMax5 = Math.max(0, Math.min(length2 - 4, i410));
            j11 = jArr[0];
            if (j11 <= j10) {
                jZzu4 = zzei.zzu(j10 - j11, zzajbVar2.zzg.zzE, zzajbVar2.zzc, RoundingMode.DOWN);
                jZzu5 = zzei.zzu(j3 - jZzu3, zzajbVar2.zzg.zzE, zzajbVar2.zzc, RoundingMode.DOWN);
                if (jZzu4 != 0) {
                    if (jZzu4 <= 2147483647L) {
                        zzadbVar.zza = (int) jZzu4;
                        zzadbVar.zzb = (int) jZzu5;
                        zzei.zzF(jArr, 1000000L, zzajbVar2.zzc);
                        return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr3, zzei.zzu(zzajbVar2.zzi[0], 1000000L, zzajbVar2.zzd, RoundingMode.DOWN));
                    }
                } else if (jZzu5 != 0) {
                    jZzu4 = 0;
                    if (jZzu4 <= 2147483647L) {
                        zzadbVar.zza = (int) jZzu4;
                        zzadbVar.zzb = (int) jZzu5;
                        zzei.zzF(jArr, 1000000L, zzajbVar2.zzc);
                        return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr3, zzei.zzu(zzajbVar2.zzi[0], 1000000L, zzajbVar2.zzd, RoundingMode.DOWN));
                    }
                }
            }
        }
        jArr4 = zzajbVar2.zzi;
        length = jArr4.length;
        if (length == 1) {
            if (jArr4[0] == 0) {
                long[] jArr111 = zzajbVar2.zzj;
                jArr111.getClass();
                j9 = jArr111[0];
                while (i23 < jArr.length) {
                    jArr[i23] = zzei.zzu(jArr[i23] - j9, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN);
                }
                return new zzaje(zzajbVar2, jArr2, iArr, i8, jArr, iArr3, zzei.zzu(j3 - j9, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN));
            }
            length = 1;
        }
        if (zzajbVar2.zzb == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        long[] jArr112 = zzajbVar2.zzj;
        iArr4 = new int[length];
        iArr5 = new int[length];
        jArr112.getClass();
        jArr5 = jArr112;
        i11 = 0;
        z4 = false;
        i12 = 0;
        i13 = 0;
        while (true) {
            jArr6 = zzajbVar2.zzi;
            if (i13 < jArr6.length) {
                break;
                break;
            }
            long[] jArr113 = jArr2;
            j7 = jArr5[i13];
            if (j7 != -1) {
                long j22 = jArr6[i13];
                boolean z12 = z4;
                i19 = i12;
                iArr9 = iArr5;
                int i411 = i11;
                long jZzu9 = zzei.zzu(j22, zzajbVar2.zzc, zzajbVar2.zzd, RoundingMode.DOWN);
                iArr4[i13] = zzei.zzd(jArr, j7, true, true);
                while (true) {
                    i20 = iArr4[i13];
                    if (i20 < 0) {
                        break;
                    }
                    break;
                    break;
                    iArr4[i13] = i20 - 1;
                }
                j8 = j7 + jZzu9;
                iZza2 = zzei.zza(jArr, j8, z3, false);
                iArr9[i13] = iZza2;
                if (zzajbVar2.zzb == 2) {
                    while (true) {
                        iZza2 = iArr9[i13];
                        if (iZza2 < jArr.length - 1) {
                            break;
                            break;
                        }
                        i22 = iZza2 + 1;
                        if (jArr[i22] <= j8) {
                            break;
                            break;
                        }
                        iArr9[i13] = i22;
                    }
                }
                i21 = iArr4[i13];
                int i412 = i411 + (iZza2 - i21);
                if (i19 != i21) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                z4 = z12 | z9;
                i18 = iZza2;
                i11 = i412;
            } else {
                iArr9 = iArr5;
                i18 = i12;
            }
            i13++;
            i12 = i18;
            jArr2 = jArr113;
            iArr5 = iArr9;
        }
        iArr6 = iArr5;
        boolean z13 = z4;
        jArr7 = jArr2;
        if (i11 != iZzb) {
            z5 = true;
        } else {
            z5 = false;
        }
        z6 = z13 | z5;
        if (z6) {
            jArr8 = new long[i11];
        } else {
            jArr8 = jArr7;
        }
        if (z6) {
            iArr7 = new int[i11];
        } else {
            iArr7 = iArr;
        }
        if (true == z6) {
            i8 = 0;
        }
        if (z6) {
            iArr8 = new int[i11];
        } else {
            iArr8 = iArr3;
        }
        jArr9 = new long[i11];
        z7 = false;
        i14 = 0;
        i15 = 0;
        j5 = 0;
        while (i15 < zzajbVar2.zzi.length) {
            j6 = zzajbVar2.zzj[i15];
            i16 = iArr4[i15];
            i17 = iArr6[i15];
            if (z6) {
                int i413 = i17 - i16;
                jArr10 = jArr7;
                System.arraycopy(jArr10, i16, jArr8, i14, i413);
                System.arraycopy(iArr, i16, iArr7, i14, i413);
                System.arraycopy(iArr3, i16, iArr8, i14, i413);
            } else {
                jArr10 = jArr7;
            }
            int i414 = i8;
            while (i16 < i17) {
                int[] iArr15 = iArr8;
                int i415 = i17;
                long jZzu10 = zzei.zzu(j5, 1000000L, zzajbVar2.zzd, RoundingMode.DOWN);
                long[] jArr114 = jArr8;
                long[] jArr22 = jArr;
                jZzu2 = zzei.zzu(jArr[i16] - j6, 1000000L, zzajbVar2.zzc, RoundingMode.DOWN);
                if (jZzu2 < 0) {
                    z8 = false;
                } else {
                    z8 = true;
                }
                z7 = (!z8) | z7;
                jArr9[i14] = jZzu10 + jZzu2;
                if (!z6) {
                }
                i14++;
                i16++;
                i17 = i415;
                jArr8 = jArr114;
                iArr8 = iArr15;
                jArr = jArr22;
            }
            j5 += zzajbVar2.zzi[i15];
            i15++;
            jArr8 = jArr8;
            i8 = i414;
            iArr8 = iArr8;
            jArr7 = jArr10;
            iArr4 = iArr4;
        }
        long[] jArr23 = jArr8;
        int[] iArr16 = iArr8;
        long jZzu11 = zzei.zzu(j5, 1000000L, zzajbVar2.zzd, RoundingMode.DOWN);
        if (z7) {
            zzz zzzVarZzb3 = zzajbVar2.zzg.zzb();
            zzzVarZzb3.zzJ(true);
            zzajbVarZza = zzajbVar2.zza(zzzVarZzb3.zzag());
        } else {
            zzajbVarZza = zzajbVar2;
        }
        return new zzaje(zzajbVarZza, jArr23, iArr7, i8, jArr9, iArr16, jZzu11);
    }

    /* JADX WARN: Code duplicated, block: B:556:0x0c47  */
    /* JADX WARN: Code duplicated, block: B:557:0x0c4b  */
    /* JADX WARN: Code duplicated, block: B:560:0x0c81  */
    /* JADX WARN: Code duplicated, block: B:561:0x0cb4  */
    /* JADX WARN: Code duplicated, block: B:62:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x012e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0130  */
    /* JADX WARN: Code duplicated, block: B:66:0x0133  */
    /* JADX WARN: Code duplicated, block: B:68:0x0137  */
    /* JADX WARN: Code duplicated, block: B:70:0x013a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0148  */
    public static List zzf(zzen zzenVar, zzadb zzadbVar, long j, zzu zzuVar, boolean z, boolean z2, zzfuc zzfucVar) throws zzbc {
        int i;
        long jZzu;
        long jZzu2;
        int i2;
        int i3;
        long j2;
        ArrayList arrayList;
        int i4;
        zzen zzenVar2;
        long[] jArr;
        long[] jArr2;
        zzab zzabVar;
        zzajb zzajbVar;
        Pair pairCreate;
        long j3;
        zzu zzuVarZzb;
        int i5;
        String str;
        int i6;
        zzaif zzaifVar;
        int i7;
        int i8;
        zzaif zzaifVar2;
        String str2;
        int i9;
        boolean z3;
        String str3;
        String str4;
        boolean z4;
        String str5;
        boolean z5;
        boolean z6;
        int i10;
        String str6;
        boolean z7;
        boolean z8;
        boolean z9;
        String str7;
        long j4;
        zzfxn zzfxnVarZzo;
        zzajb zzajbVar2;
        ArrayList arrayList2;
        ArrayList arrayList3 = new ArrayList();
        int i11 = 0;
        while (i11 < zzenVar.zzc.size()) {
            zzen zzenVar3 = (zzen) zzenVar.zzc.get(i11);
            if (zzenVar3.zzd != 1953653099) {
                arrayList2 = arrayList3;
                i4 = i11;
            } else {
                zzeo zzeoVarZzb = zzenVar.zzb(1836476516);
                zzeoVarZzb.getClass();
                zzen zzenVarZza = zzenVar3.zza(1835297121);
                zzenVarZza.getClass();
                zzeo zzeoVarZzb2 = zzenVarZza.zzb(1751411826);
                zzeoVarZzb2.getClass();
                int iZzi = zzi(zzeoVarZzb2.zza);
                if (iZzi == 1936684398) {
                    i = 1;
                } else if (iZzi == 1986618469) {
                    i = 2;
                } else if (iZzi == 1952807028 || iZzi == 1935832172 || iZzi == 1937072756 || iZzi == 1668047728) {
                    i = 3;
                } else {
                    i = iZzi == 1835365473 ? 5 : -1;
                }
                if (i == -1) {
                    arrayList = arrayList3;
                    i4 = i11;
                    zzenVar2 = zzenVar3;
                } else {
                    zzeo zzeoVarZzb3 = zzenVar3.zzb(1953196132);
                    zzeoVarZzb3.getClass();
                    zzdy zzdyVar = zzeoVarZzb3.zza;
                    zzdyVar.zzL(8);
                    int iZza = zza(zzdyVar.zzg());
                    zzdyVar.zzM(iZza == 0 ? 8 : 16);
                    int iZzg = zzdyVar.zzg();
                    zzdyVar.zzM(4);
                    int iZzd = zzdyVar.zzd();
                    int i12 = 0;
                    while (true) {
                        int i13 = iZza == 0 ? 4 : 8;
                        jZzu = -9223372036854775807L;
                        if (i12 >= i13) {
                            zzdyVar.zzM(i13);
                        } else {
                            if (zzdyVar.zzN()[iZzd + i12] != -1) {
                                jZzu2 = iZza == 0 ? zzdyVar.zzu() : zzdyVar.zzw();
                                if (jZzu2 != 0) {
                                    break;
                                }
                                break;
                            }
                            i12++;
                        }
                        jZzu2 = -9223372036854775807L;
                        break;
                    }
                    zzdyVar.zzM(16);
                    int iZzg2 = zzdyVar.zzg();
                    int iZzg3 = zzdyVar.zzg();
                    zzdyVar.zzM(4);
                    int iZzg4 = zzdyVar.zzg();
                    int iZzg5 = zzdyVar.zzg();
                    int i14 = 65536;
                    if (iZzg2 != 0) {
                        if (iZzg2 == 0) {
                            if (iZzg3 == -65536) {
                                if (iZzg4 == 65536) {
                                    i14 = iZzg4;
                                } else if (iZzg5 == 0) {
                                    i3 = 270;
                                }
                                iZzg3 = SupportMenu.CATEGORY_MASK;
                            } else {
                                i14 = iZzg4;
                            }
                            i2 = 0;
                        } else {
                            i14 = iZzg4;
                            i2 = iZzg2;
                        }
                        if (i2 != -65536 && iZzg3 == 0 && i14 == 0 && iZzg5 == -65536) {
                            i3 = 180;
                        } else {
                            i3 = 0;
                        }
                    } else {
                        if (iZzg3 == 65536) {
                            if (iZzg4 != -65536) {
                                iZzg3 = 65536;
                            } else if (iZzg5 == 0) {
                                i3 = 90;
                            } else {
                                iZzg3 = 65536;
                                iZzg4 = SupportMenu.CATEGORY_MASK;
                            }
                        }
                        iZzg2 = 0;
                        if (iZzg2 == 0) {
                            if (iZzg3 == -65536) {
                                if (iZzg4 == 65536) {
                                    i14 = iZzg4;
                                } else if (iZzg5 == 0) {
                                    i3 = 270;
                                }
                                iZzg3 = SupportMenu.CATEGORY_MASK;
                            } else {
                                i14 = iZzg4;
                            }
                            i2 = 0;
                        } else {
                            i14 = iZzg4;
                            i2 = iZzg2;
                        }
                        if (i2 != -65536) {
                            i3 = 0;
                        } else {
                            i3 = 0;
                        }
                    }
                    zzaii zzaiiVar = new zzaii(iZzg, jZzu2, i3);
                    long j5 = j == -9223372036854775807L ? zzaiiVar.zzb : j;
                    long j6 = zzd(zzeoVarZzb.zza).zzc;
                    long jZzu3 = j5 == -9223372036854775807L ? -9223372036854775807L : zzei.zzu(j5, 1000000L, j6, RoundingMode.DOWN);
                    zzen zzenVarZza2 = zzenVarZza.zza(1835626086);
                    zzenVarZza2.getClass();
                    zzen zzenVarZza3 = zzenVarZza2.zza(1937007212);
                    zzenVarZza3.getClass();
                    zzeo zzeoVarZzb4 = zzenVarZza.zzb(1835296868);
                    zzeoVarZzb4.getClass();
                    zzdy zzdyVar2 = zzeoVarZzb4.zza;
                    zzdyVar2.zzL(8);
                    int iZza2 = zza(zzdyVar2.zzg());
                    zzdyVar2.zzM(iZza2 == 0 ? 8 : 16);
                    long jZzu4 = zzdyVar2.zzu();
                    int iZzd2 = zzdyVar2.zzd();
                    int i15 = 0;
                    while (true) {
                        int i16 = iZza2 == 0 ? 4 : 8;
                        if (i15 >= i16) {
                            j2 = j6;
                            zzdyVar2.zzM(i16);
                            break;
                        }
                        j2 = j6;
                        if (zzdyVar2.zzN()[iZzd2 + i15] != -1) {
                            long jZzu5 = iZza2 == 0 ? zzdyVar2.zzu() : zzdyVar2.zzw();
                            if (jZzu5 == 0) {
                                break;
                            }
                            jZzu = zzei.zzu(jZzu5, 1000000L, jZzu4, RoundingMode.DOWN);
                            break;
                        }
                        i15++;
                        j6 = j2;
                    }
                    int iZzq = zzdyVar2.zzq();
                    StringBuilder sb = new StringBuilder();
                    sb.append((char) (((iZzq >> 10) & 31) + 96));
                    sb.append((char) (((iZzq >> 5) & 31) + 96));
                    sb.append((char) ((iZzq & 31) + 96));
                    zzaic zzaicVar = new zzaic(jZzu4, jZzu, sb.toString());
                    zzeo zzeoVarZzb5 = zzenVarZza3.zzb(1937011556);
                    if (zzeoVarZzb5 == null) {
                        throw zzbc.zza("Malformed sample table (stbl) missing sample description (stsd)", null);
                    }
                    int i17 = zzaiiVar.zza;
                    int i18 = zzaiiVar.zzc;
                    String str8 = zzaicVar.zzc;
                    zzdy zzdyVar3 = zzeoVarZzb5.zza;
                    zzdyVar3.zzL(12);
                    int iZzg6 = zzdyVar3.zzg();
                    zzaif zzaifVar3 = new zzaif(iZzg6);
                    int i19 = 0;
                    while (i19 < iZzg6) {
                        int i20 = i11;
                        int iZzd3 = zzdyVar3.zzd();
                        ArrayList arrayList4 = arrayList3;
                        int iZzg7 = zzdyVar3.zzg();
                        String str9 = "childAtomSize must be positive";
                        zzacr.zzb(iZzg7 > 0, "childAtomSize must be positive");
                        int iZzg8 = zzdyVar3.zzg();
                        int i21 = i19;
                        int i22 = iZzg6;
                        if (iZzg8 == 1635148593 || iZzg8 == 1635148595 || iZzg8 == 1701733238 || iZzg8 == 1831958048 || iZzg8 == 1836070006 || iZzg8 == 1752589105 || iZzg8 == 1751479857 || iZzg8 == 1932670515 || iZzg8 == 1211250227 || iZzg8 == 1748121139 || iZzg8 == 1987063864 || iZzg8 == 1987063865 || iZzg8 == 1635135537 || iZzg8 == 1685479798 || iZzg8 == 1685479729 || iZzg8 == 1685481573 || iZzg8 == 1685481521) {
                            zzaicVar = zzaicVar;
                            zzaif zzaifVar4 = zzaifVar3;
                            zzdyVar3 = zzdyVar3;
                            i = i;
                            str8 = str8;
                            int i23 = i18;
                            int i24 = i17;
                            zzaiiVar = zzaiiVar;
                            j3 = j2;
                            zzdyVar3.zzL(iZzd3 + 16);
                            zzdyVar3.zzM(16);
                            int iZzq2 = zzdyVar3.zzq();
                            int iZzq3 = zzdyVar3.zzq();
                            zzdyVar3.zzM(50);
                            int iZzd4 = zzdyVar3.zzd();
                            if (iZzg8 == 1701733238) {
                                Pair pairZzj = zzj(zzdyVar3, iZzd3, iZzg7);
                                if (pairZzj != null) {
                                    int iIntValue = ((Integer) pairZzj.first).intValue();
                                    zzuVarZzb = zzuVar == null ? null : zzuVar.zzb(((zzajc) pairZzj.second).zzb);
                                    zzaifVar4.zza[i21] = (zzajc) pairZzj.second;
                                    iZzg8 = iIntValue;
                                } else {
                                    zzaifVar4 = zzaifVar4;
                                    zzuVarZzb = zzuVar;
                                    iZzg8 = 1701733238;
                                }
                                zzdyVar3.zzL(iZzd4);
                            } else {
                                zzaifVar4 = zzaifVar4;
                                zzuVarZzb = zzuVar;
                            }
                            if (iZzg8 == 1831958048) {
                                int i25 = iZzg8;
                                str = "video/mpeg";
                                i5 = i25;
                            } else {
                                i5 = 1211250227;
                                if (iZzg8 == 1211250227) {
                                    str = "video/3gpp";
                                } else {
                                    i5 = iZzg8;
                                    str = null;
                                }
                            }
                            int i26 = i5;
                            int i27 = iZzd4;
                            zzu zzuVar2 = zzuVarZzb;
                            zzenVar3 = zzenVar3;
                            int iZzb = -1;
                            int i28 = -1;
                            int i29 = 8;
                            zzfh zzfhVar = null;
                            int i30 = 8;
                            int i31 = -1;
                            int i32 = -1;
                            List listZzo = null;
                            ByteBuffer byteBufferZzn = null;
                            zzaia zzaiaVar = null;
                            boolean z10 = false;
                            byte[] bArrCopyOfRange = null;
                            int i33 = -1;
                            float fZzp = 1.0f;
                            String str10 = null;
                            while (i27 - iZzd3 < iZzg7) {
                                zzdyVar3.zzL(i27);
                                int iZzd5 = zzdyVar3.zzd();
                                int iZzg9 = zzdyVar3.zzg();
                                if (iZzg9 != 0) {
                                    i7 = iZzg9;
                                } else {
                                    if (zzdyVar3.zzd() - iZzd3 == iZzg7) {
                                        break;
                                    }
                                    i7 = 0;
                                }
                                zzacr.zzb(i7 > 0, str9);
                                int iZzg10 = zzdyVar3.zzg();
                                int i34 = iZzd3;
                                if (iZzg10 == 1635148611) {
                                    int i35 = iZzd5 + 8;
                                    zzacr.zzb(str == null, null);
                                    zzdyVar3.zzL(i35);
                                    zzabr zzabrVarZza = zzabr.zza(zzdyVar3);
                                    List list = zzabrVarZza.zza;
                                    zzaifVar4.zzc = zzabrVarZza.zzb;
                                    if (z10) {
                                        z9 = true;
                                    } else {
                                        fZzp = zzabrVarZza.zzk;
                                        z9 = false;
                                    }
                                    String str11 = zzabrVarZza.zzl;
                                    int i36 = zzabrVarZza.zzj;
                                    int i37 = zzabrVarZza.zzg;
                                    int i38 = zzabrVarZza.zzh;
                                    int i39 = zzabrVarZza.zzi;
                                    int i40 = zzabrVarZza.zze;
                                    int i41 = zzabrVarZza.zzf;
                                    z10 = z9;
                                    str10 = str11;
                                    i33 = i36;
                                    zzaifVar2 = zzaifVar4;
                                    str2 = str9;
                                    i8 = i38;
                                    i29 = i40;
                                    str = MimeTypes.VIDEO_H264;
                                    i9 = i26;
                                    listZzo = list;
                                    i31 = i37;
                                    i30 = i41;
                                    iZzb = i39;
                                } else if (iZzg10 == 1752589123) {
                                    int i42 = iZzd5 + 8;
                                    zzacr.zzb(str == null, null);
                                    zzdyVar3.zzL(i42);
                                    zzadc zzadcVarZza = zzadc.zza(zzdyVar3);
                                    List list2 = zzadcVarZza.zza;
                                    zzaifVar4.zzc = zzadcVarZza.zzb;
                                    if (z10) {
                                        z8 = true;
                                    } else {
                                        fZzp = zzadcVarZza.zzi;
                                        z8 = false;
                                    }
                                    int i43 = zzadcVarZza.zzj;
                                    String str12 = zzadcVarZza.zzk;
                                    int i44 = zzadcVarZza.zzh;
                                    if (i44 != -1) {
                                        i32 = i44;
                                    }
                                    int i45 = zzadcVarZza.zze;
                                    int i46 = zzadcVarZza.zzf;
                                    int i47 = zzadcVarZza.zzg;
                                    int i48 = zzadcVarZza.zzc;
                                    int i49 = zzadcVarZza.zzd;
                                    zzfh zzfhVar2 = zzadcVarZza.zzl;
                                    i33 = i43;
                                    str10 = str12;
                                    zzaifVar2 = zzaifVar4;
                                    i8 = i46;
                                    str2 = str9;
                                    i29 = i48;
                                    i30 = i49;
                                    str = MimeTypes.VIDEO_H265;
                                    i9 = i26;
                                    listZzo = list2;
                                    z10 = z8;
                                    zzfhVar = zzfhVar2;
                                    iZzb = i47;
                                    i31 = i45;
                                } else if (iZzg10 == 1818785347) {
                                    int i50 = iZzd5 + 8;
                                    zzacr.zzb(MimeTypes.VIDEO_H265.equals(str), "lhvC must follow hvcC atom");
                                    if (zzfhVar != null) {
                                        z7 = zzfhVar.zza.size() >= 2;
                                    } else {
                                        z7 = false;
                                        zzfhVar = null;
                                    }
                                    zzacr.zzb(z7, "must have at least two layers");
                                    zzdyVar3.zzL(i50);
                                    zzfhVar.getClass();
                                    zzadc zzadcVarZzb = zzadc.zzb(zzdyVar3, zzfhVar);
                                    zzacr.zzb(zzaifVar4.zzc == zzadcVarZzb.zzb, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                                    int i51 = zzadcVarZzb.zze;
                                    if (i51 != -1) {
                                        zzacr.zzb(i31 == i51, "colorSpace must be the same for both views");
                                    }
                                    int i52 = zzadcVarZzb.zzf;
                                    if (i52 != -1) {
                                        zzacr.zzb(i28 == i52, "colorRange must be the same for both views");
                                    }
                                    int i53 = zzadcVarZzb.zzg;
                                    if (i53 != -1) {
                                        zzacr.zzb(iZzb == i53, "colorTransfer must be the same for both views");
                                    }
                                    zzacr.zzb(i29 == zzadcVarZzb.zzc, "bitdepthLuma must be the same for both views");
                                    zzacr.zzb(i30 == zzadcVarZzb.zzd, "bitdepthChroma must be the same for both views");
                                    if (listZzo != null) {
                                        zzfxk zzfxkVar = new zzfxk();
                                        zzfxkVar.zzh(listZzo);
                                        zzfxkVar.zzh(zzadcVarZzb.zza);
                                        listZzo = zzfxkVar.zzi();
                                    } else {
                                        zzacr.zzb(false, "initializationData must be already set from hvcC atom");
                                    }
                                    str = "video/mv-hevc";
                                    i8 = i28;
                                    str10 = zzadcVarZzb.zzk;
                                    zzaifVar2 = zzaifVar4;
                                    str2 = str9;
                                    i9 = i26;
                                } else if (iZzg10 == 1986361461) {
                                    zzdyVar3.zzL(iZzd5 + 8);
                                    zzaifVar2 = zzaifVar4;
                                    int iZzd6 = zzdyVar3.zzd();
                                    zzaib zzaibVar = null;
                                    while (iZzd6 - iZzd5 < i7) {
                                        zzdyVar3.zzL(iZzd6);
                                        int iZzg11 = zzdyVar3.zzg();
                                        zzacr.zzb(iZzg11 > 0, str9);
                                        int i54 = i29;
                                        if (zzdyVar3.zzg() == 1702454643) {
                                            zzdyVar3.zzL(iZzd6 + 8);
                                            int iZzd7 = zzdyVar3.zzd();
                                            while (true) {
                                                if (iZzd7 - iZzd6 >= iZzg11) {
                                                    str6 = str9;
                                                    zzaibVar = null;
                                                    break;
                                                }
                                                zzdyVar3.zzL(iZzd7);
                                                int iZzg12 = zzdyVar3.zzg();
                                                zzacr.zzb(iZzg12 > 0, str9);
                                                str6 = str9;
                                                if (zzdyVar3.zzg() == 1937011305) {
                                                    zzdyVar3.zzM(4);
                                                    int iZzm = zzdyVar3.zzm() & 15;
                                                    zzaibVar = new zzaib(new zzaie(1 == (iZzm & 1), (iZzm & 2) == 2, (iZzm & 8) == 8, (iZzm & 4) == 4));
                                                    break;
                                                }
                                                iZzd7 += iZzg12;
                                                str9 = str6;
                                            }
                                        } else {
                                            str6 = str9;
                                        }
                                        iZzd6 += iZzg11;
                                        i30 = i30;
                                        i29 = i54;
                                        str9 = str6;
                                        i28 = i28;
                                        listZzo = listZzo;
                                    }
                                    i8 = i28;
                                    i29 = i29;
                                    i30 = i30;
                                    str2 = str9;
                                    listZzo = listZzo;
                                    zzaij zzaijVar = zzaibVar == null ? null : new zzaij(zzaibVar);
                                    if (zzaijVar != null) {
                                        if (zzfhVar == null) {
                                            z6 = true;
                                            i10 = -1;
                                            zzfhVar = null;
                                        } else if (zzfhVar.zza.size() >= 2) {
                                            zzacr.zzb(zzaijVar.zzb(), "both eye views must be marked as available");
                                            zzacr.zzb(!zzaijVar.zza.zza.zzc, "for MV-HEVC, eye_views_reversed must be set to false");
                                        } else {
                                            z6 = true;
                                            i10 = -1;
                                        }
                                        if (i32 == i10) {
                                            boolean z11 = zzaijVar.zza.zza.zzc;
                                            i9 = i26;
                                            i30 = i30;
                                            i29 = i29;
                                            listZzo = listZzo;
                                            i32 = z6 != z11 ? 4 : 5;
                                        } else {
                                            i9 = i26;
                                            i30 = i30;
                                            i29 = i29;
                                            listZzo = listZzo;
                                        }
                                    }
                                    i9 = i26;
                                    zzfhVar = zzfhVar;
                                    zzfhVar = zzfhVar;
                                    i30 = i30;
                                    i29 = i29;
                                    listZzo = listZzo;
                                } else {
                                    i8 = i28;
                                    i29 = i29;
                                    zzaifVar2 = zzaifVar4;
                                    i30 = i30;
                                    str2 = str9;
                                    listZzo = listZzo;
                                    if (iZzg10 == 1685480259 || iZzg10 == 1685485123) {
                                        i9 = i26;
                                        zzfhVar = zzfhVar;
                                        zzacj zzacjVarZza = zzacj.zza(zzdyVar3);
                                        if (zzacjVarZza != null) {
                                            str10 = zzacjVarZza.zza;
                                            str = "video/dolby-vision";
                                        }
                                    } else if (iZzg10 == 1987076931) {
                                        if (str == null) {
                                            str5 = null;
                                            z5 = true;
                                        } else {
                                            str5 = null;
                                            z5 = false;
                                        }
                                        zzacr.zzb(z5, str5);
                                        zzdyVar3.zzL(iZzd5 + 12);
                                        byte bZzm = (byte) zzdyVar3.zzm();
                                        byte bZzm2 = (byte) zzdyVar3.zzm();
                                        int iZzm2 = zzdyVar3.zzm();
                                        int i55 = iZzm2 >> 4;
                                        int i56 = iZzm2 >> 1;
                                        int i57 = i26;
                                        String str13 = i57 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                        if (str13.equals("video/x-vnd.on2.vp9")) {
                                            int i58 = zzcy.zza;
                                            listZzo = zzfxn.zzo(new byte[]{1, 1, bZzm, 2, 1, bZzm2, 3, 1, (byte) i55, 4, 1, (byte) (i56 & 7)});
                                        }
                                        int i59 = iZzm2 & 1;
                                        int iZzm3 = zzdyVar3.zzm();
                                        int iZzm4 = zzdyVar3.zzm();
                                        int iZza3 = zzk.zza(iZzm3);
                                        int i60 = 1 != i59 ? 2 : 1;
                                        iZzb = zzk.zzb(iZzm4);
                                        i31 = iZza3;
                                        i29 = i55;
                                        i9 = i57;
                                        i8 = i60;
                                        listZzo = listZzo;
                                        i30 = i29;
                                        str = str13;
                                    } else {
                                        int i61 = i26;
                                        if (iZzg10 == 1635135811) {
                                            int i62 = i7 - 8;
                                            byte[] bArr = new byte[i62];
                                            zzdyVar3.zzH(bArr, 0, i62);
                                            zzfxn zzfxnVarZzo2 = zzfxn.zzo(bArr);
                                            zzdyVar3.zzL(iZzd5 + 8);
                                            zzk zzkVarZzk = zzk(zzdyVar3);
                                            int i63 = zzkVarZzk.zzf;
                                            int i64 = zzkVarZzk.zzg;
                                            int i65 = zzkVarZzk.zzb;
                                            int i66 = zzkVarZzk.zzc;
                                            listZzo = zzfxnVarZzo2;
                                            iZzb = zzkVarZzk.zzd;
                                            i29 = i63;
                                            i9 = i61;
                                            i8 = i66;
                                            str = MimeTypes.VIDEO_AV1;
                                            i30 = i64;
                                            i31 = i65;
                                        } else {
                                            if (iZzg10 == 1668050025) {
                                                if (byteBufferZzn == null) {
                                                    byteBufferZzn = zzn();
                                                }
                                                ByteBuffer byteBuffer = byteBufferZzn;
                                                byteBuffer.position(21);
                                                byteBuffer.putShort(zzdyVar3.zzE());
                                                byteBuffer.putShort(zzdyVar3.zzE());
                                                byteBufferZzn = byteBuffer;
                                                i9 = i61;
                                            } else {
                                                if (iZzg10 == 1835295606) {
                                                    if (byteBufferZzn == null) {
                                                        byteBufferZzn = zzn();
                                                    }
                                                    ByteBuffer byteBuffer2 = byteBufferZzn;
                                                    short sZzE = zzdyVar3.zzE();
                                                    short sZzE2 = zzdyVar3.zzE();
                                                    short sZzE3 = zzdyVar3.zzE();
                                                    short sZzE4 = zzdyVar3.zzE();
                                                    short sZzE5 = zzdyVar3.zzE();
                                                    short sZzE6 = zzdyVar3.zzE();
                                                    short sZzE7 = zzdyVar3.zzE();
                                                    zzfhVar = zzfhVar;
                                                    short sZzE8 = zzdyVar3.zzE();
                                                    long jZzu6 = zzdyVar3.zzu();
                                                    long jZzu7 = zzdyVar3.zzu();
                                                    i9 = i61;
                                                    byteBuffer2.position(1);
                                                    byteBuffer2.putShort(sZzE5);
                                                    byteBuffer2.putShort(sZzE6);
                                                    byteBuffer2.putShort(sZzE);
                                                    byteBuffer2.putShort(sZzE2);
                                                    byteBuffer2.putShort(sZzE3);
                                                    byteBuffer2.putShort(sZzE4);
                                                    byteBuffer2.putShort(sZzE7);
                                                    byteBuffer2.putShort(sZzE8);
                                                    byteBuffer2.putShort((short) (jZzu6 / WorkRequest.MIN_BACKOFF_MILLIS));
                                                    byteBuffer2.putShort((short) (jZzu7 / WorkRequest.MIN_BACKOFF_MILLIS));
                                                    byteBufferZzn = byteBuffer2;
                                                } else {
                                                    zzfhVar = zzfhVar;
                                                    i9 = i61;
                                                    if (iZzg10 == 1681012275) {
                                                        if (str == null) {
                                                            str4 = null;
                                                            z4 = true;
                                                        } else {
                                                            str4 = null;
                                                            z4 = false;
                                                        }
                                                        zzacr.zzb(z4, str4);
                                                        str3 = "video/3gpp";
                                                    } else if (iZzg10 == 1702061171) {
                                                        zzacr.zzb(str == null, null);
                                                        zzaia zzaiaVarZzm = zzm(zzdyVar3, iZzd5);
                                                        str3 = zzaiaVarZzm.zza;
                                                        byte[] bArr2 = zzaiaVarZzm.zzb;
                                                        if (bArr2 != null) {
                                                            zzaiaVar = zzaiaVarZzm;
                                                            listZzo = zzfxn.zzo(bArr2);
                                                            zzfhVar = zzfhVar;
                                                            i30 = i30;
                                                            i29 = i29;
                                                            str = str3;
                                                        } else {
                                                            zzaiaVar = zzaiaVarZzm;
                                                        }
                                                    } else if (iZzg10 == 1885434736) {
                                                        zzdyVar3.zzL(iZzd5 + 8);
                                                        fZzp = zzdyVar3.zzp() / zzdyVar3.zzp();
                                                        zzfhVar = zzfhVar;
                                                        i30 = i30;
                                                        i29 = i29;
                                                        listZzo = listZzo;
                                                        z10 = true;
                                                    } else if (iZzg10 == 1937126244) {
                                                        int i67 = iZzd5 + 8;
                                                        while (true) {
                                                            if (i67 - iZzd5 < i7) {
                                                                zzdyVar3.zzL(i67);
                                                                int iZzg13 = zzdyVar3.zzg() + i67;
                                                                if (zzdyVar3.zzg() == 1886547818) {
                                                                    bArrCopyOfRange = Arrays.copyOfRange(zzdyVar3.zzN(), i67, iZzg13);
                                                                } else {
                                                                    i67 = iZzg13;
                                                                }
                                                            } else {
                                                                zzfhVar = zzfhVar;
                                                                i30 = i30;
                                                                i29 = i29;
                                                                listZzo = listZzo;
                                                                bArrCopyOfRange = null;
                                                            }
                                                        }
                                                    } else if (iZzg10 == 1936995172) {
                                                        int iZzm5 = zzdyVar3.zzm();
                                                        zzdyVar3.zzM(3);
                                                        if (iZzm5 == 0) {
                                                            int iZzm6 = zzdyVar3.zzm();
                                                            if (iZzm6 == 0) {
                                                                zzfhVar = zzfhVar;
                                                                i30 = i30;
                                                                i29 = i29;
                                                                listZzo = listZzo;
                                                                i32 = 0;
                                                            } else if (iZzm6 == 1) {
                                                                zzfhVar = zzfhVar;
                                                                i30 = i30;
                                                                i29 = i29;
                                                                listZzo = listZzo;
                                                                i32 = 1;
                                                            } else if (iZzm6 == 2) {
                                                                zzfhVar = zzfhVar;
                                                                i30 = i30;
                                                                i29 = i29;
                                                                listZzo = listZzo;
                                                                i32 = 2;
                                                            } else if (iZzm6 == 3) {
                                                                zzfhVar = zzfhVar;
                                                                i30 = i30;
                                                                i29 = i29;
                                                                listZzo = listZzo;
                                                                i32 = 3;
                                                            }
                                                        }
                                                    } else if (iZzg10 == 1668246642) {
                                                        if (i31 == -1) {
                                                            if (iZzb == -1) {
                                                                int iZzg14 = zzdyVar3.zzg();
                                                                if (iZzg14 == 1852009592 || iZzg14 == 1852009571) {
                                                                    int iZzq4 = zzdyVar3.zzq();
                                                                    int iZzq5 = zzdyVar3.zzq();
                                                                    zzdyVar3.zzM(2);
                                                                    if (i7 == 19) {
                                                                        z3 = (zzdyVar3.zzm() & 128) != 0;
                                                                        i7 = 19;
                                                                    } else {
                                                                        z3 = false;
                                                                    }
                                                                    int iZza4 = zzk.zza(iZzq4);
                                                                    int i68 = true != z3 ? 2 : 1;
                                                                    i31 = iZza4;
                                                                    iZzb = zzk.zzb(iZzq5);
                                                                    i8 = i68;
                                                                } else {
                                                                    zzdo.zzf("BoxParsers", "Unsupported color type: ".concat(zzeq.zze(iZzg14)));
                                                                    iZzb = -1;
                                                                }
                                                            }
                                                            i31 = -1;
                                                        }
                                                    }
                                                    str = str3;
                                                }
                                                zzfhVar = zzfhVar;
                                            }
                                            i30 = i30;
                                            i29 = i29;
                                            listZzo = listZzo;
                                        }
                                    }
                                    zzfhVar = zzfhVar;
                                    i30 = i30;
                                    i29 = i29;
                                    listZzo = listZzo;
                                }
                                i27 += i7;
                                iZzg7 = iZzg7;
                                iZzd3 = i34;
                                zzaifVar4 = zzaifVar2;
                                str9 = str2;
                                i28 = i8;
                                i26 = i9;
                            }
                            int i69 = i28;
                            int i70 = i29;
                            zzaif zzaifVar5 = zzaifVar4;
                            int i71 = i30;
                            iZzg7 = iZzg7;
                            iZzd3 = iZzd3;
                            List list3 = listZzo;
                            if (str == null) {
                                i18 = i23;
                                i6 = i24;
                                zzaifVar = zzaifVar5;
                            } else {
                                zzz zzzVar = new zzz();
                                i6 = i24;
                                zzzVar.zzL(i6);
                                zzzVar.zzaa(str);
                                zzzVar.zzA(str10);
                                zzzVar.zzaf(iZzq2);
                                zzzVar.zzK(iZzq3);
                                zzzVar.zzW(fZzp);
                                i18 = i23;
                                zzzVar.zzZ(i18);
                                zzzVar.zzX(bArrCopyOfRange);
                                zzzVar.zzad(i32);
                                zzzVar.zzN(list3);
                                zzzVar.zzS(i33);
                                zzzVar.zzF(zzuVar2);
                                zzi zziVar = new zzi();
                                zziVar.zzc(i31);
                                zziVar.zzb(i69);
                                zziVar.zzd(iZzb);
                                zziVar.zze(byteBufferZzn != null ? byteBufferZzn.array() : null);
                                zziVar.zzf(i70);
                                zziVar.zza(i71);
                                zzzVar.zzB(zziVar.zzg());
                                if (zzaiaVar != null) {
                                    zzzVar.zzy(zzgaq.zze(zzaiaVar.zzc));
                                    zzzVar.zzV(zzgaq.zze(zzaiaVar.zzd));
                                }
                                zzab zzabVarZzag = zzzVar.zzag();
                                zzaifVar = zzaifVar5;
                                zzaifVar.zzb = zzabVarZzag;
                            }
                        } else if (iZzg8 == 1836069985 || iZzg8 == 1701733217 || iZzg8 == 1633889587 || iZzg8 == 1700998451 || iZzg8 == 1633889588 || iZzg8 == 1835823201 || iZzg8 == 1685353315 || iZzg8 == 1685353317 || iZzg8 == 1685353320 || iZzg8 == 1685353324 || iZzg8 == 1685353336 || iZzg8 == 1935764850 || iZzg8 == 1935767394 || iZzg8 == 1819304813 || iZzg8 == 1936684916 || iZzg8 == 1953984371 || iZzg8 == 778924082 || iZzg8 == 778924083 || iZzg8 == 1835557169 || iZzg8 == 1835560241 || iZzg8 == 1634492771 || iZzg8 == 1634492791 || iZzg8 == 1970037111 || iZzg8 == 1332770163 || iZzg8 == 1716281667 || iZzg8 == 1767992678) {
                            int i72 = i17;
                            zzaif zzaifVar6 = zzaifVar3;
                            zzaicVar = zzaicVar;
                            zzdyVar3 = zzdyVar3;
                            i = i;
                            str8 = str8;
                            zzaiiVar = zzaiiVar;
                            j3 = j2;
                            zzo(zzdyVar3, iZzg8, iZzd3, iZzg7, i72, str8, z2, zzuVar, zzaifVar6, i21);
                            iZzg7 = iZzg7;
                            iZzd3 = iZzd3;
                            zzenVar3 = zzenVar3;
                            i18 = i18;
                            i6 = i72;
                            zzaifVar = zzaifVar6;
                        } else {
                            if (iZzg8 == 1414810956 || iZzg8 == 1954034535 || iZzg8 == 2004251764 || iZzg8 == 1937010800 || iZzg8 == 1664495672) {
                                zzdyVar3.zzL(iZzd3 + 16);
                                if (iZzg8 == 1414810956) {
                                    str7 = "application/ttml+xml";
                                } else {
                                    if (iZzg8 == 1954034535) {
                                        int i73 = iZzg7 - 16;
                                        byte[] bArr3 = new byte[i73];
                                        zzdyVar3.zzH(bArr3, 0, i73);
                                        j4 = Long.MAX_VALUE;
                                        zzfxnVarZzo = zzfxn.zzo(bArr3);
                                        str7 = "application/x-quicktime-tx3g";
                                    } else if (iZzg8 == 2004251764) {
                                        str7 = "application/x-mp4-vtt";
                                    } else if (iZzg8 == 1937010800) {
                                        str7 = "application/ttml+xml";
                                        j4 = 0;
                                        zzfxnVarZzo = null;
                                    } else {
                                        zzaifVar3.zzd = 1;
                                        str7 = "application/x-mp4-cea-608";
                                        j4 = Long.MAX_VALUE;
                                        zzfxnVarZzo = null;
                                    }
                                    zzz zzzVar2 = new zzz();
                                    zzzVar2.zzL(i17);
                                    zzzVar2.zzaa(str7);
                                    zzzVar2.zzQ(str8);
                                    zzzVar2.zzae(j4);
                                    zzzVar2.zzN(zzfxnVarZzo);
                                    zzaifVar3.zzb = zzzVar2.zzag();
                                    i6 = i17;
                                }
                                j4 = Long.MAX_VALUE;
                                zzfxnVarZzo = null;
                                zzz zzzVar3 = new zzz();
                                zzzVar3.zzL(i17);
                                zzzVar3.zzaa(str7);
                                zzzVar3.zzQ(str8);
                                zzzVar3.zzae(j4);
                                zzzVar3.zzN(zzfxnVarZzo);
                                zzaifVar3.zzb = zzzVar3.zzag();
                                i6 = i17;
                            } else {
                                if (iZzg8 == 1835365492) {
                                    zzdyVar3.zzL(iZzd3 + 16);
                                    zzdyVar3.zzy((char) 0);
                                    String strZzy = zzdyVar3.zzy((char) 0);
                                    if (strZzy != null) {
                                        zzz zzzVar4 = new zzz();
                                        zzzVar4.zzL(i17);
                                        zzzVar4.zzaa(strZzy);
                                        zzaifVar3.zzb = zzzVar4.zzag();
                                    }
                                } else if (iZzg8 == 1667329389) {
                                    zzz zzzVar5 = new zzz();
                                    zzzVar5.zzL(i17);
                                    zzzVar5.zzaa("application/x-camera-motion");
                                    zzaifVar3.zzb = zzzVar5.zzag();
                                }
                                i6 = i17;
                            }
                            j3 = j2;
                            zzaifVar = zzaifVar3;
                        }
                        zzdyVar3.zzL(iZzd3 + iZzg7);
                        i19 = i21 + 1;
                        zzuVar = zzuVar;
                        i18 = i18;
                        zzaifVar3 = zzaifVar;
                        i17 = i6;
                        str8 = str8;
                        iZzg6 = i22;
                        i11 = i20;
                        arrayList3 = arrayList4;
                        zzenVar3 = zzenVar3;
                        i = i;
                        zzaiiVar = zzaiiVar;
                        j2 = j3;
                        zzdyVar3 = zzdyVar3;
                        zzaicVar = zzaicVar;
                    }
                    zzaic zzaicVar2 = zzaicVar;
                    zzaif zzaifVar7 = zzaifVar3;
                    int i74 = i;
                    arrayList = arrayList3;
                    zzaii zzaiiVar2 = zzaiiVar;
                    i4 = i11;
                    zzen zzenVar4 = zzenVar3;
                    long j7 = j2;
                    if (z) {
                        zzenVar2 = zzenVar4;
                    } else {
                        zzenVar2 = zzenVar4;
                        zzen zzenVarZza4 = zzenVar2.zza(1701082227);
                        if (zzenVarZza4 != null) {
                            zzeo zzeoVarZzb6 = zzenVarZza4.zzb(1701606260);
                            if (zzeoVarZzb6 == null) {
                                pairCreate = null;
                            } else {
                                zzdy zzdyVar4 = zzeoVarZzb6.zza;
                                zzdyVar4.zzL(8);
                                int iZza5 = zza(zzdyVar4.zzg());
                                int iZzp = zzdyVar4.zzp();
                                long[] jArr3 = new long[iZzp];
                                long[] jArr4 = new long[iZzp];
                                for (int i75 = 0; i75 < iZzp; i75++) {
                                    jArr3[i75] = iZza5 == 1 ? zzdyVar4.zzw() : zzdyVar4.zzu();
                                    jArr4[i75] = iZza5 == 1 ? zzdyVar4.zzt() : zzdyVar4.zzg();
                                    if (zzdyVar4.zzE() != 1) {
                                        throw new IllegalArgumentException("Unsupported media rate.");
                                    }
                                    zzdyVar4.zzM(2);
                                }
                                pairCreate = Pair.create(jArr3, jArr4);
                            }
                            if (pairCreate != null) {
                                jArr2 = (long[]) pairCreate.first;
                                jArr = (long[]) pairCreate.second;
                            }
                        }
                        zzabVar = zzaifVar7.zzb;
                        if (zzabVar == null) {
                            zzajb zzajbVar3 = new zzajb(zzaiiVar2.zza, i74, zzaicVar2.zza, j7, jZzu3, zzaicVar2.zzb, zzabVar, zzaifVar7.zzd, zzaifVar7.zza, zzaifVar7.zzc, jArr2, jArr);
                            zzfucVar = zzfucVar;
                            zzajbVar = zzajbVar3;
                        }
                        zzajbVar2 = (zzajb) zzfucVar.apply(zzajbVar);
                        if (zzajbVar2 != null) {
                            zzen zzenVarZza5 = zzenVar2.zza(1835297121);
                            zzenVarZza5.getClass();
                            zzen zzenVarZza6 = zzenVarZza5.zza(1835626086);
                            zzenVarZza6.getClass();
                            zzen zzenVarZza7 = zzenVarZza6.zza(1937007212);
                            zzenVarZza7.getClass();
                            zzaje zzajeVarZze = zze(zzajbVar2, zzenVarZza7, zzadbVar);
                            arrayList2 = arrayList;
                            arrayList2.add(zzajeVarZze);
                        } else {
                            arrayList2 = arrayList;
                        }
                    }
                    jArr = null;
                    jArr2 = null;
                    zzabVar = zzaifVar7.zzb;
                    if (zzabVar == null) {
                        zzajb zzajbVar4 = new zzajb(zzaiiVar2.zza, i74, zzaicVar2.zza, j7, jZzu3, zzaicVar2.zzb, zzabVar, zzaifVar7.zzd, zzaifVar7.zza, zzaifVar7.zzc, jArr2, jArr);
                        zzfucVar = zzfucVar;
                        zzajbVar = zzajbVar4;
                    }
                    zzajbVar2 = (zzajb) zzfucVar.apply(zzajbVar);
                    if (zzajbVar2 != null) {
                        zzen zzenVarZza8 = zzenVar2.zza(1835297121);
                        zzenVarZza8.getClass();
                        zzen zzenVarZza9 = zzenVarZza8.zza(1835626086);
                        zzenVarZza9.getClass();
                        zzen zzenVarZza10 = zzenVarZza9.zza(1937007212);
                        zzenVarZza10.getClass();
                        zzaje zzajeVarZze2 = zze(zzajbVar2, zzenVarZza10, zzadbVar);
                        arrayList2 = arrayList;
                        arrayList2.add(zzajeVarZze2);
                    } else {
                        arrayList2 = arrayList;
                    }
                }
                zzajbVar = null;
                zzajbVar2 = (zzajb) zzfucVar.apply(zzajbVar);
                if (zzajbVar2 != null) {
                    zzen zzenVarZza11 = zzenVar2.zza(1835297121);
                    zzenVarZza11.getClass();
                    zzen zzenVarZza12 = zzenVarZza11.zza(1835626086);
                    zzenVarZza12.getClass();
                    zzen zzenVarZza13 = zzenVarZza12.zza(1937007212);
                    zzenVarZza13.getClass();
                    zzaje zzajeVarZze3 = zze(zzajbVar2, zzenVarZza13, zzadbVar);
                    arrayList2 = arrayList;
                    arrayList2.add(zzajeVarZze3);
                } else {
                    arrayList2 = arrayList;
                }
            }
            i11 = i4 + 1;
            arrayList3 = arrayList2;
        }
        return arrayList3;
    }

    public static void zzg(zzdy zzdyVar) {
        int iZzd = zzdyVar.zzd();
        zzdyVar.zzM(4);
        if (zzdyVar.zzg() != 1751411826) {
            iZzd += 4;
        }
        zzdyVar.zzL(iZzd);
    }

    private static int zzh(zzdy zzdyVar) {
        int iZzm = zzdyVar.zzm();
        int i = iZzm & WorkQueueKt.MASK;
        while ((iZzm & 128) == 128) {
            iZzm = zzdyVar.zzm();
            i = (i << 7) | (iZzm & WorkQueueKt.MASK);
        }
        return i;
    }

    private static int zzi(zzdy zzdyVar) {
        zzdyVar.zzL(16);
        return zzdyVar.zzg();
    }

    private static Pair zzj(zzdy zzdyVar, int i, int i2) throws zzbc {
        zzajc zzajcVar;
        Pair pairCreate;
        int i3;
        int i4;
        byte[] bArr;
        int iZzd = zzdyVar.zzd();
        while (iZzd - i < i2) {
            zzdyVar.zzL(iZzd);
            int iZzg = zzdyVar.zzg();
            zzacr.zzb(iZzg > 0, "childAtomSize must be positive");
            if (zzdyVar.zzg() == 1936289382) {
                int i5 = iZzd + 8;
                int i6 = -1;
                int i7 = 0;
                String strZzB = null;
                Integer numValueOf = null;
                while (i5 - iZzd < iZzg) {
                    zzdyVar.zzL(i5);
                    int iZzg2 = zzdyVar.zzg();
                    int iZzg3 = zzdyVar.zzg();
                    if (iZzg3 == 1718775137) {
                        numValueOf = Integer.valueOf(zzdyVar.zzg());
                    } else if (iZzg3 == 1935894637) {
                        zzdyVar.zzM(4);
                        strZzB = zzdyVar.zzB(4, StandardCharsets.UTF_8);
                    } else if (iZzg3 == 1935894633) {
                        i6 = i5;
                        i7 = iZzg2;
                    }
                    i5 += iZzg2;
                }
                if ("cenc".equals(strZzB) || "cbc1".equals(strZzB) || "cens".equals(strZzB) || "cbcs".equals(strZzB)) {
                    zzacr.zzb(numValueOf != null, "frma atom is mandatory");
                    zzacr.zzb(i6 != -1, "schi atom is mandatory");
                    int i8 = i6 + 8;
                    while (true) {
                        if (i8 - i6 >= i7) {
                            zzajcVar = null;
                            break;
                        }
                        zzdyVar.zzL(i8);
                        int iZzg4 = zzdyVar.zzg();
                        if (zzdyVar.zzg() == 1952804451) {
                            int iZza = zza(zzdyVar.zzg());
                            zzdyVar.zzM(1);
                            if (iZza == 0) {
                                zzdyVar.zzM(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int iZzm = zzdyVar.zzm();
                                int i9 = (iZzm & 240) >> 4;
                                i3 = iZzm & 15;
                                i4 = i9;
                            }
                            boolean z = zzdyVar.zzm() == 1;
                            int iZzm2 = zzdyVar.zzm();
                            byte[] bArr2 = new byte[16];
                            zzdyVar.zzH(bArr2, 0, 16);
                            if (z && iZzm2 == 0) {
                                int iZzm3 = zzdyVar.zzm();
                                byte[] bArr3 = new byte[iZzm3];
                                zzdyVar.zzH(bArr3, 0, iZzm3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            zzajcVar = new zzajc(z, strZzB, iZzm2, bArr2, i4, i3, bArr);
                            break;
                        }
                        i8 += iZzg4;
                    }
                    zzacr.zzb(zzajcVar != null, "tenc atom is mandatory");
                    int i10 = zzei.zza;
                    pairCreate = Pair.create(numValueOf, zzajcVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            iZzd += iZzg;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0049 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:12:0x004b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0154  */
    /* JADX WARN: Code duplicated, block: B:83:0x016e  */
    /* JADX WARN: Code duplicated, block: B:88:0x017d  */
    private static zzk zzk(zzdy zzdyVar) {
        int i;
        int iZzd;
        int iZzd2;
        zzi zziVar = new zzi();
        byte[] bArrZzN = zzdyVar.zzN();
        zzdx zzdxVar = new zzdx(bArrZzN, bArrZzN.length);
        zzdxVar.zzl(zzdyVar.zzd() * 8);
        zzdxVar.zzo(1);
        int iZzd3 = zzdxVar.zzd(3);
        zzdxVar.zzn(6);
        boolean zZzp = zzdxVar.zzp();
        boolean zZzp2 = zzdxVar.zzp();
        boolean z = false;
        if (iZzd3 != 2) {
            if (iZzd3 <= 2) {
                i = true != zZzp ? 8 : 10;
                zziVar.zzf(i);
                zziVar.zza(i);
            }
        } else if (zZzp) {
            i = true == zZzp2 ? 12 : 10;
            zziVar.zzf(i);
            zziVar.zza(i);
        } else {
            iZzd3 = 2;
            zZzp = false;
            if (iZzd3 <= 2) {
                if (true != zZzp) {
                }
                zziVar.zzf(i);
                zziVar.zza(i);
            }
        }
        int i2 = 13;
        zzdxVar.zzn(13);
        zzdxVar.zzm();
        int iZzd4 = zzdxVar.zzd(4);
        if (iZzd4 != 1) {
            zzdo.zze("BoxParsers", "Unsupported obu_type: " + iZzd4);
            return zziVar.zzg();
        }
        if (zzdxVar.zzp()) {
            zzdo.zze("BoxParsers", "Unsupported obu_extension_flag");
            return zziVar.zzg();
        }
        boolean zZzp3 = zzdxVar.zzp();
        zzdxVar.zzm();
        if (zZzp3 && zzdxVar.zzd(8) > 127) {
            zzdo.zze("BoxParsers", "Excessive obu_size");
            return zziVar.zzg();
        }
        int iZzd5 = zzdxVar.zzd(3);
        zzdxVar.zzm();
        if (zzdxVar.zzp()) {
            zzdo.zze("BoxParsers", "Unsupported reduced_still_picture_header");
            return zziVar.zzg();
        }
        if (zzdxVar.zzp()) {
            zzdo.zze("BoxParsers", "Unsupported timing_info_present_flag");
            return zziVar.zzg();
        }
        if (zzdxVar.zzp()) {
            zzdo.zze("BoxParsers", "Unsupported initial_display_delay_present_flag");
            return zziVar.zzg();
        }
        int iZzd6 = zzdxVar.zzd(5);
        for (int i3 = 0; i3 <= iZzd6; i3++) {
            zzdxVar.zzn(12);
            if (zzdxVar.zzd(5) > 7) {
                zzdxVar.zzm();
            }
        }
        int iZzd7 = zzdxVar.zzd(4);
        int iZzd8 = zzdxVar.zzd(4);
        zzdxVar.zzn(iZzd7 + 1);
        zzdxVar.zzn(iZzd8 + 1);
        if (zzdxVar.zzp()) {
            zzdxVar.zzn(7);
        }
        zzdxVar.zzn(7);
        boolean zZzp4 = zzdxVar.zzp();
        if (zZzp4) {
            zzdxVar.zzn(2);
        }
        if ((zzdxVar.zzp() || zzdxVar.zzd(1) > 0) && !zzdxVar.zzp()) {
            zzdxVar.zzn(1);
        }
        if (zZzp4) {
            zzdxVar.zzn(3);
        }
        zzdxVar.zzn(3);
        boolean zZzp5 = zzdxVar.zzp();
        if (iZzd5 != 2) {
            if (iZzd5 != 1) {
            }
            if (zzdxVar.zzp()) {
                int iZzd9 = zzdxVar.zzd(8);
                iZzd = zzdxVar.zzd(8);
                int iZzd10 = zzdxVar.zzd(8);
                if (z && iZzd9 == 1) {
                    if (iZzd == 13) {
                        if (iZzd10 == 0) {
                            iZzd2 = 1;
                            iZzd9 = 1;
                        }
                        zziVar.zzc(zzk.zza(iZzd9));
                        zziVar.zzb(iZzd2 != 1 ? 2 : 1);
                        zziVar.zzd(zzk.zzb(i2));
                    } else {
                        i2 = iZzd;
                    }
                    iZzd9 = 1;
                } else {
                    i2 = iZzd;
                }
                iZzd2 = zzdxVar.zzd(1);
                zziVar.zzc(zzk.zza(iZzd9));
                zziVar.zzb(iZzd2 != 1 ? 2 : 1);
                zziVar.zzd(zzk.zzb(i2));
            }
            return zziVar.zzg();
        }
        if (zZzp5) {
            zzdxVar.zzm();
        }
        if (zzdxVar.zzp()) {
            z = true;
        }
        if (zzdxVar.zzp()) {
            int iZzd11 = zzdxVar.zzd(8);
            iZzd = zzdxVar.zzd(8);
            int iZzd12 = zzdxVar.zzd(8);
            if (z) {
                i2 = iZzd;
                iZzd2 = zzdxVar.zzd(1);
            } else {
                i2 = iZzd;
                iZzd2 = zzdxVar.zzd(1);
            }
            zziVar.zzc(zzk.zza(iZzd11));
            zziVar.zzb(iZzd2 != 1 ? 2 : 1);
            zziVar.zzd(zzk.zzb(i2));
        }
        return zziVar.zzg();
    }

    private static zzay zzl(zzdy zzdyVar) {
        short sZzE = zzdyVar.zzE();
        zzdyVar.zzM(2);
        String strZzB = zzdyVar.zzB(sZzE, StandardCharsets.UTF_8);
        int iMax = Math.max(strZzB.lastIndexOf(43), strZzB.lastIndexOf(45));
        try {
            return new zzay(-9223372036854775807L, new zzet(Float.parseFloat(strZzB.substring(0, iMax)), Float.parseFloat(strZzB.substring(iMax, strZzB.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzaia zzm(zzdy zzdyVar, int i) {
        zzdyVar.zzL(i + 12);
        zzdyVar.zzM(1);
        zzh(zzdyVar);
        zzdyVar.zzM(2);
        int iZzm = zzdyVar.zzm();
        if ((iZzm & 128) != 0) {
            zzdyVar.zzM(2);
        }
        if ((iZzm & 64) != 0) {
            zzdyVar.zzM(zzdyVar.zzm());
        }
        if ((iZzm & 32) != 0) {
            zzdyVar.zzM(2);
        }
        zzdyVar.zzM(1);
        zzh(zzdyVar);
        String strZzd = zzbb.zzd(zzdyVar.zzm());
        if ("audio/mpeg".equals(strZzd) || "audio/vnd.dts".equals(strZzd) || "audio/vnd.dts.hd".equals(strZzd)) {
            return new zzaia(strZzd, null, -1L, -1L);
        }
        zzdyVar.zzM(4);
        long jZzu = zzdyVar.zzu();
        long jZzu2 = zzdyVar.zzu();
        zzdyVar.zzM(1);
        int iZzh = zzh(zzdyVar);
        byte[] bArr = new byte[iZzh];
        zzdyVar.zzH(bArr, 0, iZzh);
        return new zzaia(strZzd, bArr, jZzu2 <= 0 ? -1L : jZzu2, jZzu > 0 ? jZzu : -1L);
    }

    private static ByteBuffer zzn() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Code duplicated, block: B:132:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:134:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:135:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:138:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:140:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:141:0x020d  */
    /* JADX WARN: Code duplicated, block: B:144:0x022a  */
    /* JADX WARN: Code duplicated, block: B:145:0x022f  */
    /* JADX WARN: Code duplicated, block: B:147:0x023e  */
    /* JADX WARN: Code duplicated, block: B:149:0x0245  */
    /* JADX WARN: Code duplicated, block: B:151:0x0250  */
    /* JADX WARN: Code duplicated, block: B:153:0x0258  */
    /* JADX WARN: Code duplicated, block: B:154:0x025d  */
    /* JADX WARN: Code duplicated, block: B:159:0x027d  */
    /* JADX WARN: Code duplicated, block: B:161:0x0282  */
    /* JADX WARN: Code duplicated, block: B:183:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:184:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:186:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:187:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:189:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:191:0x031f  */
    /* JADX WARN: Code duplicated, block: B:192:0x0323  */
    /* JADX WARN: Code duplicated, block: B:194:0x0337  */
    /* JADX WARN: Code duplicated, block: B:196:0x033c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:197:0x033e  */
    /* JADX WARN: Code duplicated, block: B:200:0x0358  */
    /* JADX WARN: Code duplicated, block: B:220:0x042e  */
    /* JADX WARN: Code duplicated, block: B:221:0x0457  */
    /* JADX WARN: Code duplicated, block: B:223:0x0462  */
    /* JADX WARN: Code duplicated, block: B:225:0x0470  */
    /* JADX WARN: Code duplicated, block: B:227:0x0478  */
    /* JADX WARN: Code duplicated, block: B:236:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:238:0x04ae A[LOOP:3: B:234:0x04a0->B:238:0x04ae, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:241:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:243:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:244:0x04ef  */
    /* JADX WARN: Code duplicated, block: B:246:0x04f5 A[PHI: r1 r3 r22
  0x04f5: PHI (r1v55 java.lang.String) = (r1v49 java.lang.String), (r1v56 java.lang.String), (r1v49 java.lang.String), (r1v49 java.lang.String) binds: [B:222:0x0460, B:224:0x046e, B:220:0x042e, B:219:0x042a] A[DONT_GENERATE, DONT_INLINE]
  0x04f5: PHI (r3v5 int) = (r3v6 int), (r3v6 int), (r3v12 int), (r3v14 int) binds: [B:222:0x0460, B:224:0x046e, B:220:0x042e, B:219:0x042a] A[DONT_GENERATE, DONT_INLINE]
  0x04f5: PHI (r22v2 com.google.android.gms.internal.ads.zzaia) = 
  (r22v1 com.google.android.gms.internal.ads.zzaia)
  (r22v3 com.google.android.gms.internal.ads.zzaia)
  (r22v1 com.google.android.gms.internal.ads.zzaia)
  (r22v1 com.google.android.gms.internal.ads.zzaia)
 binds: [B:222:0x0460, B:224:0x046e, B:220:0x042e, B:219:0x042a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:258:0x0344 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x04b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x04b9 A[EDGE_INSN: B:268:0x04b9->B:240:0x04b9 BREAK  A[LOOP:3: B:234:0x04a0->B:238:0x04ae], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0080  */
    /* JADX WARN: Code duplicated, block: B:84:0x013b  */
    private static void zzo(zzdy zzdyVar, int i, int i2, int i3, int i4, String str, boolean z, zzu zzuVar, zzaif zzaifVar, int i5) throws zzbc {
        int iZzq;
        int iZzq2;
        int iZzn;
        int iZzg;
        int i6;
        String str2;
        int i7;
        List listZzo;
        zzaia zzaiaVarZzm;
        String str3;
        int iZzg2;
        boolean z2;
        int iZzg3;
        int iZzd;
        int i8;
        int i9;
        byte[] bArr;
        zzdy zzdyVar2;
        int i10;
        int i11;
        int iZzm;
        int i12;
        String str4;
        boolean z3;
        int iZzm2;
        byte[] bArr2;
        int iZzm3;
        int i13;
        String str5;
        byte[] bArr3;
        zzdy zzdyVar3 = zzdyVar;
        int i14 = i2;
        int i15 = i3;
        zzu zzuVarZzb = zzuVar;
        zzdyVar3.zzL(i14 + 16);
        if (z) {
            iZzq = zzdyVar.zzq();
            zzdyVar3.zzM(6);
        } else {
            zzdyVar3.zzM(8);
            iZzq = 0;
        }
        if (iZzq == 0 || iZzq == 1) {
            iZzq2 = zzdyVar.zzq();
            zzdyVar3.zzM(6);
            iZzn = zzdyVar.zzn();
            zzdyVar3.zzL(zzdyVar.zzd() - 4);
            iZzg = zzdyVar.zzg();
            if (iZzq == 1) {
                zzdyVar3.zzM(16);
            }
            i6 = -1;
        } else {
            if (iZzq != 2) {
                return;
            }
            zzdyVar3.zzM(16);
            iZzn = (int) Math.round(Double.longBitsToDouble(zzdyVar.zzt()));
            int iZzp = zzdyVar.zzp();
            zzdyVar3.zzM(4);
            int iZzp2 = zzdyVar.zzp();
            int iZzp3 = zzdyVar.zzp();
            int i16 = iZzp3 & 1;
            int i17 = iZzp3 & 2;
            if (i16 == 0) {
                if (iZzp2 == 8) {
                    i6 = 3;
                } else if (iZzp2 == 16) {
                    i6 = i17 != 0 ? DriveFile.MODE_READ_ONLY : 2;
                } else if (iZzp2 == 24) {
                    i6 = i17 != 0 ? 1342177280 : 21;
                } else if (iZzp2 == 32) {
                    i6 = i17 != 0 ? 1610612736 : 22;
                } else {
                    i6 = -1;
                }
            } else if (iZzp2 == 32) {
                i6 = 4;
            } else {
                i6 = -1;
            }
            zzdyVar3.zzM(8);
            iZzq2 = iZzp;
            iZzg = 0;
        }
        if (i == 1767992678) {
            iZzn = -1;
        }
        if (i == 1767992678) {
            iZzq2 = -1;
        }
        int iZzd2 = zzdyVar.zzd();
        int iIntValue = 1701733217;
        if (i == 1701733217) {
            Pair pairZzj = zzj(zzdyVar3, i14, i15);
            if (pairZzj != null) {
                iIntValue = ((Integer) pairZzj.first).intValue();
                zzuVarZzb = zzuVarZzb == null ? null : zzuVarZzb.zzb(((zzajc) pairZzj.second).zzb);
                zzaifVar.zza[i5] = (zzajc) pairZzj.second;
            }
            zzdyVar3.zzL(iZzd2);
        } else {
            iIntValue = i;
        }
        String str6 = "audio/mhm1";
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else {
            if (iIntValue != 1700998451) {
                if (iIntValue == 1633889588) {
                    i7 = i6;
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
                } else if (iIntValue == 1935767394) {
                    str2 = "audio/amr-wb";
                } else if (iIntValue == 1936684916) {
                    str2 = "audio/raw";
                    i7 = 2;
                } else if (iIntValue == 1953984371) {
                    str2 = "audio/raw";
                    i7 = DriveFile.MODE_READ_ONLY;
                } else if (iIntValue == 1819304813) {
                    if (i6 == -1) {
                        str2 = "audio/raw";
                        i7 = 2;
                    } else {
                        i7 = i6;
                        str2 = "audio/raw";
                    }
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    i7 = i6;
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
                } else if (iIntValue == 1835823201) {
                    str2 = "audio/true-hd";
                } else if (iIntValue == 1767992678) {
                    str2 = "audio/iamf";
                } else {
                    i7 = i6;
                    str2 = null;
                }
                int i18 = i7;
                listZzo = null;
                zzaiaVarZzm = null;
                str3 = null;
                while (iZzd2 - i14 < i15) {
                    zzdyVar3.zzL(iZzd2);
                    iZzg2 = zzdyVar.zzg();
                    if (iZzg2 > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    String str7 = "childAtomSize must be positive";
                    zzacr.zzb(z2, "childAtomSize must be positive");
                    iZzg3 = zzdyVar.zzg();
                    iZzn = iZzn;
                    if (iZzg3 == 1835557187) {
                        zzdyVar3.zzL(iZzd2 + 8);
                        zzdyVar3.zzM(1);
                        iZzm3 = zzdyVar.zzm();
                        zzdyVar3.zzM(1);
                        if (Objects.equals(str2, str6)) {
                            i13 = 0;
                            str5 = String.format("mhm1.%02X", Integer.valueOf(iZzm3));
                        } else {
                            i13 = 0;
                            str5 = String.format("mha1.%02X", Integer.valueOf(iZzm3));
                        }
                        int iZzq3 = zzdyVar.zzq();
                        bArr3 = new byte[iZzq3];
                        zzdyVar3.zzH(bArr3, i13, iZzq3);
                        if (listZzo == null) {
                            listZzo = zzfxn.zzo(bArr3);
                        } else {
                            listZzo = zzfxn.zzp(bArr3, (byte[]) listZzo.get(i13));
                        }
                        str3 = str5;
                    } else {
                        str6 = str6;
                        if (iZzg3 == 1835557200) {
                            zzdyVar3.zzL(iZzd2 + 8);
                            iZzm2 = zzdyVar.zzm();
                            if (iZzm2 > 0) {
                                bArr2 = new byte[iZzm2];
                                zzdyVar3.zzH(bArr2, 0, iZzm2);
                                if (listZzo == null) {
                                    listZzo = zzfxn.zzo(bArr2);
                                } else {
                                    listZzo = zzfxn.zzp((byte[]) listZzo.get(0), bArr2);
                                }
                            }
                            iZzn = iZzn;
                            i9 = iZzg;
                            iZzn = iZzn;
                        } else {
                            if (iZzg3 == 1702061171) {
                                iZzn = iZzn;
                                iZzd = iZzd2;
                                i8 = -1;
                            } else if (z || iZzg3 != 2002876005) {
                                if (iZzg3 == 1684103987) {
                                    zzdyVar3.zzL(iZzd2 + 8);
                                    zzaifVar.zzb = zzabn.zzc(zzdyVar3, Integer.toString(i4), str, zzuVarZzb);
                                } else if (iZzg3 == 1684366131) {
                                    zzdyVar3.zzL(iZzd2 + 8);
                                    zzaifVar.zzb = zzabn.zzd(zzdyVar3, Integer.toString(i4), str, zzuVarZzb);
                                } else if (iZzg3 == 1684103988) {
                                    zzdyVar3.zzL(iZzd2 + 8);
                                    String string = Integer.toString(i4);
                                    int i19 = zzabq.zza;
                                    zzdyVar3.zzM(1);
                                    iZzm = zzdyVar.zzm() & 32;
                                    zzz zzzVar = new zzz();
                                    zzzVar.zzM(string);
                                    zzzVar.zzaa("audio/ac4");
                                    zzzVar.zzz(2);
                                    if (1 != (iZzm >> 5)) {
                                        i12 = 44100;
                                    } else {
                                        i12 = 48000;
                                    }
                                    zzzVar.zzab(i12);
                                    zzzVar.zzF(zzuVarZzb);
                                    zzzVar.zzQ(str);
                                    zzaifVar.zzb = zzzVar.zzag();
                                } else if (iZzg3 != 1684892784) {
                                    if (iZzg3 != 1684305011 || iZzg3 == 1969517683) {
                                        zzz zzzVar2 = new zzz();
                                        zzzVar2.zzL(i4);
                                        zzzVar2.zzaa(str2);
                                        zzzVar2.zzz(iZzq2);
                                        iZzn = iZzn;
                                        zzzVar2.zzab(iZzn);
                                        zzzVar2.zzF(zzuVarZzb);
                                        zzzVar2.zzQ(str);
                                        zzaifVar.zzb = zzzVar2.zzag();
                                    } else if (iZzg3 == 1682927731) {
                                        int i20 = iZzg2 - 8;
                                        byte[] bArr4 = zzb;
                                        byte[] bArrCopyOf = Arrays.copyOf(bArr4, bArr4.length + i20);
                                        zzdyVar3.zzL(iZzd2 + 8);
                                        zzdyVar3.zzH(bArrCopyOf, bArr4.length, i20);
                                        listZzo = zzadi.zze(bArrCopyOf);
                                    } else {
                                        if (iZzg3 == 1684425825) {
                                            int i21 = iZzg2 - 12;
                                            byte[] bArr5 = new byte[i21 + 4];
                                            bArr5[0] = 102;
                                            bArr5[1] = 76;
                                            bArr5[2] = 97;
                                            bArr5[3] = 67;
                                            zzdyVar3.zzL(iZzd2 + 12);
                                            zzdyVar3.zzH(bArr5, 4, i21);
                                            listZzo = zzfxn.zzo(bArr5);
                                        } else {
                                            if (iZzg3 == 1634492771) {
                                                int i22 = iZzg2 - 12;
                                                byte[] bArr6 = new byte[i22];
                                                zzdyVar3.zzL(iZzd2 + 12);
                                                zzdyVar3.zzH(bArr6, 0, i22);
                                                int i23 = zzcy.zza;
                                                zzdy zzdyVar4 = new zzdy(bArr6);
                                                zzdyVar4.zzL(9);
                                                int iZzm4 = zzdyVar4.zzm();
                                                zzdyVar4.zzL(20);
                                                Pair pairCreate = Pair.create(Integer.valueOf(zzdyVar4.zzp()), Integer.valueOf(iZzm4));
                                                int iIntValue2 = ((Integer) pairCreate.first).intValue();
                                                int iIntValue3 = ((Integer) pairCreate.second).intValue();
                                                listZzo = zzfxn.zzo(bArr6);
                                                iZzq2 = iIntValue3;
                                                iZzn = iIntValue2;
                                            } else if (iZzg3 == 1767990114) {
                                                zzdyVar3.zzL(iZzd2 + 9);
                                                int iZzb = zzgaq.zzb(zzdyVar.zzv());
                                                byte[] bArr7 = new byte[iZzb];
                                                zzdyVar3.zzH(bArr7, 0, iZzb);
                                                listZzo = zzfxn.zzo(bArr7);
                                            } else {
                                                iZzn = iZzn;
                                            }
                                            i9 = iZzg;
                                        }
                                        iZzn = iZzn;
                                        i9 = iZzg;
                                    }
                                    i9 = iZzg;
                                    iZzn = iZzn;
                                } else {
                                    if (iZzg > 0) {
                                        throw zzbc.zza("Invalid sample rate for Dolby TrueHD MLP stream: " + iZzg, null);
                                    }
                                    iZzn = iZzg;
                                    i9 = iZzn;
                                    iZzq2 = 2;
                                }
                                iZzn = iZzn;
                                i9 = iZzg;
                                iZzn = iZzn;
                            } else {
                                iZzd = zzdyVar.zzd();
                                if (iZzd >= iZzd2) {
                                    str4 = null;
                                    z3 = true;
                                } else {
                                    str4 = null;
                                    z3 = false;
                                }
                                zzacr.zzb(z3, str4);
                                while (true) {
                                    if (iZzd - iZzd2 >= iZzg2) {
                                        iZzd = -1;
                                        break;
                                    }
                                    zzdyVar3.zzL(iZzd);
                                    int iZzg4 = zzdyVar.zzg();
                                    zzacr.zzb(iZzg4 > 0, str7);
                                    String str8 = str7;
                                    if (zzdyVar.zzg() == 1702061171) {
                                        break;
                                    }
                                    iZzd += iZzg4;
                                    str7 = str8;
                                }
                                i8 = -1;
                            }
                            if (iZzd != i8) {
                                zzaiaVarZzm = zzm(zzdyVar3, iZzd);
                                str2 = zzaiaVarZzm.zza;
                                bArr = zzaiaVarZzm.zzb;
                                if (bArr != null) {
                                    i9 = iZzg;
                                } else if ("audio/vorbis".equals(str2)) {
                                    zzdyVar2 = new zzdy(bArr);
                                    zzdyVar2.zzM(1);
                                    i10 = 0;
                                    while (zzdyVar2.zzb() > 0 && zzdyVar2.zzf() == 255) {
                                        zzdyVar2.zzM(1);
                                        i10 += 255;
                                    }
                                    int iZzm5 = i10 + zzdyVar2.zzm();
                                    i11 = 0;
                                    while (true) {
                                        if (zzdyVar2.zzb() > 0) {
                                            i9 = iZzg;
                                            break;
                                        }
                                        i9 = iZzg;
                                        if (zzdyVar2.zzf() == 255) {
                                            break;
                                        }
                                        zzdyVar2.zzM(1);
                                        i11 += 255;
                                        iZzg = i9;
                                    }
                                    int iZzm6 = i11 + zzdyVar2.zzm();
                                    byte[] bArr8 = new byte[iZzm5];
                                    int iZzd3 = zzdyVar2.zzd();
                                    System.arraycopy(bArr, iZzd3, bArr8, 0, iZzm5);
                                    int i24 = iZzd3 + iZzm5 + iZzm6;
                                    int length = bArr.length - i24;
                                    byte[] bArr9 = new byte[length];
                                    System.arraycopy(bArr, i24, bArr9, 0, length);
                                    listZzo = zzfxn.zzp(bArr8, bArr9);
                                } else {
                                    i9 = iZzg;
                                    if ("audio/mp4a-latm".equals(str2)) {
                                        zzabi zzabiVarZza = zzabk.zza(bArr);
                                        iZzn = zzabiVarZza.zza;
                                        iZzq2 = zzabiVarZza.zzb;
                                        str3 = zzabiVarZza.zzc;
                                    } else {
                                        iZzn = iZzn;
                                    }
                                    listZzo = zzfxn.zzo(bArr);
                                }
                                iZzn = iZzn;
                            } else {
                                i9 = iZzg;
                                iZzn = iZzn;
                            }
                        }
                        iZzd2 += iZzg2;
                        zzdyVar3 = zzdyVar;
                        i14 = i2;
                        i15 = i3;
                        str6 = str6;
                        iZzg = i9;
                    }
                    i9 = iZzg;
                    iZzd2 += iZzg2;
                    zzdyVar3 = zzdyVar;
                    i14 = i2;
                    i15 = i3;
                    str6 = str6;
                    iZzg = i9;
                }
                int i25 = iZzn;
                if (zzaifVar.zzb == null || str2 == null) {
                }
                zzz zzzVar3 = new zzz();
                zzzVar3.zzL(i4);
                zzzVar3.zzaa(str2);
                zzzVar3.zzA(str3);
                zzzVar3.zzz(iZzq2);
                zzzVar3.zzab(i25);
                zzzVar3.zzU(i18);
                zzzVar3.zzN(listZzo);
                zzzVar3.zzF(zzuVarZzb);
                zzzVar3.zzQ(str);
                if (zzaiaVarZzm != null) {
                    zzzVar3.zzy(zzgaq.zze(zzaiaVarZzm.zzc));
                    zzzVar3.zzV(zzgaq.zze(zzaiaVarZzm.zzd));
                }
                zzaifVar.zzb = zzzVar3.zzag();
                return;
            }
            str2 = "audio/eac3";
        }
        i7 = i6;
        int i110 = i7;
        listZzo = null;
        zzaiaVarZzm = null;
        str3 = null;
        while (iZzd2 - i14 < i15) {
            zzdyVar3.zzL(iZzd2);
            iZzg2 = zzdyVar.zzg();
            if (iZzg2 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            String str9 = "childAtomSize must be positive";
            zzacr.zzb(z2, "childAtomSize must be positive");
            iZzg3 = zzdyVar.zzg();
            iZzn = iZzn;
            if (iZzg3 == 1835557187) {
                zzdyVar3.zzL(iZzd2 + 8);
                zzdyVar3.zzM(1);
                iZzm3 = zzdyVar.zzm();
                zzdyVar3.zzM(1);
                if (Objects.equals(str2, str6)) {
                    i13 = 0;
                    str5 = String.format("mhm1.%02X", Integer.valueOf(iZzm3));
                } else {
                    i13 = 0;
                    str5 = String.format("mha1.%02X", Integer.valueOf(iZzm3));
                }
                int iZzq4 = zzdyVar.zzq();
                bArr3 = new byte[iZzq4];
                zzdyVar3.zzH(bArr3, i13, iZzq4);
                if (listZzo == null) {
                    listZzo = zzfxn.zzo(bArr3);
                } else {
                    listZzo = zzfxn.zzp(bArr3, (byte[]) listZzo.get(i13));
                }
                str3 = str5;
            } else {
                str6 = str6;
                if (iZzg3 == 1835557200) {
                    zzdyVar3.zzL(iZzd2 + 8);
                    iZzm2 = zzdyVar.zzm();
                    if (iZzm2 > 0) {
                        bArr2 = new byte[iZzm2];
                        zzdyVar3.zzH(bArr2, 0, iZzm2);
                        if (listZzo == null) {
                            listZzo = zzfxn.zzo(bArr2);
                        } else {
                            listZzo = zzfxn.zzp((byte[]) listZzo.get(0), bArr2);
                        }
                    }
                    iZzn = iZzn;
                    i9 = iZzg;
                    iZzn = iZzn;
                } else {
                    if (iZzg3 == 1702061171) {
                        if (z) {
                        }
                        if (iZzg3 == 1684103987) {
                            zzdyVar3.zzL(iZzd2 + 8);
                            zzaifVar.zzb = zzabn.zzc(zzdyVar3, Integer.toString(i4), str, zzuVarZzb);
                        } else if (iZzg3 == 1684366131) {
                            zzdyVar3.zzL(iZzd2 + 8);
                            zzaifVar.zzb = zzabn.zzd(zzdyVar3, Integer.toString(i4), str, zzuVarZzb);
                        } else if (iZzg3 == 1684103988) {
                            zzdyVar3.zzL(iZzd2 + 8);
                            String string2 = Integer.toString(i4);
                            int i111 = zzabq.zza;
                            zzdyVar3.zzM(1);
                            iZzm = zzdyVar.zzm() & 32;
                            zzz zzzVar4 = new zzz();
                            zzzVar4.zzM(string2);
                            zzzVar4.zzaa("audio/ac4");
                            zzzVar4.zzz(2);
                            if (1 != (iZzm >> 5)) {
                                i12 = 44100;
                            } else {
                                i12 = 48000;
                            }
                            zzzVar4.zzab(i12);
                            zzzVar4.zzF(zzuVarZzb);
                            zzzVar4.zzQ(str);
                            zzaifVar.zzb = zzzVar4.zzag();
                        } else if (iZzg3 != 1684892784) {
                            if (iZzg > 0) {
                                throw zzbc.zza("Invalid sample rate for Dolby TrueHD MLP stream: " + iZzg, null);
                            }
                            iZzn = iZzg;
                            i9 = iZzn;
                            iZzq2 = 2;
                        } else if (iZzg3 != 1684305011) {
                            zzz zzzVar5 = new zzz();
                            zzzVar5.zzL(i4);
                            zzzVar5.zzaa(str2);
                            zzzVar5.zzz(iZzq2);
                            iZzn = iZzn;
                            zzzVar5.zzab(iZzn);
                            zzzVar5.zzF(zzuVarZzb);
                            zzzVar5.zzQ(str);
                            zzaifVar.zzb = zzzVar5.zzag();
                            i9 = iZzg;
                            iZzn = iZzn;
                        } else {
                            zzz zzzVar6 = new zzz();
                            zzzVar6.zzL(i4);
                            zzzVar6.zzaa(str2);
                            zzzVar6.zzz(iZzq2);
                            iZzn = iZzn;
                            zzzVar6.zzab(iZzn);
                            zzzVar6.zzF(zzuVarZzb);
                            zzzVar6.zzQ(str);
                            zzaifVar.zzb = zzzVar6.zzag();
                            i9 = iZzg;
                            iZzn = iZzn;
                        }
                        iZzn = iZzn;
                        i9 = iZzg;
                        iZzn = iZzn;
                    } else {
                        iZzn = iZzn;
                        iZzd = iZzd2;
                        i8 = -1;
                    }
                    if (iZzd != i8) {
                        zzaiaVarZzm = zzm(zzdyVar3, iZzd);
                        str2 = zzaiaVarZzm.zza;
                        bArr = zzaiaVarZzm.zzb;
                        if (bArr != null) {
                            i9 = iZzg;
                        } else if ("audio/vorbis".equals(str2)) {
                            zzdyVar2 = new zzdy(bArr);
                            zzdyVar2.zzM(1);
                            i10 = 0;
                            while (zzdyVar2.zzb() > 0) {
                                zzdyVar2.zzM(1);
                                i10 += 255;
                            }
                            int iZzm7 = i10 + zzdyVar2.zzm();
                            i11 = 0;
                            while (true) {
                                if (zzdyVar2.zzb() > 0) {
                                    i9 = iZzg;
                                    break;
                                }
                                i9 = iZzg;
                                if (zzdyVar2.zzf() == 255) {
                                    break;
                                    break;
                                } else {
                                    zzdyVar2.zzM(1);
                                    i11 += 255;
                                    iZzg = i9;
                                }
                            }
                            int iZzm8 = i11 + zzdyVar2.zzm();
                            byte[] bArr10 = new byte[iZzm7];
                            int iZzd4 = zzdyVar2.zzd();
                            System.arraycopy(bArr, iZzd4, bArr10, 0, iZzm7);
                            int i26 = iZzd4 + iZzm7 + iZzm8;
                            int length2 = bArr.length - i26;
                            byte[] bArr11 = new byte[length2];
                            System.arraycopy(bArr, i26, bArr11, 0, length2);
                            listZzo = zzfxn.zzp(bArr10, bArr11);
                        } else {
                            i9 = iZzg;
                            if ("audio/mp4a-latm".equals(str2)) {
                                zzabi zzabiVarZza2 = zzabk.zza(bArr);
                                iZzn = zzabiVarZza2.zza;
                                iZzq2 = zzabiVarZza2.zzb;
                                str3 = zzabiVarZza2.zzc;
                            } else {
                                iZzn = iZzn;
                            }
                            listZzo = zzfxn.zzo(bArr);
                        }
                        iZzn = iZzn;
                    } else {
                        i9 = iZzg;
                        iZzn = iZzn;
                    }
                }
                iZzd2 += iZzg2;
                zzdyVar3 = zzdyVar;
                i14 = i2;
                i15 = i3;
                str6 = str6;
                iZzg = i9;
            }
            i9 = iZzg;
            iZzd2 += iZzg2;
            zzdyVar3 = zzdyVar;
            i14 = i2;
            i15 = i3;
            str6 = str6;
            iZzg = i9;
        }
        int i27 = iZzn;
        if (zzaifVar.zzb == null) {
        }
    }
}
