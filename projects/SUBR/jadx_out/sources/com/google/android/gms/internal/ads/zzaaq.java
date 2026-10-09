package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaaq {
    private final zzaal zza;
    private zzcd zzf;
    private long zzh;
    private final zzzx zzj;
    private final zzaaj zzb = new zzaaj();
    private final zzee zzc = new zzee(10);
    private final zzee zzd = new zzee(10);
    private final zzdq zze = new zzdq(16);
    private zzcd zzg = zzcd.zza;
    private long zzi = -9223372036854775807L;

    public zzaaq(zzzx zzzxVar, zzaal zzaalVar) {
        this.zzj = zzzxVar;
        this.zza = zzaalVar;
    }

    private static Object zzf(zzee zzeeVar) {
        zzcw.zzd(zzeeVar.zza() > 0);
        while (zzeeVar.zza() > 1) {
            zzeeVar.zzb();
        }
        Object objZzb = zzeeVar.zzb();
        objZzb.getClass();
        return objZzb;
    }

    public final void zza() {
        this.zze.zzc();
        this.zzi = -9223372036854775807L;
        zzee zzeeVar = this.zzd;
        if (zzeeVar.zza() > 0) {
            this.zzd.zzd(0L, Long.valueOf(((Long) zzf(zzeeVar)).longValue()));
        }
        if (this.zzf != null) {
            this.zzc.zze();
            return;
        }
        zzee zzeeVar2 = this.zzc;
        if (zzeeVar2.zza() > 0) {
            this.zzf = (zzcd) zzf(zzeeVar2);
        }
    }

    public final void zzb(int i, int i2) {
        this.zzf = new zzcd(i, i2, 1.0f);
    }

    public final void zzc(long j, long j2) {
        this.zzd.zzd(j, Long.valueOf(j2));
    }

    public final void zzd(long j, long j2) throws zzib {
        while (true) {
            zzdq zzdqVar = this.zze;
            if (zzdqVar.zzd()) {
                return;
            }
            zzee zzeeVar = this.zzd;
            long jZza = zzdqVar.zza();
            Long l = (Long) zzeeVar.zzc(jZza);
            if (l != null && l.longValue() != this.zzh) {
                this.zzh = l.longValue();
                this.zza.zzf();
            }
            int iZza = this.zza.zza(jZza, j, j2, this.zzh, false, this.zzb);
            if (iZza != 0 && iZza != 1) {
                if (iZza == 2 || iZza == 3 || iZza == 4) {
                    this.zzi = jZza;
                    this.zze.zzb();
                    zzzx zzzxVar = this.zzj;
                    Iterator it = zzzxVar.zza.zzj.iterator();
                    while (it.hasNext()) {
                        ((zzaac) it.next()).zzz(zzzxVar.zza);
                    }
                    zzbm zzbmVar = null;
                    zzcw.zzb(null);
                    zzbmVar.zza();
                    throw null;
                }
                return;
            }
            this.zzi = jZza;
            long jLongValue = Long.valueOf(this.zze.zzb()).longValue();
            zzcd zzcdVar = (zzcd) this.zzc.zzc(jLongValue);
            if (zzcdVar != null && !zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzg)) {
                this.zzg = zzcdVar;
                this.zzj.zza(zzcdVar);
            }
            this.zzj.zzb(iZza == 0 ? -1L : this.zzb.zzd(), jLongValue, this.zza.zzp());
        }
    }

    public final boolean zze(long j) {
        long j2 = this.zzi;
        return j2 != -9223372036854775807L && j2 >= j;
    }
}
