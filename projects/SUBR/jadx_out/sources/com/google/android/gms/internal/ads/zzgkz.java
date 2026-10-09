package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgkz {
    private static final Logger zza = Logger.getLogger(zzgkz.class.getName());
    private static final zzgkz zzb = new zzgkz();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final ConcurrentMap zzd = new ConcurrentHashMap();

    public static zzgkz zzc() {
        return zzb;
    }

    private final synchronized zzgdy zzg(String str) throws GeneralSecurityException {
        if (!this.zzc.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (zzgdy) this.zzc.get(str);
    }

    private final synchronized void zzh(zzgdy zzgdyVar, boolean z, boolean z2) throws GeneralSecurityException {
        String str = ((zzgli) zzgdyVar).zza;
        if (this.zzd.containsKey(str) && !((Boolean) this.zzd.get(str)).booleanValue()) {
            throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
        }
        zzgdy zzgdyVar2 = (zzgdy) this.zzc.get(str);
        if (zzgdyVar2 != null && !zzgdyVar2.getClass().equals(zzgdyVar.getClass())) {
            zza.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(str));
            throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzgdyVar2.getClass().getName(), zzgdyVar.getClass().getName()));
        }
        this.zzc.putIfAbsent(str, zzgdyVar);
        this.zzd.put(str, true);
    }

    public final zzgdy zza(String str, Class cls) throws GeneralSecurityException {
        zzgdy zzgdyVarZzg = zzg(str);
        if (zzgdyVarZzg.zzb().equals(cls)) {
            return zzgdyVarZzg;
        }
        throw new GeneralSecurityException("Primitive type " + cls.getName() + " not supported by key manager of type " + String.valueOf(zzgdyVarZzg.getClass()) + ", which only supports: " + zzgdyVarZzg.zzb().toString());
    }

    public final zzgdy zzb(String str) throws GeneralSecurityException {
        return zzg(str);
    }

    public final synchronized void zzd(zzgdy zzgdyVar, boolean z) throws GeneralSecurityException {
        zzf(zzgdyVar, 1, true);
    }

    public final boolean zze(String str) {
        return ((Boolean) this.zzd.get(str)).booleanValue();
    }

    public final synchronized void zzf(zzgdy zzgdyVar, int i, boolean z) throws GeneralSecurityException {
        if (!zzgks.zza(i)) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        zzh(zzgdyVar, false, true);
    }
}
