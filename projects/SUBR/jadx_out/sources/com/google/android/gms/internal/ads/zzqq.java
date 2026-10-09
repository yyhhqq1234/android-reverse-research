package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqq implements zzpj {
    final /* synthetic */ zzqs zza;

    /* synthetic */ zzqq(zzqs zzqsVar, zzqr zzqrVar) {
        this.zza = zzqsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpj
    public final void zza(Exception exc) {
        zzdo.zzd("MediaCodecAudioRenderer", "Audio sink error", exc);
        this.zza.zzc.zzb(exc);
    }
}
