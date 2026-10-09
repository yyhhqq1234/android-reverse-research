package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzdee;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbm implements zzdee {
    private final zzb zza;
    private final int zzb;
    private final String zzc;

    public zzbm(zzb zzbVar, int i, String str) {
        this.zza = zzbVar;
        this.zzb = i;
        this.zzc = str;
    }

    final /* synthetic */ void zza(zzbk zzbkVar) {
        this.zza.zzd(this.zzc, zzbkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zze(final zzbk zzbkVar) {
        if (zzbkVar == null || this.zzb != 2 || TextUtils.isEmpty(this.zzc)) {
            return;
        }
        com.google.android.gms.ads.internal.util.zzs.zzh(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbl
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(zzbkVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zzf(String str) {
    }
}
