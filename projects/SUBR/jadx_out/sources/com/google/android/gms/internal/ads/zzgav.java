package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgav extends zzgaw {
    zzgav(ListenableFuture listenableFuture, Class cls, zzfuc zzfucVar) {
        super(listenableFuture, cls, zzfucVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgaw
    final /* synthetic */ Object zze(Object obj, Throwable th) throws Exception {
        return ((zzfuc) obj).apply(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgaw
    final void zzf(Object obj) {
        zzc(obj);
    }
}
