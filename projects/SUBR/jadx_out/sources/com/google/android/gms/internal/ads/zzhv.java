package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhv {
    private final long zza;
    private final long zzb;
    private long zzc = -9223372036854775807L;
    private long zzd = -9223372036854775807L;
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private float zzj = 0.97f;
    private float zzi = 1.03f;
    private float zzk = 1.0f;
    private long zzl = -9223372036854775807L;
    private long zze = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private long zzm = -9223372036854775807L;
    private long zzn = -9223372036854775807L;

    /* synthetic */ zzhv(float f, float f2, long j, float f3, long j2, long j3, float f4, zzhu zzhuVar) {
        this.zza = j2;
        this.zzb = j3;
    }

    private static long zzf(long j, long j2, float f) {
        return (long) ((j * 0.999f) + (j2 * 9.999871E-4f));
    }

    private final void zzg() {
        long j;
        long j2 = this.zzc;
        if (j2 != -9223372036854775807L) {
            j = this.zzd;
            if (j == -9223372036854775807L) {
                long j3 = this.zzf;
                if (j3 != -9223372036854775807L && j2 < j3) {
                    j2 = j3;
                }
                j = this.zzg;
                if (j == -9223372036854775807L || j2 <= j) {
                    j = j2;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.zze == j) {
            return;
        }
        this.zze = j;
        this.zzh = j;
        this.zzm = -9223372036854775807L;
        this.zzn = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final void zzc() {
        long j = this.zzh;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.zzb;
        this.zzh = j2;
        long j3 = this.zzg;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.zzh = j3;
        }
        this.zzl = -9223372036854775807L;
    }

    public final void zzd(zzal zzalVar) {
        long j = zzalVar.zza;
        this.zzc = zzei.zzs(-9223372036854775807L);
        long j2 = zzalVar.zzb;
        this.zzf = zzei.zzs(-9223372036854775807L);
        long j3 = zzalVar.zzc;
        this.zzg = zzei.zzs(-9223372036854775807L);
        float f = zzalVar.zzd;
        this.zzj = 0.97f;
        float f2 = zzalVar.zze;
        this.zzi = 1.03f;
        zzg();
    }

    public final void zze(long j) {
        this.zzd = j;
        zzg();
    }

    public final float zza(long j, long j2) {
        if (this.zzc == -9223372036854775807L) {
            return 1.0f;
        }
        long j3 = j - j2;
        long j4 = this.zzm;
        if (j4 == -9223372036854775807L) {
            this.zzm = j3;
            this.zzn = 0L;
        } else {
            long jMax = Math.max(j3, zzf(j4, j3, 0.999f));
            this.zzm = jMax;
            this.zzn = zzf(this.zzn, Math.abs(j3 - jMax), 0.999f);
        }
        if (this.zzl != -9223372036854775807L && SystemClock.elapsedRealtime() - this.zzl < 1000) {
            return this.zzk;
        }
        this.zzl = SystemClock.elapsedRealtime();
        long jMax2 = this.zzm + (this.zzn * 3);
        if (this.zzh > jMax2) {
            float fZzs = zzei.zzs(1000L);
            long[] jArr = {jMax2, this.zze, this.zzh - (((long) ((this.zzk - 1.0f) * fZzs)) + ((long) ((this.zzi - 1.0f) * fZzs)))};
            for (int i = 1; i < 3; i++) {
                long j5 = jArr[i];
                if (j5 > jMax2) {
                    jMax2 = j5;
                }
            }
            this.zzh = jMax2;
        } else {
            jMax2 = Math.max(this.zzh, Math.min(j - ((long) (Math.max(0.0f, this.zzk - 1.0f) / 1.0E-7f)), jMax2));
            this.zzh = jMax2;
            long j6 = this.zzg;
            if (j6 != -9223372036854775807L && jMax2 > j6) {
                this.zzh = j6;
                jMax2 = j6;
            }
        }
        long j7 = j - jMax2;
        if (Math.abs(j7) < this.zza) {
            this.zzk = 1.0f;
            return 1.0f;
        }
        float fMax = Math.max(this.zzj, Math.min((j7 * 1.0E-7f) + 1.0f, this.zzi));
        this.zzk = fMax;
        return fMax;
    }
}
