package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzaby {
    protected final zzabs zza;
    protected final zzabx zzb;
    protected zzabu zzc;
    private final int zzd;

    protected zzaby(zzabv zzabvVar, zzabx zzabxVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzabxVar;
        this.zzd = i;
        this.zza = new zzabs(zzabvVar, j, 0L, j3, j4, j5, j6);
    }

    protected static final int zzf(zzaco zzacoVar, long j, zzadj zzadjVar) {
        if (j == zzacoVar.zzf()) {
            return 0;
        }
        zzadjVar.zza = j;
        return 1;
    }

    protected static final boolean zzg(zzaco zzacoVar, long j) throws IOException {
        long jZzf = j - zzacoVar.zzf();
        if (jZzf < 0 || jZzf > 262144) {
            return false;
        }
        zzacoVar.zzk((int) jZzf);
        return true;
    }

    public final int zza(zzaco zzacoVar, zzadj zzadjVar) throws IOException {
        while (true) {
            zzabu zzabuVar = this.zzc;
            zzcw.zzb(zzabuVar);
            long j = zzabuVar.zzf;
            long j2 = zzabuVar.zzg;
            long j3 = zzabuVar.zzh;
            if (j2 - j <= this.zzd) {
                zzc(false, j);
                return zzf(zzacoVar, j, zzadjVar);
            }
            if (!zzg(zzacoVar, j3)) {
                return zzf(zzacoVar, j3, zzadjVar);
            }
            zzacoVar.zzj();
            zzabw zzabwVarZza = this.zzb.zza(zzacoVar, zzabuVar.zzb);
            int i = zzabwVarZza.zzb;
            if (i == -3) {
                zzc(false, j3);
                return zzf(zzacoVar, j3, zzadjVar);
            }
            if (i == -2) {
                zzabu.zzh(zzabuVar, zzabwVarZza.zzc, zzabwVarZza.zzd);
            } else {
                if (i != -1) {
                    zzg(zzacoVar, zzabwVarZza.zzd);
                    zzc(true, zzabwVarZza.zzd);
                    return zzf(zzacoVar, zzabwVarZza.zzd, zzadjVar);
                }
                zzabu.zzg(zzabuVar, zzabwVarZza.zzc, zzabwVarZza.zzd);
            }
        }
    }

    public final zzadm zzb() {
        return this.zza;
    }

    protected final void zzc(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j) {
        zzabu zzabuVar = this.zzc;
        if (zzabuVar == null || zzabuVar.zza != j) {
            zzabs zzabsVar = this.zza;
            this.zzc = new zzabu(j, zzabsVar.zzf(j), 0L, zzabsVar.zzc, zzabsVar.zzd, zzabsVar.zze, zzabsVar.zzf);
        }
    }

    public final boolean zze() {
        return this.zzc != null;
    }
}
