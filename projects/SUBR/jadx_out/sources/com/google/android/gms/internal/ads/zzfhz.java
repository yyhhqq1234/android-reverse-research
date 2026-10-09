package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhz extends zzgxr implements zzgzd {
    private static final zzfhz zza;
    private static volatile zzgzk zzb;
    private String zzc = "";
    private int zzd;

    static {
        zzfhz zzfhzVar = new zzfhz();
        zza = zzfhzVar;
        zzgxr.zzbZ(zzfhz.class, zzfhzVar);
    }

    private zzfhz() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0004", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new zzfhz();
        }
        zzfhy zzfhyVar = null;
        if (iOrdinal == 4) {
            return new zzfhx(zzfhyVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzfhz.class) {
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
