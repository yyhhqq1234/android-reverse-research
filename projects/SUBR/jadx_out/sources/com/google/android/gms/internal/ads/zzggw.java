package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggw extends zzgeu {
    private final zzggv zza;

    private zzggw(zzggv zzggvVar) {
        this.zza = zzggvVar;
    }

    public static zzggw zzc(zzggv zzggvVar) {
        return new zzggw(zzggvVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzggw) && ((zzggw) obj).zza == this.zza;
    }

    public final int hashCode() {
        return Objects.hash(zzggw.class, this.zza);
    }

    public final String toString() {
        return "ChaCha20Poly1305 Parameters (variant: " + this.zza.toString() + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zza != zzggv.zzc;
    }

    public final zzggv zzb() {
        return this.zza;
    }
}
