package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafe extends zzacz {
    private final long zza;

    public zzafe(zzaco zzacoVar, long j) {
        super(zzacoVar);
        zzcw.zzd(zzacoVar.zzf() >= j);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzacz, com.google.android.gms.internal.ads.zzaco
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacz, com.google.android.gms.internal.ads.zzaco
    public final long zze() {
        return super.zze() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacz, com.google.android.gms.internal.ads.zzaco
    public final long zzf() {
        return super.zzf() - this.zza;
    }
}
