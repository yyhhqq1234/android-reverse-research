package com.google.android.gms.internal.ads;

import org.json.vf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcbf implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcbg zzb;

    zzcbf(zzcbg zzcbgVar, boolean z) {
        this.zza = z;
        this.zzb = zzcbgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzK("windowVisibilityChanged", vf.k, String.valueOf(this.zza));
    }
}
