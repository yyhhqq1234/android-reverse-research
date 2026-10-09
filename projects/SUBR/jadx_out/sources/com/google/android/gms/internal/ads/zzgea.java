package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgea {
    public static final zzgek zza(zzgek zzgekVar) throws GeneralSecurityException {
        return zzgekVar != null ? zzgekVar : zzgeq.zza(zzb(null).zzaV());
    }

    static final zzgsp zzb(zzgek zzgekVar) {
        try {
            return ((zzgni) zzgmk.zzc().zze(null, zzgni.class)).zzc();
        } catch (GeneralSecurityException e) {
            throw new zzgnt("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), e);
        }
    }
}
