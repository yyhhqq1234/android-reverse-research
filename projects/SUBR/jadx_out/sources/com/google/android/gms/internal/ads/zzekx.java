package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzekx implements zzelc {
    final /* synthetic */ zzeky zza;

    zzekx(zzeky zzekyVar) {
        this.zza = zzekyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcqz zzcqzVar = (zzcqz) obj;
        synchronized (this.zza) {
            this.zza.zzc = zzcqzVar.zzm();
            zzcqzVar.zzk();
        }
    }
}
