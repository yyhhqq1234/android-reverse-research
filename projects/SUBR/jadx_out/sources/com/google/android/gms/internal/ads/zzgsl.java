package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgsl extends zzgxr implements zzgzd {
    private static final zzgsl zza;
    private static volatile zzgzk zzb;
    private String zzc = "";
    private zzgwj zzd = zzgwj.zzb;
    private int zze;

    static {
        zzgsl zzgslVar = new zzgsl();
        zza = zzgslVar;
        zzgxr.zzbZ(zzgsl.class, zzgslVar);
    }

    private zzgsl() {
    }

    public static zzgsi zza() {
        return (zzgsi) zza.zzaZ();
    }

    public static zzgsl zzd() {
        return zza;
    }

    static /* synthetic */ void zzi(zzgsl zzgslVar, String str) {
        str.getClass();
        zzgslVar.zzc = str;
    }

    static /* synthetic */ void zzj(zzgsl zzgslVar, zzgwj zzgwjVar) {
        zzgwjVar.getClass();
        zzgslVar.zzd = zzgwjVar;
    }

    public final zzgsj zzb() {
        zzgsj zzgsjVar;
        int i = this.zze;
        if (i == 0) {
            zzgsjVar = zzgsj.UNKNOWN_KEYMATERIAL;
        } else if (i == 1) {
            zzgsjVar = zzgsj.SYMMETRIC;
        } else if (i == 2) {
            zzgsjVar = zzgsj.ASYMMETRIC_PRIVATE;
        } else if (i != 3) {
            zzgsjVar = i != 4 ? null : zzgsj.REMOTE;
        } else {
            zzgsjVar = zzgsj.ASYMMETRIC_PUBLIC;
        }
        return zzgsjVar == null ? zzgsj.UNRECOGNIZED : zzgsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int iOrdinal = zzgxqVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new zzgsl();
        }
        zzgsk zzgskVar = null;
        if (iOrdinal == 4) {
            return new zzgsi(zzgskVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        zzgzk zzgxmVar = zzb;
        if (zzgxmVar == null) {
            synchronized (zzgsl.class) {
                zzgxmVar = zzb;
                if (zzgxmVar == null) {
                    zzgxmVar = new zzgxm(zza);
                    zzb = zzgxmVar;
                }
            }
        }
        return zzgxmVar;
    }

    public final zzgwj zzf() {
        return this.zzd;
    }

    public final String zzg() {
        return this.zzc;
    }
}
