package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgmp {
    private final zzgvo zza;
    private final Class zzb;

    /* synthetic */ zzgmp(zzgvo zzgvoVar, Class cls, zzgmo zzgmoVar) {
        this.zza = zzgvoVar;
        this.zzb = cls;
    }

    public static zzgmp zzb(zzgmn zzgmnVar, zzgvo zzgvoVar, Class cls) {
        return new zzgmm(zzgvoVar, cls, zzgmnVar);
    }

    public abstract zzgek zza(zzgnm zzgnmVar) throws GeneralSecurityException;

    public final zzgvo zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
