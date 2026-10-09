package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhdl extends zzgxr implements zzgzd {
    private static final zzhdl zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private String zze = "";

    static {
        zzhdl zzhdlVar = new zzhdl();
        zza = zzhdlVar;
        zzgxr.zzbZ(zzhdl.class, zzhdlVar);
    }

    private zzhdl() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", zzhdk.zza, "zze"});
        }
        if (iOrdinal == 3) {
            return new zzhdl();
        }
        zzhdx zzhdxVar = null;
        if (iOrdinal == 4) {
            return new zzhdj(zzhdxVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzhdl.class) {
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
