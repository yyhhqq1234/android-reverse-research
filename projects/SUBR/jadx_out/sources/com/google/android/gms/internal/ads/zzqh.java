package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqh implements zzpp {
    final /* synthetic */ zzqm zza;

    /* synthetic */ zzqh(zzqm zzqmVar, zzql zzqlVar) {
        this.zza = zzqmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zza(long j) {
        zzdo.zzf("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zzb(long j) {
        zzqm zzqmVar = this.zza;
        if (zzqmVar.zzp != null) {
            ((zzqq) zzqmVar.zzp).zza.zzc.zzv(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zzc(long j, long j2, long j3, long j4) {
        zzqm zzqmVar = this.zza;
        zzdo.zzf("DefaultAudioSink", "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + zzqmVar.zzL() + ", " + zzqmVar.zzM());
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zzd(long j, long j2, long j3, long j4) {
        zzqm zzqmVar = this.zza;
        zzdo.zzf("DefaultAudioSink", "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + zzqmVar.zzL() + ", " + zzqmVar.zzM());
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zze(int i, long j) {
        zzqm zzqmVar = this.zza;
        if (zzqmVar.zzp != null) {
            ((zzqq) this.zza.zzp).zza.zzc.zzx(i, j, SystemClock.elapsedRealtime() - zzqmVar.zzV);
        }
    }
}
