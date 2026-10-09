package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemb implements zzetr {
    private final ListenableFuture zza;
    private final Executor zzb;
    private final ScheduledExecutorService zzc;

    zzemb(ListenableFuture listenableFuture, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = listenableFuture;
        this.zzb = executor;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        ListenableFuture listenableFutureZzn = zzgch.zzn(this.zza, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return zzgch.zzh(new zzemc((String) obj));
            }
        }, this.zzb);
        if (((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmp)).intValue() > 0) {
            listenableFutureZzn = zzgch.zzo(listenableFutureZzn, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmp)).intValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgch.zzf(listenableFutureZzn, Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzema
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return ((Throwable) obj) instanceof TimeoutException ? zzgch.zzh(new zzemc(Integer.toString(17))) : zzgch.zzh(new zzemc(null));
            }
        }, this.zzb);
    }
}
