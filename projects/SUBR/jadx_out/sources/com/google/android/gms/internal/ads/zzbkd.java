package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbkd implements zzbke {
    final /* synthetic */ zzcab zza;

    zzbkd(zzbkf zzbkfVar, zzcab zzcabVar) {
        this.zza = zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbke
    public final void zza(String str) {
        this.zza.zzd(new zzbnv(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbke
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }
}
