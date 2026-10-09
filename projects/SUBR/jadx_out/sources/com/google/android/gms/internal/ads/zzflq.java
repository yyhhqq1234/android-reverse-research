package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflq implements Runnable {
    final /* synthetic */ WebView zza;
    final /* synthetic */ String zzb;

    zzflq(zzflr zzflrVar, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzflr.zzk(this.zza, this.zzb);
    }
}
