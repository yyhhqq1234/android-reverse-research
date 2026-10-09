package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhba extends zzgxr implements zzgzd {
    private static final zzhba zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzd;
    private long zze;

    static {
        zzhba zzhbaVar = new zzhba();
        zza = zzhbaVar;
        zzgxr.zzbZ(zzhba.class, zzhbaVar);
    }

    private zzhba() {
    }

    public static zzhaz zzc() {
        return (zzhaz) zza.zzaZ();
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new zzhba();
        }
        zzhbd zzhbdVar = null;
        if (iOrdinal == 4) {
            return new zzhaz(zzhbdVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzhba.class) {
                zzgxmVar = zzb;
                if (zzgxmVar == null) {
                    zzgxmVar = new zzgxm(zza);
                    zzb = zzgxmVar;
                }
            }
        }
        return zzgxmVar;
    }
}
