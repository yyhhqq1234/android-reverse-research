package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfhf implements zzgcd {
    final /* synthetic */ zzfhh zza;
    final /* synthetic */ zzfgw zzb;

    zzfhf(zzfhh zzfhhVar, zzfgw zzfgwVar) {
        this.zza = zzfhhVar;
        this.zzb = zzfgwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzfgw zzfgwVar = this.zzb;
        zzfgwVar.zzh(th);
        zzfgwVar.zzg(false);
        this.zza.zza(zzfgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
    }
}
