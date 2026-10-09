package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfgf {
    private static final ListenableFuture zza = zzgch.zzh(null);
    private final zzgcs zzb;
    private final ScheduledExecutorService zzc;
    private final zzfgg zzd;

    public zzfgf(zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, zzfgg zzfggVar) {
        this.zzb = zzgcsVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfggVar;
    }

    public final zzffv zza(Object obj, ListenableFuture... listenableFutureArr) {
        return new zzffv(this, obj, Arrays.asList(listenableFutureArr), null);
    }

    public final zzfgd zzb(Object obj, ListenableFuture listenableFuture) {
        return new zzfgd(this, obj, listenableFuture, Collections.singletonList(listenableFuture), listenableFuture);
    }

    protected abstract String zzf(Object obj);
}
