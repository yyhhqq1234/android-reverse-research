package com.google.android.gms.internal.ads;

import androidx.core.view.MotionEventCompat;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamf implements zzamj {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final zzdx zzc = new zzdx(new byte[7], 7);
    private final zzdy zzd = new zzdy(Arrays.copyOf(zza, 10));
    private final String zze;
    private final int zzf;
    private String zzg;
    private zzadt zzh;
    private zzadt zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private long zzs;
    private int zzt;
    private long zzu;
    private zzadt zzv;
    private long zzw;

    public zzamf(boolean z, String str, int i) {
        zzh();
        this.zzo = -1;
        this.zzp = -1;
        this.zzs = -9223372036854775807L;
        this.zzu = -9223372036854775807L;
        this.zzb = z;
        this.zze = str;
        this.zzf = i;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzn = false;
        zzh();
    }

    private final void zzh() {
        this.zzj = 0;
        this.zzk = 0;
        this.zzl = 256;
    }

    private final void zzi() {
        this.zzj = 3;
        this.zzk = 0;
    }

    private final void zzj(zzadt zzadtVar, long j, int i, int i2) {
        this.zzj = 4;
        this.zzk = i;
        this.zzv = zzadtVar;
        this.zzw = j;
        this.zzt = i2;
    }

    private final boolean zzk(zzdy zzdyVar, byte[] bArr, int i) {
        int iMin = Math.min(zzdyVar.zzb(), i - this.zzk);
        zzdyVar.zzH(bArr, this.zzk, iMin);
        int i2 = this.zzk + iMin;
        this.zzk = i2;
        return i2 == i;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzdy zzdyVar, byte[] bArr, int i) {
        if (zzdyVar.zzb() < i) {
            return false;
        }
        zzdyVar.zzH(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0283  */
    /* JADX WARN: Code duplicated, block: B:107:0x0287  */
    /* JADX WARN: Code duplicated, block: B:109:0x028b  */
    /* JADX WARN: Code duplicated, block: B:111:0x028f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0293  */
    /* JADX WARN: Code duplicated, block: B:114:0x029b  */
    /* JADX WARN: Code duplicated, block: B:116:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:117:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:118:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:141:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0212  */
    /* JADX WARN: Code duplicated, block: B:73:0x0221  */
    /* JADX WARN: Code duplicated, block: B:75:0x022c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0230  */
    /* JADX WARN: Code duplicated, block: B:79:0x0234  */
    /* JADX WARN: Code duplicated, block: B:84:0x0242  */
    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zza(zzdy zzdyVar) throws zzbc {
        int i;
        int i2;
        int i3;
        int iZzd;
        byte[] bArrZzN;
        int iZze;
        int i4;
        byte b;
        int i5;
        int i6;
        int i7;
        byte b2;
        this.zzh.getClass();
        int i8 = zzei.zza;
        while (zzdyVar.zzb() > 0) {
            int i9 = this.zzj;
            int i10 = 13;
            int i11 = 2;
            if (i9 == 0) {
                byte[] bArrZzN2 = zzdyVar.zzN();
                int iZzd2 = zzdyVar.zzd();
                int iZze2 = zzdyVar.zze();
                while (true) {
                    if (iZzd2 < iZze2) {
                        int i12 = iZzd2 + 1;
                        int i13 = bArrZzN2[iZzd2] & 255;
                        if (this.zzl == 512 && zzl((byte) -1, (byte) i13)) {
                            if (!this.zzn) {
                                int i14 = i12 - 2;
                                zzdyVar.zzL(i14 + 1);
                                if (zzm(zzdyVar, this.zzc.zza, 1)) {
                                    this.zzc.zzl(4);
                                    int iZzd3 = this.zzc.zzd(1);
                                    int i15 = this.zzo;
                                    if (i15 == -1 || iZzd3 == i15) {
                                        if (this.zzp == -1) {
                                            if (zzm(zzdyVar, this.zzc.zza, 4)) {
                                                this.zzc.zzl(14);
                                                iZzd = this.zzc.zzd(i10);
                                                if (iZzd >= 7) {
                                                    bArrZzN = zzdyVar.zzN();
                                                    iZze = zzdyVar.zze();
                                                    i4 = i14 + iZzd;
                                                    if (i4 >= iZze) {
                                                        b = bArrZzN[i4];
                                                        if (b == -1) {
                                                            i7 = i4 + 1;
                                                            if (i7 != iZze) {
                                                                b2 = bArrZzN[i7];
                                                                if (zzl((byte) -1, b2) || ((b2 & 8) >> 3) != iZzd3) {
                                                                }
                                                            }
                                                        } else if (b == 73 || ((i5 = i4 + 1) != iZze && (bArrZzN[i5] != 68 || ((i6 = i4 + 2) != iZze && bArrZzN[i6] != 51)))) {
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (zzm(zzdyVar, this.zzc.zza, 1)) {
                                            this.zzc.zzl(i11);
                                            if (this.zzc.zzd(4) == this.zzp) {
                                                zzdyVar.zzL(i14 + 2);
                                                if (zzm(zzdyVar, this.zzc.zza, 4)) {
                                                    this.zzc.zzl(14);
                                                    iZzd = this.zzc.zzd(i10);
                                                    if (iZzd >= 7) {
                                                        bArrZzN = zzdyVar.zzN();
                                                        iZze = zzdyVar.zze();
                                                        i4 = i14 + iZzd;
                                                        if (i4 >= iZze) {
                                                            b = bArrZzN[i4];
                                                            if (b == -1) {
                                                                i7 = i4 + 1;
                                                                if (i7 != iZze) {
                                                                    b2 = bArrZzN[i7];
                                                                    if (zzl((byte) -1, b2)) {
                                                                    }
                                                                }
                                                            } else if (b == 73) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i = this.zzl;
                                i2 = i | i13;
                                if (i2 != 329) {
                                    i3 = 768;
                                } else if (i2 != 511) {
                                    if (i2 != 836) {
                                        i3 = 1024;
                                    } else if (i2 != 1075) {
                                        this.zzj = 2;
                                        this.zzk = 3;
                                        this.zzt = 0;
                                        this.zzd.zzL(0);
                                        zzdyVar.zzL(i12);
                                    } else if (i != 256) {
                                        this.zzl = 256;
                                        iZzd2 = i12 - 1;
                                        i10 = 13;
                                    } else {
                                        iZzd2 = i12;
                                        i10 = 13;
                                    }
                                    i11 = 2;
                                } else {
                                    i3 = 512;
                                }
                                this.zzl = i3;
                                iZzd2 = i12;
                                i10 = 13;
                                i11 = 2;
                            }
                            this.zzq = (i13 & 8) >> 3;
                            this.zzm = 1 == ((i13 & 1) ^ 1);
                            if (this.zzn) {
                                zzi();
                            } else {
                                this.zzj = 1;
                                this.zzk = 0;
                            }
                            zzdyVar.zzL(i12);
                        } else {
                            i = this.zzl;
                            i2 = i | i13;
                            if (i2 != 329) {
                                i3 = 768;
                            } else if (i2 != 511) {
                                if (i2 != 836) {
                                    i3 = 1024;
                                } else if (i2 != 1075) {
                                    this.zzj = 2;
                                    this.zzk = 3;
                                    this.zzt = 0;
                                    this.zzd.zzL(0);
                                    zzdyVar.zzL(i12);
                                } else if (i != 256) {
                                    this.zzl = 256;
                                    iZzd2 = i12 - 1;
                                    i10 = 13;
                                } else {
                                    iZzd2 = i12;
                                    i10 = 13;
                                }
                                i11 = 2;
                            } else {
                                i3 = 512;
                            }
                            this.zzl = i3;
                            iZzd2 = i12;
                            i10 = 13;
                            i11 = 2;
                        }
                    } else {
                        zzdyVar.zzL(iZzd2);
                    }
                }
            } else if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        int iMin = Math.min(zzdyVar.zzb(), this.zzt - this.zzk);
                        this.zzv.zzr(zzdyVar, iMin);
                        int i16 = this.zzk + iMin;
                        this.zzk = i16;
                        if (i16 == this.zzt) {
                            zzcw.zzf(this.zzu != -9223372036854775807L);
                            this.zzv.zzt(this.zzu, 1, this.zzt, 0, null);
                            this.zzu += this.zzw;
                            zzh();
                        }
                    } else {
                        if (zzk(zzdyVar, this.zzc.zza, true != this.zzm ? 5 : 7)) {
                            this.zzc.zzl(0);
                            if (this.zzr) {
                                this.zzc.zzn(10);
                            } else {
                                int iZzd4 = this.zzc.zzd(2) + 1;
                                if (iZzd4 != 2) {
                                    zzdo.zzf("AdtsReader", "Detected audio object type: " + iZzd4 + ", but assuming AAC LC.");
                                }
                                this.zzc.zzn(5);
                                int iZzd5 = this.zzc.zzd(3);
                                int i17 = this.zzp;
                                int i18 = zzabk.zza;
                                byte[] bArr = {(byte) (((i17 >> 1) & 7) | 16), (byte) (((iZzd5 << 3) & 120) | ((i17 << 7) & 128))};
                                zzabi zzabiVarZza = zzabk.zza(bArr);
                                zzz zzzVar = new zzz();
                                zzzVar.zzM(this.zzg);
                                zzzVar.zzaa("audio/mp4a-latm");
                                zzzVar.zzA(zzabiVarZza.zzc);
                                zzzVar.zzz(zzabiVarZza.zzb);
                                zzzVar.zzab(zzabiVarZza.zza);
                                zzzVar.zzN(Collections.singletonList(bArr));
                                zzzVar.zzQ(this.zze);
                                zzzVar.zzY(this.zzf);
                                zzab zzabVarZzag = zzzVar.zzag();
                                this.zzs = 1024000000 / ((long) zzabVarZzag.zzE);
                                this.zzh.zzm(zzabVarZzag);
                                this.zzr = true;
                            }
                            this.zzc.zzn(4);
                            int iZzd6 = this.zzc.zzd(13) - 7;
                            if (this.zzm) {
                                iZzd6 -= 2;
                            }
                            zzj(this.zzh, this.zzs, 0, iZzd6);
                        }
                    }
                } else if (zzk(zzdyVar, this.zzd.zzN(), 10)) {
                    this.zzi.zzr(this.zzd, 10);
                    this.zzd.zzL(6);
                    zzj(this.zzi, 0L, 10, 10 + this.zzd.zzl());
                }
            } else if (zzdyVar.zzb() != 0) {
                zzdx zzdxVar = this.zzc;
                zzdxVar.zza[0] = zzdyVar.zzN()[zzdyVar.zzd()];
                zzdxVar.zzl(2);
                int iZzd7 = this.zzc.zzd(4);
                int i19 = this.zzp;
                if (i19 == -1 || iZzd7 == i19) {
                    if (!this.zzn) {
                        this.zzn = true;
                        this.zzo = this.zzq;
                        this.zzp = iZzd7;
                    }
                    zzi();
                } else {
                    zzg();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zzg = zzanxVar.zzb();
        zzadt zzadtVarZzw = zzacqVar.zzw(zzanxVar.zza(), 1);
        this.zzh = zzadtVarZzw;
        this.zzv = zzadtVarZzw;
        if (!this.zzb) {
            this.zzi = new zzaci();
            return;
        }
        zzanxVar.zzc();
        zzadt zzadtVarZzw2 = zzacqVar.zzw(zzanxVar.zza(), 5);
        this.zzi = zzadtVarZzw2;
        zzz zzzVar = new zzz();
        zzzVar.zzM(zzanxVar.zzb());
        zzzVar.zzaa("application/id3");
        zzadtVarZzw2.zzm(zzzVar.zzag());
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzu = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzu = -9223372036854775807L;
        zzg();
    }
}
