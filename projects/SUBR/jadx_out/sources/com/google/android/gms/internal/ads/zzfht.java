package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfht extends zzgxr implements zzgzd {
    private static final zzfht zza;
    private static volatile zzgzk zzb;
    private zzgyd zzc = zzbK();

    static {
        zzfht zzfhtVar = new zzfht();
        zza = zzfhtVar;
        zzgxr.zzbZ(zzfht.class, zzfhtVar);
    }

    private zzfht() {
    }

    public static zzfhp zzb() {
        return (zzfhp) zza.zzaZ();
    }

    static /* synthetic */ void zzd(zzfht zzfhtVar, zzfhr zzfhrVar) {
        zzfhrVar.getClass();
        zzgyd zzgydVar = zzfhtVar.zzc;
        if (!zzgydVar.zzc()) {
            zzfhtVar.zzc = zzgxr.zzbL(zzgydVar);
        }
        zzfhtVar.zzc.add(zzfhrVar);
    }

    public final int zza() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfhr.class});
        }
        if (iOrdinal == 3) {
            return new zzfht();
        }
        zzfhs zzfhsVar = null;
        if (iOrdinal == 4) {
            return new zzfhp(zzfhsVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzfht.class) {
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
