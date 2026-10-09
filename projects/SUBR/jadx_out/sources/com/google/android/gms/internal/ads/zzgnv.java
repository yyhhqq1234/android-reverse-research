package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgnv {

    @Nullable
    private zzgof zza = null;

    @Nullable
    private zzgvp zzb = null;

    @Nullable
    private Integer zzc = null;

    private zzgnv() {
    }

    /* synthetic */ zzgnv(zzgnw zzgnwVar) {
    }

    public final zzgnv zza(zzgvp zzgvpVar) throws GeneralSecurityException {
        this.zzb = zzgvpVar;
        return this;
    }

    public final zzgnv zzb(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgnv zzc(zzgof zzgofVar) {
        this.zza = zzgofVar;
        return this;
    }

    public final zzgnx zzd() throws GeneralSecurityException {
        zzgvp zzgvpVar;
        zzgvo zzgvoVarZza;
        zzgof zzgofVar = this.zza;
        if (zzgofVar == null || (zzgvpVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgofVar.zzc() != zzgvpVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgofVar.zza() && this.zzc == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.zza.zza() && this.zzc != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.zza.zzf() == zzgod.zzd) {
            zzgvoVarZza = zzgml.zza;
        } else if (this.zza.zzf() == zzgod.zzc || this.zza.zzf() == zzgod.zzb) {
            zzgvoVarZza = zzgml.zza(this.zzc.intValue());
        } else {
            if (this.zza.zzf() != zzgod.zza) {
                throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(String.valueOf(this.zza.zzf()))));
            }
            zzgvoVarZza = zzgml.zzb(this.zzc.intValue());
        }
        return new zzgnx(this.zza, this.zzb, zzgvoVarZza, this.zzc, null);
    }
}
