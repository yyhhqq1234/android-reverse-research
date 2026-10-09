package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzapv;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzbi implements zzapq {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbk zzb;

    zzbi(zzbo zzboVar, String str, zzbk zzbkVar) {
        this.zza = str;
        this.zzb = zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapq
    public final void zza(zzapv zzapvVar) {
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load URL: " + this.zza + "\n" + zzapvVar.toString());
        this.zzb.zza((Object) null);
    }
}
