package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbjd implements zzgcd {
    final /* synthetic */ zzcex zza;

    zzbjd(zzcex zzcexVar) {
        this.zza = zzcexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "DefaultGmsgHandlers.attributionReportingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        String str = (String) obj;
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zza.zzD() != null ? this.zza.zzD().zzax : null;
        zzcex zzcexVar = this.zza;
        new com.google.android.gms.ads.internal.util.zzbw(zzcexVar.getContext(), zzcexVar.zzn().afmaVersion, str, null, zzvVar).zzb();
    }
}
