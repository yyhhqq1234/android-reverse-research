package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzgts extends zzgxr implements zzgzd {
    public static final /* synthetic */ int zza = 0;
    private static final zzgts zzb;
    private static volatile zzgzk zzc;
    private String zzd = "";
    private zzgyd zze = zzbK();

    static {
        zzgts zzgtsVar = new zzgts();
        zzb = zzgtsVar;
        zzgxr.zzbZ(zzgts.class, zzgtsVar);
    }

    private zzgts() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzgss.class});
        }
        if (iOrdinal == 3) {
            return new zzgts();
        }
        zzgtr zzgtrVar = null;
        if (iOrdinal == 4) {
            return new zzgtq(zzgtrVar);
        }
        if (iOrdinal == 5) {
            return zzb;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzc;
        if (zzgxmVar == null) {
            synchronized (zzgts.class) {
                zzgxmVar = zzc;
                if (zzgxmVar == null) {
                    zzgxmVar = new zzgxm(zzb);
                    zzc = zzgxmVar;
                }
            }
        }
        return zzgxmVar;
    }
}
