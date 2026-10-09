package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfmr implements Runnable {
    zzfmr() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzfmu.zzc != null) {
            zzfmu.zzc.post(zzfmu.zzd);
            zzfmu.zzc.postDelayed(zzfmu.zze, 200L);
        }
    }
}
