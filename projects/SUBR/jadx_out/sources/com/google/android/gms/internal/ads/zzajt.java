package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzajt {
    private zzadt zzb;
    private zzacq zzc;
    private zzajo zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzajm zza = new zzajm();
    private zzajq zzj = new zzajq();

    protected abstract long zza(zzdy zzdyVar);

    protected void zzb(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzajq();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected abstract boolean zzc(zzdy zzdyVar, long j, zzajq zzajqVar) throws IOException;

    final int zze(zzaco zzacoVar, zzadj zzadjVar) throws IOException {
        zzcw.zzb(this.zzb);
        int i = zzei.zza;
        int i2 = this.zzh;
        if (i2 == 0) {
            while (this.zza.zze(zzacoVar)) {
                long jZzf = zzacoVar.zzf();
                long j = this.zzf;
                this.zzk = jZzf - j;
                if (zzc(this.zza.zza(), j, this.zzj)) {
                    this.zzf = zzacoVar.zzf();
                } else {
                    zzab zzabVar = this.zzj.zza;
                    this.zzi = zzabVar.zzE;
                    if (!this.zzm) {
                        this.zzb.zzm(zzabVar);
                        this.zzm = true;
                    }
                    zzajo zzajoVar = this.zzj.zzb;
                    if (zzajoVar != null) {
                        this.zzd = zzajoVar;
                    } else if (zzacoVar.zzd() == -1) {
                        this.zzd = new zzajr(null);
                    } else {
                        zzajn zzajnVarZzb = this.zza.zzb();
                        this.zzd = new zzaji(this, this.zzf, zzacoVar.zzd(), zzajnVarZzb.zzd + zzajnVarZzb.zze, zzajnVarZzb.zzb, (zzajnVarZzb.zza & 4) != 0);
                    }
                    this.zzh = 2;
                    this.zza.zzd();
                }
            }
            this.zzh = 3;
            return -1;
        }
        if (i2 == 1) {
            zzacoVar.zzk((int) this.zzf);
            this.zzh = 2;
            return 0;
        }
        if (i2 != 2) {
            return -1;
        }
        long jZzd = this.zzd.zzd(zzacoVar);
        if (jZzd >= 0) {
            zzadjVar.zza = jZzd;
            return 1;
        }
        if (jZzd < -1) {
            zzi(-(jZzd + 2));
        }
        if (!this.zzl) {
            zzadm zzadmVarZze = this.zzd.zze();
            zzcw.zzb(zzadmVarZze);
            this.zzc.zzO(zzadmVarZze);
            this.zzl = true;
        }
        if (this.zzk <= 0 && !this.zza.zze(zzacoVar)) {
            this.zzh = 3;
            return -1;
        }
        this.zzk = 0L;
        zzdy zzdyVarZza = this.zza.zza();
        long jZza = zza(zzdyVarZza);
        if (jZza >= 0) {
            long j2 = this.zzg;
            if (j2 + jZza >= this.zze) {
                long jZzf2 = zzf(j2);
                this.zzb.zzr(zzdyVarZza, zzdyVarZza.zze());
                this.zzb.zzt(jZzf2, 1, zzdyVarZza.zze(), 0, null);
                this.zze = -1L;
            }
        }
        this.zzg += jZza;
        return 0;
    }

    protected final long zzf(long j) {
        return (j * 1000000) / ((long) this.zzi);
    }

    protected final long zzg(long j) {
        return (((long) this.zzi) * j) / 1000000;
    }

    final void zzh(zzacq zzacqVar, zzadt zzadtVar) {
        this.zzc = zzacqVar;
        this.zzb = zzadtVar;
        zzb(true);
    }

    protected void zzi(long j) {
        this.zzg = j;
    }

    final void zzj(long j, long j2) {
        this.zza.zzc();
        if (j == 0) {
            zzb(!this.zzl);
            return;
        }
        if (this.zzh != 0) {
            this.zze = zzg(j2);
            zzajo zzajoVar = this.zzd;
            int i = zzei.zza;
            zzajoVar.zzg(this.zze);
            this.zzh = 2;
        }
    }
}
