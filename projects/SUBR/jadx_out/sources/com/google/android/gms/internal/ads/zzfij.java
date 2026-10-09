package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfij extends zzgxr implements zzgzd {
    private static final zzfij zza;
    private static volatile zzgzk zzb;
    private zzgyd zzc = zzbK();

    static {
        zzfij zzfijVar = new zzfij();
        zza = zzfijVar;
        zzgxr.zzbZ(zzfij.class, zzfijVar);
    }

    private zzfij() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfig.class});
        }
        if (iOrdinal == 3) {
            return new zzfij();
        }
        zzfii zzfiiVar = null;
        if (iOrdinal == 4) {
            return new zzfih(zzfiiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzfij.class) {
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
