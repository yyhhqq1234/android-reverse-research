package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevn implements zzetr {
    public zzevn(zzbza zzbzaVar, zzgcs zzgcsVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        final ListenableFuture listenableFutureZzh = zzgch.zzh(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfJ)).booleanValue()) {
            listenableFutureZzh = zzgch.zzh(null);
        }
        final ListenableFuture listenableFutureZzh2 = zzgch.zzh(null);
        return zzgch.zzc(listenableFutureZzh, listenableFutureZzh2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzevm
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevo((String) listenableFutureZzh.get(), (String) listenableFutureZzh2.get());
            }
        }, zzbzw.zza);
    }
}
