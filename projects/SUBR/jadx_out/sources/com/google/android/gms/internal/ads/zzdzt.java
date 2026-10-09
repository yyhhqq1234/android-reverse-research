package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzt {
    private final zzbve zza;

    zzdzt(zzbve zzbveVar) {
        this.zza = zzbveVar;
    }

    public final void zza() {
        ListenableFuture listenableFutureZza = this.zza.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhC)).booleanValue()) {
            zzbzz.zzb(listenableFutureZza, "persistFlags");
        } else {
            zzbzz.zza(listenableFutureZza, "persistFlags");
        }
    }
}
