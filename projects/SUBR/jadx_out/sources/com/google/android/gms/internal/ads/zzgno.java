package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgno {
    private final Class zza;
    private final zzgvo zzb;

    /* synthetic */ zzgno(Class cls, zzgvo zzgvoVar, zzgnq zzgnqVar) {
        this.zza = cls;
        this.zzb = zzgvoVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgno)) {
            return false;
        }
        zzgno zzgnoVar = (zzgno) obj;
        return zzgnoVar.zza.equals(this.zza) && zzgnoVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        zzgvo zzgvoVar = this.zzb;
        return this.zza.getSimpleName() + ", object identifier: " + String.valueOf(zzgvoVar);
    }
}
