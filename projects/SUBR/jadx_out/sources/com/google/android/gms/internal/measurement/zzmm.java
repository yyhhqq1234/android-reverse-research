package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzmm {
    private static final zzmm zza = new zzmm(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmm() {
        this(0, new int[8], new Object[8], true);
    }

    private zzmm(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzmm zzc() {
        return zza;
    }

    static zzmm zzd(zzmm zzmmVar, zzmm zzmmVar2) {
        int i = zzmmVar.zzb + zzmmVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzmmVar.zzc, i);
        System.arraycopy(zzmmVar2.zzc, 0, iArrCopyOf, zzmmVar.zzb, zzmmVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzmmVar.zzd, i);
        System.arraycopy(zzmmVar2.zzd, 0, objArrCopyOf, zzmmVar.zzb, zzmmVar2.zzb);
        return new zzmm(i, iArrCopyOf, objArrCopyOf, true);
    }

    static zzmm zze() {
        return new zzmm(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmm)) {
            return false;
        }
        zzmm zzmmVar = (zzmm) obj;
        int i = this.zzb;
        if (i == zzmmVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzmmVar.zzc;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzmmVar.zzd;
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
        int i2 = (i + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.zzd;
        int i6 = this.zzb;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public final int zza() {
        int iZzA;
        int iZzB;
        int iZzA2;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzA3 = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 == 2) {
                        zzjb zzjbVar = (zzjb) this.zzd[i2];
                        int iZzA4 = zzjj.zzA(i4 << 3);
                        int iZzd = zzjbVar.zzd();
                        iZzA3 += iZzA4 + zzjj.zzA(iZzd) + iZzd;
                    } else if (i5 == 3) {
                        int iZzz = zzjj.zzz(i4);
                        iZzA = iZzz + iZzz;
                        iZzB = ((zzmm) this.zzd[i2]).zza();
                    } else {
                        if (i5 != 5) {
                            throw new IllegalStateException(zzkm.zza());
                        }
                        ((Integer) this.zzd[i2]).intValue();
                        iZzA2 = zzjj.zzA(i4 << 3) + 4;
                    }
                } else {
                    ((Long) this.zzd[i2]).longValue();
                    iZzA2 = zzjj.zzA(i4 << 3) + 8;
                }
                iZzA3 += iZzA2;
            } else {
                long jLongValue = ((Long) this.zzd[i2]).longValue();
                iZzA = zzjj.zzA(i4 << 3);
                iZzB = zzjj.zzB(jLongValue);
            }
            iZzA2 = iZzA + iZzB;
            iZzA3 += iZzA2;
        }
        this.zze = iZzA3;
        return iZzA3;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzA = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2];
            zzjb zzjbVar = (zzjb) this.zzd[i2];
            int iZzA2 = zzjj.zzA(8);
            int iZzd = zzjbVar.zzd();
            iZzA += iZzA2 + iZzA2 + zzjj.zzA(16) + zzjj.zzA(i3 >>> 3) + zzjj.zzA(24) + zzjj.zzA(iZzd) + iZzd;
        }
        this.zze = iZzA;
        return iZzA;
    }

    public final void zzf() {
        this.zzf = false;
    }

    final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzll.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    final void zzh(int i, Object obj) {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.zzb;
        int[] iArr = this.zzc;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.zzc = Arrays.copyOf(iArr, i3);
            this.zzd = Arrays.copyOf(this.zzd, i3);
        }
        int[] iArr2 = this.zzc;
        int i4 = this.zzb;
        iArr2[i4] = i;
        this.zzd[i4] = obj;
        this.zzb = i4 + 1;
    }

    public final void zzi(zznd zzndVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzndVar.zzt(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzndVar.zzm(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzndVar.zzd(i3, (zzjb) obj);
                } else if (i4 == 3) {
                    zzndVar.zzE(i3);
                    ((zzmm) obj).zzi(zzndVar);
                    zzndVar.zzh(i3);
                } else {
                    if (i4 != 5) {
                        throw new RuntimeException(zzkm.zza());
                    }
                    zzndVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
