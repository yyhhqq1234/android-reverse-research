package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffv {
    final /* synthetic */ zzfgf zza;
    private final Object zzb;
    private final List zzc;

    /* synthetic */ zzffv(zzfgf zzfgfVar, Object obj, List list, zzfge zzfgeVar) {
        this.zza = zzfgfVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final zzfgd zza(Callable callable) {
        zzgcf zzgcfVarZzb = zzgch.zzb(this.zzc);
        ListenableFuture listenableFutureZza = zzgcfVarZzb.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzffu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzbzw.zzg);
        ListenableFuture listenableFutureZza2 = zzgcfVarZzb.zza(callable, this.zza.zzb);
        return new zzfgd(this.zza, this.zzb, listenableFutureZza, this.zzc, listenableFutureZza2);
    }
}
