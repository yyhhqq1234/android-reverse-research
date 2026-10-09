package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbst extends zzbhj {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbst(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zze(zzbht zzbhtVar) {
        this.zza.onNativeAdLoaded(new zzbsn(zzbhtVar));
    }
}
