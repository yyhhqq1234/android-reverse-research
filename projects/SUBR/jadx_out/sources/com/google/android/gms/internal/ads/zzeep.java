package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeep implements zzgcd {
    final /* synthetic */ zzeeq zza;

    zzeep(zzeeq zzeeqVar) {
        this.zza = zzeeqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.client.zze zzeVarZza = this.zza.zza.zzd().zza(th);
        this.zza.zzd.zzdz(zzeVarZza);
        zzfdg.zzb(zzeVarZza.zza, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* synthetic */ void zzb(Object obj) {
        ((zzcom) obj).zzk();
    }
}
