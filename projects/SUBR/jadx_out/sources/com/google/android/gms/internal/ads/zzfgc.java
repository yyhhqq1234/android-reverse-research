package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfgc implements zzgcd {
    final /* synthetic */ zzfft zza;
    final /* synthetic */ zzfgd zzb;

    zzfgc(zzfgd zzfgdVar, zzfft zzfftVar) {
        this.zza = zzfftVar;
        this.zzb = zzfgdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        this.zzb.zza.zzd.zzb(this.zza, th);
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
        this.zzb.zza.zzd.zzd(this.zza);
    }
}
