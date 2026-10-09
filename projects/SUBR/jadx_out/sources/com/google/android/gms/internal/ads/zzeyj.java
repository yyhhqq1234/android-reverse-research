package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeyj implements zzfeq {
    private final zzezf zza;

    public zzeyj(zzezf zzezfVar) {
        this.zza = zzezfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfeq
    public final ListenableFuture zza(zzfer zzferVar) {
        zzeyk zzeykVar = (zzeyk) zzferVar;
        return ((zzeyg) this.zza).zzb(zzeykVar.zzb, zzeykVar.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfeq
    public final void zzb(zzfef zzfefVar) {
        zzfefVar.zza = ((zzeyg) this.zza).zza();
    }
}
