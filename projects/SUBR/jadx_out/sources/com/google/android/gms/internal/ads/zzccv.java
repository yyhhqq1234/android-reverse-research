package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccv implements Runnable {
    final /* synthetic */ zzccw zza;

    zzccv(zzccw zzccwVar) {
        this.zza = zzccwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzv.zzz().zzc(this.zza);
    }
}
