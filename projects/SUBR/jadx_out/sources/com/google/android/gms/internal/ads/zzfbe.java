package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfbe implements zzelc {
    final /* synthetic */ zzfbf zza;

    zzfbe(zzfbf zzfbfVar) {
        this.zza = zzfbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdoa zzdoaVar = (zzdoa) obj;
        synchronized (this.zza) {
            this.zza.zzi = zzdoaVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdF)).booleanValue()) {
                zzdoaVar.zzd().zza = this.zza.zzd;
            }
            this.zza.zzi.zzk();
        }
    }
}
