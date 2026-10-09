package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzblj implements Runnable {
    final /* synthetic */ zzblm zza;

    zzblj(zzblm zzblmVar) {
        this.zza = zzblmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzblm.zzc(this.zza);
    }
}
