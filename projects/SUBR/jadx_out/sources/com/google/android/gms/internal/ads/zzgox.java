package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgox {
    static {
        int i = zzgts.zza;
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzgpd.zzd();
        zzgoj.zzd();
        zzgor.zza(true);
        if (zzgkt.zzb()) {
            return;
        }
        zzgob.zzd(true);
    }
}
