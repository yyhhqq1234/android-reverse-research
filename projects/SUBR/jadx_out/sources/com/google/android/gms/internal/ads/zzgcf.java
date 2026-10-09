package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgcf {
    private final boolean zza;
    private final zzfxn zzb;

    /* synthetic */ zzgcf(boolean z, zzfxn zzfxnVar, zzgcg zzgcgVar) {
        this.zza = z;
        this.zzb = zzfxnVar;
    }

    public final ListenableFuture zza(Callable callable, Executor executor) {
        return new zzgbu(this.zzb, this.zza, executor, callable);
    }
}
