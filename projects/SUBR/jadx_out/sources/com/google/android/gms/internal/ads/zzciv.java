package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzciv implements zzdsy {
    private final zzcih zza;
    private final zzciy zzb;
    private Long zzc;
    private String zzd;

    /* synthetic */ zzciv(zzcih zzcihVar, zzciy zzciyVar, zzcjm zzcjmVar) {
        this.zza = zzcihVar;
        this.zzb = zzciyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    public final /* bridge */ /* synthetic */ zzdsy zzb(long j) {
        this.zzc = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    public final zzdsz zzc() {
        zzhez.zzc(this.zzc, Long.class);
        zzhez.zzc(this.zzd, String.class);
        return new zzciw(this.zza, this.zzb, this.zzc, this.zzd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    public final /* bridge */ /* synthetic */ zzdsy zza(String str) {
        str.getClass();
        this.zzd = str;
        return this;
    }
}
