package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgmz {
    private final Class zza;
    private final Class zzb;

    /* synthetic */ zzgmz(Class cls, Class cls2, zzgna zzgnaVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgmz)) {
            return false;
        }
        zzgmz zzgmzVar = (zzgmz) obj;
        return zzgmzVar.zza.equals(this.zza) && zzgmzVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        Class cls = this.zzb;
        return this.zza.getSimpleName() + " with primitive type: " + cls.getSimpleName();
    }
}
