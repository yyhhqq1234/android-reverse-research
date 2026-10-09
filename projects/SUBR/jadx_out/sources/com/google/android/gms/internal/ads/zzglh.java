package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzglh {
    private final Class zza;
    private final Class zzb;

    /* synthetic */ zzglh(Class cls, Class cls2, zzglg zzglgVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzglh zzb(zzglf zzglfVar, Class cls, Class cls2) {
        return new zzgle(cls, cls2, zzglfVar);
    }

    public abstract zzgnm zza(zzgdx zzgdxVar, @Nullable zzgeo zzgeoVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
