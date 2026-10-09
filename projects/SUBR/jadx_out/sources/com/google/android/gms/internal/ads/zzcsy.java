package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcsy implements com.google.android.gms.ads.internal.client.zza {
    private final zzctc zza;
    private final zzfcj zzb;

    zzcsy(zzctc zzctcVar, zzfcj zzfcjVar) {
        this.zza = zzctcVar;
        this.zzb = zzfcjVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        this.zza.zzc(this.zzb.zzf);
    }
}
