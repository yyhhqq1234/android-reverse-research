package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgik extends zzgeu {
    private final zzgij zza;
    private final int zzb;

    private zzgik(zzgij zzgijVar, int i) {
        this.zza = zzgijVar;
        this.zzb = i;
    }

    public static zzgik zzd(zzgij zzgijVar, int i) throws GeneralSecurityException {
        if (i < 8 || i > 12) {
            throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
        }
        return new zzgik(zzgijVar, i);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgik)) {
            return false;
        }
        zzgik zzgikVar = (zzgik) obj;
        return zzgikVar.zza == this.zza && zzgikVar.zzb == this.zzb;
    }

    public final int hashCode() {
        return Objects.hash(zzgik.class, this.zza, Integer.valueOf(this.zzb));
    }

    public final String toString() {
        return "X-AES-GCM Parameters (variant: " + this.zza.toString() + "salt_size_bytes: " + this.zzb + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zza != zzgij.zzb;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zzgij zzc() {
        return this.zza;
    }
}
