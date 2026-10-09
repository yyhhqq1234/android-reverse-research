package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbli implements zzgbo {
    final /* synthetic */ zzbla zza;

    zzbli(zzblm zzblmVar, zzbla zzblaVar) {
        this.zza = zzblaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) throws Exception {
        zzcab zzcabVar = new zzcab();
        ((zzblg) obj).zze(this.zza, new zzblh(this, zzcabVar));
        return zzcabVar;
    }
}
