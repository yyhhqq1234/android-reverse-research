package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcur implements zzcxh, zzcwo {
    private final zzfbo zza;

    public zzcur(Context context, zzfbo zzfboVar, zzbtj zzbtjVar) {
        this.zza = zzfboVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdh(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdj(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdk(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzs() {
        zzbtk zzbtkVar = this.zza.zzad;
        if (zzbtkVar == null || !zzbtkVar.zza) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.zza.zzad.zzb.isEmpty()) {
            return;
        }
        arrayList.add(this.zza.zzad.zzb);
    }
}
