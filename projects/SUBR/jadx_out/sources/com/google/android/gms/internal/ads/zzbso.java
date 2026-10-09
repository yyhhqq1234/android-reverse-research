package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbso extends zzbgz {
    final /* synthetic */ zzbsr zza;

    /* synthetic */ zzbso(zzbsr zzbsrVar, zzbsq zzbsqVar) {
        this.zza = zzbsrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zze(zzbgq zzbgqVar, String str) {
        zzbsr zzbsrVar = this.zza;
        if (zzbsrVar.zzb == null) {
            return;
        }
        zzbsrVar.zzb.onCustomClick(zzbsrVar.zzf(zzbgqVar), str);
    }
}
