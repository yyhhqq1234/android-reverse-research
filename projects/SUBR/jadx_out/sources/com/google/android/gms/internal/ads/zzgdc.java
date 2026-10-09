package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgdc implements Runnable {

    @CheckForNull
    zzgdf zza;

    zzgdc(zzgdf zzgdfVar) {
        this.zza = zzgdfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture;
        zzgdf zzgdfVar = this.zza;
        if (zzgdfVar == null || (listenableFuture = zzgdfVar.zza) == null) {
            return;
        }
        this.zza = null;
        if (listenableFuture.isDone()) {
            zzgdfVar.zzs(listenableFuture);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = zzgdfVar.zzb;
            zzgdfVar.zzb = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th) {
                    zzgdfVar.zzd(new zzgdd(str, null));
                    throw th;
                }
            }
            zzgdfVar.zzd(new zzgdd(str + ": " + listenableFuture.toString(), null));
            listenableFuture.cancel(true);
        } catch (Throwable th2) {
            listenableFuture.cancel(true);
            throw th2;
        }
    }
}
