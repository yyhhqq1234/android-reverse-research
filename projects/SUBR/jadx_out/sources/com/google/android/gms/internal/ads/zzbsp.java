package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbsp extends zzbhc {
    final /* synthetic */ zzbsr zza;

    /* synthetic */ zzbsp(zzbsr zzbsrVar, zzbsq zzbsqVar) {
        this.zza = zzbsrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zze(zzbgq zzbgqVar) {
        zzbsr zzbsrVar = this.zza;
        zzbsrVar.zza.onCustomFormatAdLoaded(zzbsrVar.zzf(zzbgqVar));
    }
}
