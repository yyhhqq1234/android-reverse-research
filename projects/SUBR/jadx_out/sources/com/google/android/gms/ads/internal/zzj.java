package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzj implements zzfol {
    final /* synthetic */ zzk zza;

    zzj(zzk zzkVar) {
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    public final void zza(int i, long j) {
        this.zza.zzi.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfol
    public final void zzb(int i, long j, String str) {
        this.zza.zzi.zze(i, System.currentTimeMillis() - j, str);
    }
}
