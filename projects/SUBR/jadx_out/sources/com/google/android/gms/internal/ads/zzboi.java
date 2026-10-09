package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzboi implements zzcad {
    final /* synthetic */ zzcab zza;
    final /* synthetic */ zzbnm zzb;

    zzboi(zzbok zzbokVar, zzcab zzcabVar, zzbnm zzbnmVar) {
        this.zza = zzcabVar;
        this.zzb = zzbnmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcad
    public final void zza() {
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise rejected");
        this.zza.zzd(new zzbnv("Unable to obtain a JavascriptEngine."));
        this.zzb.zzb();
    }
}
