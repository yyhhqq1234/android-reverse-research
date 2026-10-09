package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzere implements zzetq {
    private final Boolean zza;

    public zzere(Boolean bool) {
        this.zza = bool;
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Boolean bool = this.zza;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (bool != null) {
            zzcuvVar.zza.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
