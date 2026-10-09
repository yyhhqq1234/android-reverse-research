package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzghr extends zzgeu {
    private final zzghp zza;
    private final String zzb;
    private final zzgho zzc;
    private final zzgeu zzd;

    /* synthetic */ zzghr(zzghp zzghpVar, String str, zzgho zzghoVar, zzgeu zzgeuVar, zzghq zzghqVar) {
        this.zza = zzghpVar;
        this.zzb = str;
        this.zzc = zzghoVar;
        this.zzd = zzgeuVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzghr)) {
            return false;
        }
        zzghr zzghrVar = (zzghr) obj;
        return zzghrVar.zzc.equals(this.zzc) && zzghrVar.zzd.equals(this.zzd) && zzghrVar.zzb.equals(this.zzb) && zzghrVar.zza.equals(this.zza);
    }

    public final int hashCode() {
        return Objects.hash(zzghr.class, this.zzb, this.zzc, this.zzd, this.zza);
    }

    public final String toString() {
        zzghp zzghpVar = this.zza;
        zzgeu zzgeuVar = this.zzd;
        return "LegacyKmsEnvelopeAead Parameters (kekUri: " + this.zzb + ", dekParsingStrategy: " + String.valueOf(this.zzc) + ", dekParametersForNewKeys: " + String.valueOf(zzgeuVar) + ", variant: " + String.valueOf(zzghpVar) + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zza != zzghp.zzb;
    }

    public final zzgeu zzb() {
        return this.zzd;
    }

    public final zzghp zzc() {
        return this.zza;
    }

    public final String zzd() {
        return this.zzb;
    }
}
