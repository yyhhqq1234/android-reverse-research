package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzban implements Runnable {
    final /* synthetic */ zzbar zza;

    zzban(zzbar zzbarVar) {
        this.zza = zzbarVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbar.zzh(this.zza);
    }
}
