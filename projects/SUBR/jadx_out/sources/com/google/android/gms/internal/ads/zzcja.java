package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcja implements zzdft {
    private final zzcih zza;
    private zzezj zzb;
    private zzeym zzc;
    private zzdbm zzd;
    private zzcvc zze;
    private zzeiw zzf;

    /* synthetic */ zzcja(zzcih zzcihVar, zzcjm zzcjmVar) {
        this.zza = zzcihVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    public final /* synthetic */ zzcuy zza(zzeym zzeymVar) {
        this.zzc = zzeymVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    public final /* synthetic */ zzcuy zzb(zzezj zzezjVar) {
        this.zzb = zzezjVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdft
    public final /* bridge */ /* synthetic */ zzdft zzc(zzeiw zzeiwVar) {
        this.zzf = zzeiwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdft
    public final /* bridge */ /* synthetic */ zzdft zzd(zzdbm zzdbmVar) {
        this.zzd = zzdbmVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdft
    public final /* bridge */ /* synthetic */ zzdft zze(zzcvc zzcvcVar) {
        this.zze = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzdfu zzh() {
        zzhez.zzc(this.zzd, zzdbm.class);
        zzhez.zzc(this.zze, zzcvc.class);
        zzhez.zzc(this.zzf, zzeiw.class);
        return new zzcjb(this.zza, new zzcsf(), new zzfdo(), new zzcue(), new zzdsl(), this.zzd, this.zze, zzehb.zza(), this.zzf, null, this.zzb, this.zzc, null);
    }
}
