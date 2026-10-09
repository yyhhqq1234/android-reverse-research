package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import java.util.Optional;
import java.util.function.Consumer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzes extends zzce {
    final /* synthetic */ PreloadCallback zza;
    final /* synthetic */ zzex zzb;

    zzes(zzex zzexVar, PreloadCallback preloadCallback) {
        this.zza = preloadCallback;
        this.zzb = zzexVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcf
    public final void zze(zzft zzftVar) {
        Optional optionalZzk = zzex.zzk(this.zzb, zzftVar);
        final PreloadCallback preloadCallback = this.zza;
        optionalZzk.ifPresent(new Consumer() { // from class: com.google.android.gms.ads.internal.client.zzeq
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                preloadCallback.onAdsAvailable((PreloadConfiguration) obj);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzcf
    public final void zzf(zzft zzftVar) {
        Optional optionalZzk = zzex.zzk(this.zzb, zzftVar);
        final PreloadCallback preloadCallback = this.zza;
        optionalZzk.ifPresent(new Consumer() { // from class: com.google.android.gms.ads.internal.client.zzer
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                preloadCallback.onAdsExhausted((PreloadConfiguration) obj);
            }
        });
    }
}
