package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdvp extends AdListener {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdvs zzb;

    zzdvp(zzdvs zzdvsVar, String str) {
        this.zza = str;
        this.zzb = zzdvsVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.zzb.zzm(zzdvs.zzl(loadAdError), this.zza);
    }
}
