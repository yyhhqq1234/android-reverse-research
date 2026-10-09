package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdic {
    private zzbft zza;

    public zzdic(zzdhn zzdhnVar) {
        this.zza = zzdhnVar;
    }

    public final synchronized zzbft zza() {
        return this.zza;
    }

    public final synchronized void zzb(zzbft zzbftVar) {
        this.zza = zzbftVar;
    }
}
