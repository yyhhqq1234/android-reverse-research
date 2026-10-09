package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgfk extends zzgeu {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final zzgfi zze;
    private final zzgfh zzf;

    /* synthetic */ zzgfk(int i, int i2, int i3, int i4, zzgfi zzgfiVar, zzgfh zzgfhVar, zzgfj zzgfjVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = zzgfiVar;
        this.zzf = zzgfhVar;
    }

    public static zzgfg zzf() {
        return new zzgfg(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgfk)) {
            return false;
        }
        zzgfk zzgfkVar = (zzgfk) obj;
        return zzgfkVar.zza == this.zza && zzgfkVar.zzb == this.zzb && zzgfkVar.zzc == this.zzc && zzgfkVar.zzd == this.zzd && zzgfkVar.zze == this.zze && zzgfkVar.zzf == this.zzf;
    }

    public final int hashCode() {
        return Objects.hash(zzgfk.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), this.zze, this.zzf);
    }

    public final String toString() {
        zzgfh zzgfhVar = this.zzf;
        return "AesCtrHmacAead Parameters (variant: " + String.valueOf(this.zze) + ", hashType: " + String.valueOf(zzgfhVar) + ", " + this.zzc + "-byte IV, and " + this.zzd + "-byte tags, and " + this.zza + "-byte AES key, and " + this.zzb + "-byte HMAC key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zze != zzgfi.zzc;
    }

    public final int zzb() {
        return this.zza;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        return this.zzd;
    }

    public final zzgfh zzg() {
        return this.zzf;
    }

    public final zzgfi zzh() {
        return this.zze;
    }
}
