package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbc extends zzgbe {
    zzgbc(ListenableFuture listenableFuture, zzgbo zzgboVar) {
        super(listenableFuture, zzgboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbe
    final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) throws Exception {
        zzgbo zzgboVar = (zzgbo) obj;
        ListenableFuture listenableFutureZza = zzgboVar.zza(obj2);
        zzfun.zzd(listenableFutureZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgboVar);
        return listenableFutureZza;
    }

    @Override // com.google.android.gms.internal.ads.zzgbe
    final /* synthetic */ void zzf(Object obj) {
        zzs((ListenableFuture) obj);
    }
}
