package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfrz extends zzftc {
    private String zza;
    private String zzb;

    zzfrz() {
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final zzftc zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final zzftc zzb(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final zzftd zzc() {
        return new zzfsb(this.zza, this.zzb, null);
    }
}
