package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcag implements zzgcd {
    final /* synthetic */ zzcai zza;

    zzcag(zzcai zzcaiVar) {
        this.zza = zzcaiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        this.zza.zzb.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
        this.zza.zzb.set(1);
    }
}
