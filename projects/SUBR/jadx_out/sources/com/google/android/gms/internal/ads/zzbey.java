package com.google.android.gms.internal.ads;

import androidx.work.WorkRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbey {
    public static final zzbdv zza;

    static {
        zzbdv.zzb("gads:ad_loader:timeout_ms", 60000L);
        zza = zzbdv.zzb("gads:rendering:timeout_ms", 60000L);
        zzbdv.zzb("gads:resolve_future:default_timeout_ms", WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
    }
}
