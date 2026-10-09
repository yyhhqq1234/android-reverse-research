package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhcd extends zzgxr implements zzgzd {
    private static final zzhcd zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzhcc zzd;
    private int zzh;
    private byte zzi = 2;
    private zzgyd zze = zzbK();
    private zzgwj zzf = zzgwj.zzb;
    private zzgwj zzg = zzgwj.zzb;

    static {
        zzhcd zzhcdVar = new zzhcd();
        zza = zzhcdVar;
        zzgxr.zzbZ(zzhcd.class, zzhcdVar);
    }

    private zzhcd() {
    }

    public static zzhca zzc() {
        return (zzhca) zza.zzaZ();
    }

    static /* synthetic */ void zzf(zzhcd zzhcdVar, zzhbz zzhbzVar) {
        zzhbzVar.getClass();
        zzgyd zzgydVar = zzhcdVar.zze;
        if (!zzgydVar.zzc()) {
            zzhcdVar.zze = zzgxr.zzbL(zzgydVar);
        }
        zzhcdVar.zze.add(zzhbzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    protected final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        zzhdx zzhdxVar = null;
        switch (zzgxqVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzi);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzi = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return zzbQ(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", zzhbz.class, "zzf", "zzg", "zzh"});
            case NEW_MUTABLE_INSTANCE:
                return new zzhcd();
            case NEW_BUILDER:
                return new zzhca(zzhdxVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                zzgzk zzgxmVar = zzb;
                if (zzgxmVar == null) {
                    synchronized (zzhcd.class) {
                        zzgxmVar = zzb;
                        if (zzgxmVar == null) {
                            zzgxmVar = new zzgxm(zza);
                            zzb = zzgxmVar;
                        }
                        break;
                    }
                }
                return zzgxmVar;
            default:
                throw null;
        }
    }
}
