package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgyx {
    zzgyx() {
    }

    public static final boolean zza(Object obj) {
        return !((zzgyw) obj).zze();
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzgyw zzgywVarZzb = (zzgyw) obj;
        zzgyw zzgywVar = (zzgyw) obj2;
        if (!zzgywVar.isEmpty()) {
            if (!zzgywVarZzb.zze()) {
                zzgywVarZzb = zzgywVarZzb.zzb();
            }
            zzgywVarZzb.zzd(zzgywVar);
        }
        return zzgywVarZzb;
    }
}
