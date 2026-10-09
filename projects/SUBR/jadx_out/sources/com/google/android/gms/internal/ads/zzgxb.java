package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgxb {
    static final zzgxb zza = new zzgxb(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzgxb zzd;
    private final Map zze;

    zzgxb() {
        this.zze = new HashMap();
    }

    public static zzgxb zza() {
        int i = zzgzm.zza;
        return zza;
    }

    public static zzgxb zzb() {
        zzgxb zzgxbVar = zzd;
        if (zzgxbVar != null) {
            return zzgxbVar;
        }
        synchronized (zzgxb.class) {
            zzgxb zzgxbVar2 = zzd;
            if (zzgxbVar2 != null) {
                return zzgxbVar2;
            }
            int i = zzgzm.zza;
            zzgxb zzgxbVarZzb = zzgxj.zzb(zzgxb.class);
            zzd = zzgxbVarZzb;
            return zzgxbVarZzb;
        }
    }

    public final zzgxp zzc(zzgzc zzgzcVar, int i) {
        return (zzgxp) this.zze.get(new zzgxa(zzgzcVar, i));
    }

    zzgxb(boolean z) {
        this.zze = Collections.emptyMap();
    }
}
