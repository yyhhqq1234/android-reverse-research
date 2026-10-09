package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgqz extends zzgxr implements zzgzd {
    private static final zzgqz zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgrf zze;
    private zzgwj zzf = zzgwj.zzb;

    static {
        zzgqz zzgqzVar = new zzgqz();
        zza = zzgqzVar;
        zzgxr.zzbZ(zzgqz.class, zzgqzVar);
    }

    private zzgqz() {
    }

    public static zzgqx zzb() {
        return (zzgqx) zza.zzaZ();
    }

    public static zzgqz zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) throws zzgyg {
        return (zzgqz) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static zzgzk zzh() {
        return zza.zzbN();
    }

    static /* synthetic */ void zzj(zzgqz zzgqzVar, zzgrf zzgrfVar) {
        zzgrfVar.getClass();
        zzgqzVar.zze = zzgrfVar;
        zzgqzVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new zzgqz();
        }
        zzgqy zzgqyVar = null;
        if (iOrdinal == 4) {
            return new zzgqx(zzgqyVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzgqz.class) {
                zzgxmVar = zzb;
                if (zzgxmVar == null) {
                    zzgxmVar = new zzgxm(zza);
                    zzb = zzgxmVar;
                }
            }
        }
        return zzgxmVar;
    }

    public final zzgrf zzf() {
        zzgrf zzgrfVar = this.zze;
        return zzgrfVar == null ? zzgrf.zzd() : zzgrfVar;
    }

    public final zzgwj zzg() {
        return this.zzf;
    }
}
