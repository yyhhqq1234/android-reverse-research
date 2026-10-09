package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzkx {
    private static final zzkx zza = new zzkt(null);
    private static final zzkx zzb = new zzkv(0 == true ? 1 : 0);

    /* synthetic */ zzkx(zzkw zzkwVar) {
    }

    static zzkx zzc() {
        return zza;
    }

    static zzkx zzd() {
        return zzb;
    }

    abstract void zza(Object obj, long j);

    abstract void zzb(Object obj, Object obj2, long j);
}
