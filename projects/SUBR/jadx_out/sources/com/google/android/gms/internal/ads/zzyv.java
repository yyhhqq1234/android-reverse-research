package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzyv implements Runnable {
    private final zzyu zza;

    public zzyv(zzyu zzyuVar) {
        this.zza = zzyuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzL();
    }
}
