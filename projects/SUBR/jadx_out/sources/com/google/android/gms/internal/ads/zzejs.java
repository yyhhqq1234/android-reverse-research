package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzejs implements zzelc {
    final /* synthetic */ zzejt zza;

    zzejs(zzejt zzejtVar) {
        this.zza = zzejtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcom zzcomVar = (zzcom) obj;
        synchronized (this.zza) {
            zzejt zzejtVar = this.zza;
            if (zzejtVar.zzi != null) {
                zzejtVar.zzi.zzb();
            }
            this.zza.zzi = zzcomVar;
            this.zza.zzi.zzk();
        }
    }
}
