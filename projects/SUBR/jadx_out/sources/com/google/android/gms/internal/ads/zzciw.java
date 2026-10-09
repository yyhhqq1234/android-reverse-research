package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzciw implements zzdsz {
    private final Long zza;
    private final String zzb;
    private final zzcih zzc;
    private final zzciy zzd;

    /* synthetic */ zzciw(zzcih zzcihVar, zzciy zzciyVar, Long l, String str, zzcjm zzcjmVar) {
        this.zzc = zzcihVar;
        this.zzd = zzciyVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdsz
    public final zzdtj zza() {
        zzciy zzciyVar = this.zzd;
        return zzdtk.zza(this.zza.longValue(), zzciyVar.zza, zzdtd.zzc(zzciyVar.zzb), this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdsz
    public final zzdtn zzb() {
        zzciy zzciyVar = this.zzd;
        return zzdto.zza(this.zza.longValue(), zzciyVar.zza, zzdtd.zzc(zzciyVar.zzb), this.zzc, this.zzb);
    }
}
