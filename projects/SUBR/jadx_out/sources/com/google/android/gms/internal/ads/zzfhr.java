package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhr extends zzgxr implements zzgzd {
    private static final zzfhr zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzfho zzd;

    static {
        zzfhr zzfhrVar = new zzfhr();
        zza = zzfhrVar;
        zzgxr.zzbZ(zzfhr.class, zzfhrVar);
    }

    private zzfhr() {
    }

    public static zzfhq zza() {
        return (zzfhq) zza.zzaZ();
    }

    static /* synthetic */ void zzc(zzfhr zzfhrVar, zzfho zzfhoVar) {
        zzfhoVar.getClass();
        zzfhrVar.zzd = zzfhoVar;
        zzfhrVar.zzc |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new zzfhr();
        }
        zzfhs zzfhsVar = null;
        if (iOrdinal == 4) {
            return new zzfhq(zzfhsVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzfhr.class) {
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
