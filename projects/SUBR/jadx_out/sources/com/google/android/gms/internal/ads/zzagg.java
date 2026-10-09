package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzagg {
    public static final zzage zza = new Object() { // from class: com.google.android.gms.internal.ads.zzage
    };

    /* JADX WARN: Code duplicated, block: B:30:0x0090  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ac A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:52:0x0102  */
    /* JADX WARN: Code duplicated, block: B:58:0x010c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00fc A[SYNTHETIC] */
    public static final zzay zza(byte[] bArr, int i, zzage zzageVar, zzafi zzafiVar) {
        boolean z;
        zzagf zzagfVar;
        int i2;
        int iZze;
        zzagh zzaghVarZzl;
        ArrayList arrayList = new ArrayList();
        zzdy zzdyVar = new zzdy(bArr, i);
        boolean z2 = false;
        if (zzdyVar.zzb() < 10) {
            zzdo.zzf("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int iZzo = zzdyVar.zzo();
            if (iZzo == 4801587) {
                int iZzm = zzdyVar.zzm();
                zzdyVar.zzM(1);
                int iZzm2 = zzdyVar.zzm();
                int iZzl = zzdyVar.zzl();
                if (iZzm != 2) {
                    if (iZzm == 3) {
                        if ((iZzm2 & 64) != 0) {
                            int iZzg = zzdyVar.zzg();
                            zzdyVar.zzM(iZzg);
                            iZzl -= iZzg + 4;
                        }
                    } else if (iZzm == 4) {
                        if ((iZzm2 & 64) != 0) {
                            int iZzl2 = zzdyVar.zzl();
                            zzdyVar.zzM(iZzl2 - 4);
                            iZzl -= iZzl2;
                        }
                        if ((iZzm2 & 16) != 0) {
                            iZzl -= 10;
                        }
                    } else {
                        zzdo.zzf("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iZzm);
                    }
                    if (iZzm < 4) {
                        z = false;
                    } else {
                        z = false;
                    }
                    zzagfVar = new zzagf(iZzm, z, iZzl);
                } else if ((iZzm2 & 64) != 0) {
                    zzdo.zzf("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                } else {
                    if (iZzm < 4 || (iZzm2 & 128) == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    zzagfVar = new zzagf(iZzm, z, iZzl);
                }
                if (zzagfVar == null) {
                    return null;
                }
                int iZzd = zzdyVar.zzd();
                i2 = zzagfVar.zza == 2 ? 6 : 10;
                iZze = zzagfVar.zzc;
                if (zzagfVar.zzb) {
                    iZze = zze(zzdyVar, zzagfVar.zzc);
                }
                zzdyVar.zzK(iZzd + iZze);
                if (!zzj(zzdyVar, zzagfVar.zza, i2, false)) {
                    if (zzagfVar.zza == 4 || !zzj(zzdyVar, 4, i2, true)) {
                        zzdo.zzf("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + zzagfVar.zza);
                        return null;
                    }
                    z2 = true;
                }
                while (zzdyVar.zzb() >= i2) {
                    zzaghVarZzl = zzl(zzagfVar.zza, zzdyVar, z2, i2, zzageVar);
                    if (zzaghVarZzl != null) {
                        arrayList.add(zzaghVarZzl);
                    }
                }
                return new zzay(arrayList);
            }
            zzdo.zzf("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.valueOf(String.format("%06X", Integer.valueOf(iZzo)))));
        }
        zzagfVar = null;
        if (zzagfVar == null) {
            return null;
        }
        int iZzd2 = zzdyVar.zzd();
        if (zzagfVar.zza == 2) {
        }
        iZze = zzagfVar.zzc;
        if (zzagfVar.zzb) {
            iZze = zze(zzdyVar, zzagfVar.zzc);
        }
        zzdyVar.zzK(iZzd2 + iZze);
        if (!zzj(zzdyVar, zzagfVar.zza, i2, false)) {
            if (zzagfVar.zza == 4) {
            }
            zzdo.zzf("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + zzagfVar.zza);
            return null;
        }
        while (zzdyVar.zzb() >= i2) {
            zzaghVarZzl = zzl(zzagfVar.zza, zzdyVar, z2, i2, zzageVar);
            if (zzaghVarZzl != null) {
                arrayList.add(zzaghVarZzl);
            }
        }
        return new zzay(arrayList);
    }

    private static int zzb(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int zzc(byte[] bArr, int i, int i2) {
        int iZzd = zzd(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iZzd;
        }
        while (true) {
            int length = bArr.length;
            if (iZzd >= length - 1) {
                return length;
            }
            int i3 = iZzd + 1;
            if ((iZzd - i) % 2 == 0 && bArr[i3] == 0) {
                return iZzd;
            }
            iZzd = zzd(bArr, i3);
        }
    }

    private static int zzd(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i >= length) {
                return length;
            }
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
    }

    private static int zze(zzdy zzdyVar, int i) {
        byte[] bArrZzN = zzdyVar.zzN();
        int iZzd = zzdyVar.zzd();
        int i2 = iZzd;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iZzd + i) {
                return i;
            }
            if ((bArrZzN[i2] & 255) == 255 && bArrZzN[i3] == 0) {
                System.arraycopy(bArrZzN, i2 + 2, bArrZzN, i3, (i - (i2 - iZzd)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    private static zzfxn zzf(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return zzfxn.zzo("");
        }
        zzfxk zzfxkVar = new zzfxk();
        int iZzc = zzc(bArr, i2, i);
        while (i2 < iZzc) {
            zzfxkVar.zzf(new String(bArr, i2, iZzc - i2, zzi(i)));
            i2 = zzb(i) + iZzc;
            iZzc = zzc(bArr, i2, i);
        }
        zzfxn zzfxnVarZzi = zzfxkVar.zzi();
        return zzfxnVarZzi.isEmpty() ? zzfxn.zzo("") : zzfxnVarZzi;
    }

    private static String zzg(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, charset);
    }

    private static String zzh(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0069 A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0008, B:7:0x0015, B:18:0x003d, B:21:0x0047, B:23:0x0069, B:27:0x006f, B:39:0x0089, B:40:0x008b, B:43:0x0091, B:46:0x009b, B:29:0x0079, B:33:0x0080, B:8:0x0022), top: B:53:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:26:0x006e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0079 A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0008, B:7:0x0015, B:18:0x003d, B:21:0x0047, B:23:0x0069, B:27:0x006f, B:39:0x0089, B:40:0x008b, B:43:0x0091, B:46:0x009b, B:29:0x0079, B:33:0x0080, B:8:0x0022), top: B:53:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    /* JADX WARN: Code duplicated, block: B:32:0x007f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    /* JADX WARN: Code duplicated, block: B:36:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x0089 A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0008, B:7:0x0015, B:18:0x003d, B:21:0x0047, B:23:0x0069, B:27:0x006f, B:39:0x0089, B:40:0x008b, B:43:0x0091, B:46:0x009b, B:29:0x0079, B:33:0x0080, B:8:0x0022), top: B:53:0x0008 }] */
    private static boolean zzj(zzdy zzdyVar, int i, int i2, boolean z) {
        boolean z2;
        int iZzo;
        long jZzo;
        int iZzq;
        int i3;
        int iZzd = zzdyVar.zzd();
        while (true) {
            try {
                z2 = true;
                z2 = true;
                int i4 = 1;
                int i5 = 1;
                if (zzdyVar.zzb() >= i2) {
                    if (i >= 3) {
                        iZzo = zzdyVar.zzg();
                        jZzo = zzdyVar.zzu();
                        iZzq = zzdyVar.zzq();
                    } else {
                        iZzo = zzdyVar.zzo();
                        jZzo = zzdyVar.zzo();
                        iZzq = 0;
                    }
                    if (iZzo != 0 || jZzo != 0 || iZzq != 0) {
                        if (i != 4 || z) {
                            if (i == 4) {
                                if ((iZzq & 64) != 0) {
                                    i4 = 0;
                                }
                                int i6 = i4;
                                i5 = iZzq & 1;
                                i3 = i6;
                            } else {
                                if (i == 3) {
                                    if ((iZzq & 32) != 0) {
                                        i3 = 1;
                                    } else {
                                        i3 = 0;
                                    }
                                    if ((iZzq & 128) != 0) {
                                    }
                                } else {
                                    i3 = 0;
                                }
                                i5 = 0;
                            }
                            if (i5 != 0) {
                                i3 += 4;
                            }
                            if (jZzo >= i3 && zzdyVar.zzb() >= jZzo) {
                                zzdyVar.zzM((int) jZzo);
                            }
                        } else if ((8421504 & jZzo) == 0) {
                            long j = ((jZzo >> 16) & 255) << 14;
                            jZzo = ((jZzo >> 24) << 21) | j | (jZzo & 255) | (((jZzo >> 8) & 255) << 7);
                            if (i == 4) {
                                if ((iZzq & 64) != 0) {
                                    i4 = 0;
                                }
                                int i7 = i4;
                                i5 = iZzq & 1;
                                i3 = i7;
                            } else {
                                if (i == 3) {
                                    if ((iZzq & 32) != 0) {
                                        i3 = 1;
                                    } else {
                                        i3 = 0;
                                    }
                                    if ((iZzq & 128) != 0) {
                                    }
                                } else {
                                    i3 = 0;
                                }
                                i5 = 0;
                            }
                            if (i5 != 0) {
                                i3 += 4;
                            }
                            if (jZzo >= i3) {
                                zzdyVar.zzM((int) jZzo);
                            }
                        }
                        z2 = false;
                        break;
                    }
                    break;
                }
                break;
            } catch (Throwable th) {
                zzdyVar.zzL(iZzd);
                throw th;
            }
        }
        zzdyVar.zzL(iZzd);
        return z2;
    }

    private static byte[] zzk(byte[] bArr, int i, int i2) {
        return i2 <= i ? zzei.zzf : Arrays.copyOfRange(bArr, i, i2);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15151. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private static com.google.android.gms.internal.ads.zzagh zzl(int r35, com.google.android.gms.internal.ads.zzdy r36, boolean r37, int r38, com.google.android.gms.internal.ads.zzage r39) {
        /*
            Method dump skipped, instruction units count: 1515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagg.zzl(int, com.google.android.gms.internal.ads.zzdy, boolean, int, com.google.android.gms.internal.ads.zzage):com.google.android.gms.internal.ads.zzagh");
    }

    private static Charset zzi(int i) {
        if (i == 1) {
            return StandardCharsets.UTF_16;
        }
        if (i != 2) {
            return i != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8;
        }
        return StandardCharsets.UTF_16BE;
    }
}
