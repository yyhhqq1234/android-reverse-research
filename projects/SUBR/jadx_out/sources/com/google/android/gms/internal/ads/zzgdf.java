package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgdf extends zzgbx {

    @CheckForNull
    private ListenableFuture zza;

    @CheckForNull
    private ScheduledFuture zzb;

    static ListenableFuture zzf(ListenableFuture listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgdf zzgdfVar = new zzgdf(listenableFuture);
        zzgdc zzgdcVar = new zzgdc(zzgdfVar);
        zzgdfVar.zzb = scheduledExecutorService.schedule(zzgdcVar, j, timeUnit);
        listenableFuture.addListener(zzgdcVar, zzgbv.INSTANCE);
        return zzgdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    @CheckForNull
    protected final String zza() {
        ListenableFuture listenableFuture = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (listenableFuture == null) {
            return null;
        }
        String str = "inputFuture=[" + listenableFuture.toString() + y8.i.e;
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    protected final void zzb() {
        zzr(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }

    private zzgdf(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
    }
}
