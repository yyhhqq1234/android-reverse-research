package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdya implements zzcyq {
    private final Context zza;
    private final zzbyi zzb;

    zzdya(Context context, zzbyi zzbyiVar) {
        this.zza = context;
        this.zzb = zzbyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcyq
    public final void zzdl(zzbvk zzbvkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcyq
    public final void zzdm(zzfca zzfcaVar) {
        if (TextUtils.isEmpty(zzfcaVar.zzb.zzb.zze)) {
            return;
        }
        this.zzb.zzm(this.zza, zzfcaVar.zza.zza.zzd);
        this.zzb.zzi(this.zza, zzfcaVar.zzb.zzb.zze);
    }
}
