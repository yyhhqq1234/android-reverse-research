package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcmv implements zzgcd {
    final /* synthetic */ String zza;
    final /* synthetic */ zzcmw zzb;

    zzcmv(zzcmw zzcmwVar, String str) {
        this.zza = str;
        this.zzb = zzcmwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzcmw zzcmwVar = this.zzb;
        zzcmwVar.zzh.zza(zzcmwVar.zzg.zzd(zzcmwVar.zze, zzcmwVar.zzf, false, this.zza, null, zzcmwVar.zzu()));
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcmw zzcmwVar = this.zzb;
        zzcmwVar.zzh.zza(zzcmwVar.zzg.zzd(zzcmwVar.zze, zzcmwVar.zzf, false, this.zza, (String) obj, zzcmwVar.zzu()));
    }
}
