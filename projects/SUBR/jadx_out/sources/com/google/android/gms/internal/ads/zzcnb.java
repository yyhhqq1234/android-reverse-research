package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcnb implements zzbjp {
    final /* synthetic */ zzcnc zza;

    zzcnb(zzcnc zzcncVar) {
        this.zza = zzcncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        if (zzcnc.zzg(this.zza, map)) {
            this.zza.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcna
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza.zzd.zzj();
                }
            });
        }
    }
}
