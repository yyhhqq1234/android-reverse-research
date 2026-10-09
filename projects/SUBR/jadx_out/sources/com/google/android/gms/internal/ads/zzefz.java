package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzefz implements zzgcd {
    final /* synthetic */ zzfbo zza;
    final /* synthetic */ zzega zzb;

    zzefz(zzega zzegaVar, zzfbo zzfboVar) {
        this.zza = zzfboVar;
        this.zzb = zzegaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zzh.zzb(th, this.zza);
            zzfbo zzfboVarZza = this.zzb.zzh.zza();
            if (this.zza.zzav) {
                while (zzfboVarZza != null) {
                    this.zzb.zze(zzfboVarZza);
                    zzfboVarZza = this.zzb.zzh.zza();
                }
            } else if (zzfboVarZza != null) {
                this.zzb.zze(zzfboVarZza);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzegr zzegrVar = (zzegr) obj;
        synchronized (this.zzb) {
            this.zzb.zzh.zzc(zzegrVar, this.zza);
            zzfbo zzfboVarZza = this.zzb.zzh.zza();
            if (zzfboVarZza != null) {
                this.zzb.zze(zzfboVarZza);
            }
        }
    }
}
