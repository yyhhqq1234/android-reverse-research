package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzaex {
    protected final zzadt zza;

    protected zzaex(zzadt zzadtVar) {
        this.zza = zzadtVar;
    }

    protected abstract boolean zza(zzdy zzdyVar) throws zzbc;

    protected abstract boolean zzb(zzdy zzdyVar, long j) throws zzbc;

    public final boolean zzf(zzdy zzdyVar, long j) throws zzbc {
        return zza(zzdyVar) && zzb(zzdyVar, j);
    }
}
