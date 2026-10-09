package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhai {
    private static final zzhai zza = new zzhai(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhai() {
        this(0, new int[8], new Object[8], true);
    }

    private zzhai(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhai zzc() {
        return zza;
    }

    static zzhai zze(zzhai zzhaiVar, zzhai zzhaiVar2) {
        int i = zzhaiVar.zzb + zzhaiVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzhaiVar.zzc, i);
        System.arraycopy(zzhaiVar2.zzc, 0, iArrCopyOf, zzhaiVar.zzb, zzhaiVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzhaiVar.zzd, i);
        System.arraycopy(zzhaiVar2.zzd, 0, objArrCopyOf, zzhaiVar.zzb, zzhaiVar2.zzb);
        return new zzhai(i, iArrCopyOf, objArrCopyOf, true);
    }

    static zzhai zzf() {
        return new zzhai();
    }

    private final void zzn(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhai)) {
            return false;
        }
        zzhai zzhaiVar = (zzhai) obj;
        int i = this.zzb;
        if (i == zzhaiVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhaiVar.zzc;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzhaiVar.zzd;
            int i3 = this.zzb;
            for (int i4 = 0; i4 < i3; i4++) {
                if (objArr[i4].equals(objArr2[i4])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = i + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.zzd;
        int i6 = this.zzb;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public final int zza() {
        int iZzD;
        int iZzE;
        int iZzD2;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.zzd[i3]).longValue();
                    iZzD2 = zzgww.zzD(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzgwj zzgwjVar = (zzgwj) this.zzd[i3];
                    int iZzD3 = zzgww.zzD(i7);
                    int iZzd = zzgwjVar.zzd();
                    iZzD2 = iZzD3 + zzgww.zzD(iZzd) + iZzd;
                } else if (i6 == 3) {
                    int iZzD4 = zzgww.zzD(i5 << 3);
                    iZzD = iZzD4 + iZzD4;
                    iZzE = ((zzhai) this.zzd[i3]).zza();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzgyf("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.zzd[i3]).intValue();
                    iZzD2 = zzgww.zzD(i5 << 3) + 4;
                }
                i2 += iZzD2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.zzd[i3]).longValue();
                iZzD = zzgww.zzD(i8);
                iZzE = zzgww.zzE(jLongValue);
            }
            iZzD2 = iZzD + iZzE;
            i2 += iZzD2;
        }
        this.zze = i2;
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzD = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2] >>> 3;
            zzgwj zzgwjVar = (zzgwj) this.zzd[i2];
            int iZzD2 = zzgww.zzD(8);
            int iZzD3 = zzgww.zzD(16) + zzgww.zzD(i3);
            int iZzD4 = zzgww.zzD(24);
            int iZzd = zzgwjVar.zzd();
            iZzD += iZzD2 + iZzD2 + iZzD3 + iZzD4 + zzgww.zzD(iZzd) + iZzd;
        }
        this.zze = iZzD;
        return iZzD;
    }

    final zzhai zzd(zzhai zzhaiVar) {
        if (zzhaiVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzhaiVar.zzb;
        zzn(i);
        System.arraycopy(zzhaiVar.zzc, 0, this.zzc, this.zzb, zzhaiVar.zzb);
        System.arraycopy(zzhaiVar.zzd, 0, this.zzd, this.zzb, zzhaiVar.zzb);
        this.zzb = i;
        return this;
    }

    final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzgze.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    final void zzj(int i, Object obj) {
        zzg();
        zzn(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    final void zzk(zzhaw zzhawVar) throws IOException {
        for (int i = 0; i < this.zzb; i++) {
            zzhawVar.zzw(this.zzc[i] >>> 3, this.zzd[i]);
        }
    }

    public final void zzl(zzhaw zzhawVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    zzhawVar.zzt(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    zzhawVar.zzm(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    zzhawVar.zzd(i4, (zzgwj) obj);
                } else if (i3 == 3) {
                    zzhawVar.zzF(i4);
                    ((zzhai) obj).zzl(zzhawVar);
                    zzhawVar.zzh(i4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzgyf("Protocol message tag had invalid wire type."));
                    }
                    zzhawVar.zzk(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    final boolean zzm(int i, zzgwp zzgwpVar) throws IOException {
        int iZzl;
        zzg();
        int i2 = i & 7;
        if (i2 == 0) {
            zzj(i, Long.valueOf(zzgwpVar.zzo()));
            return true;
        }
        if (i2 == 1) {
            zzj(i, Long.valueOf(zzgwpVar.zzn()));
            return true;
        }
        if (i2 == 2) {
            zzj(i, zzgwpVar.zzv());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw new zzgyf("Protocol message tag had invalid wire type.");
            }
            zzj(i, Integer.valueOf(zzgwpVar.zzf()));
            return true;
        }
        zzhai zzhaiVar = new zzhai();
        do {
            iZzl = zzgwpVar.zzl();
            if (iZzl == 0) {
                break;
            }
        } while (zzhaiVar.zzm(iZzl, zzgwpVar));
        zzgwpVar.zzy(4 | ((i >>> 3) << 3));
        zzj(i, zzhaiVar);
        return true;
    }
}
