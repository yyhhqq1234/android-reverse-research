package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfmd implements Runnable {
    final /* synthetic */ zzfme zza;
    private final WebView zzb;

    zzfmd(zzfme zzfmeVar) {
        this.zza = zzfmeVar;
        this.zzb = zzfmeVar.zza;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.destroy();
    }
}
