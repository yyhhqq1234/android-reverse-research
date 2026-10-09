package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzatg extends zzgxr implements zzgzd {
    private static final zzatg zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzf;
    private long zzh;
    private String zzd = "";
    private String zze = "";
    private String zzg = "D";

    static {
        zzatg zzatgVar = new zzatg();
        zza = zzatgVar;
        zzgxr.zzbZ(zzatg.class, zzatgVar);
    }

    private zzatg() {
    }

    public static zzatf zza() {
        return (zzatf) zza.zzaZ();
    }

    static /* synthetic */ void zzc(zzatg zzatgVar, String str) {
        zzatgVar.zzc |= 1;
        zzatgVar.zzd = "1.671910402";
    }

    static /* synthetic */ void zzd(zzatg zzatgVar, String str) {
        str.getClass();
        zzatgVar.zzc |= 2;
        zzatgVar.zze = str;
    }

    static /* synthetic */ void zzf(zzatg zzatgVar, String str) {
        str.getClass();
        zzatgVar.zzc |= 8;
        zzatgVar.zzg = str;
    }

    static /* synthetic */ void zzg(zzatg zzatgVar, long j) {
        zzatgVar.zzc |= 4;
        zzatgVar.zzf = j;
    }

    static /* synthetic */ void zzh(zzatg zzatgVar, long j) {
        zzatgVar.zzc |= 16;
        zzatgVar.zzh = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဈ\u0003\u0005ဂ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (iOrdinal == 3) {
            return new zzatg();
        }
        zzato zzatoVar = null;
        if (iOrdinal == 4) {
            return new zzatf(zzatoVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzatg.class) {
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
