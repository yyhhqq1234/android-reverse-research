package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgll extends zzgek {
    private final zzgni zza;

    public zzgll(zzgni zzgniVar) {
        this.zza = zzgniVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgll)) {
            return false;
        }
        zzgni zzgniVar = ((zzgll) obj).zza;
        return this.zza.zzc().zzg().equals(zzgniVar.zzc().zzg()) && this.zza.zzc().zzi().equals(zzgniVar.zzc().zzi()) && this.zza.zzc().zzh().equals(zzgniVar.zzc().zzh());
    }

    public final int hashCode() {
        zzgni zzgniVar = this.zza;
        return Objects.hash(zzgniVar.zzc(), zzgniVar.zzd());
    }

    public final String toString() {
        String str;
        Object[] objArr = new Object[2];
        objArr[0] = this.zza.zzc().zzi();
        int iOrdinal = this.zza.zzc().zzg().ordinal();
        if (iOrdinal == 1) {
            str = "TINK";
        } else if (iOrdinal == 2) {
            str = "LEGACY";
        } else if (iOrdinal != 3) {
            str = iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        objArr[1] = str;
        return String.format("(typeUrl=%s, outputPrefixType=%s)", objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zza.zzc().zzg() != zzgtp.RAW;
    }

    public final zzgni zzb() {
        return this.zza;
    }
}
