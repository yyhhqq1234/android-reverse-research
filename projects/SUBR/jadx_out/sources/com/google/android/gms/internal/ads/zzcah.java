package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcah implements zzgcd {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ zzcad zzb;

    zzcah(zzcai zzcaiVar, zzcaf zzcafVar, zzcad zzcadVar) {
        this.zza = zzcafVar;
        this.zzb = zzcadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
        this.zza.zza(obj);
    }
}
