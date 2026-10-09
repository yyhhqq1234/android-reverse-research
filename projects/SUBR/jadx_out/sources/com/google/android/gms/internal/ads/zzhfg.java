package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhfg implements zzhfa {
    private static final Object zza = new Object();
    private volatile zzhfa zzb;
    private volatile Object zzc = zza;

    private zzhfg(zzhfa zzhfaVar) {
        this.zzb = zzhfaVar;
    }

    public static zzhfa zza(zzhfa zzhfaVar) {
        return ((zzhfaVar instanceof zzhfg) || (zzhfaVar instanceof zzheq)) ? zzhfaVar : new zzhfg(zzhfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj != zza) {
            return obj;
        }
        zzhfa zzhfaVar = this.zzb;
        if (zzhfaVar == null) {
            return this.zzc;
        }
        Object objZzb = zzhfaVar.zzb();
        this.zzc = objZzb;
        this.zzb = null;
        return objZzb;
    }
}
