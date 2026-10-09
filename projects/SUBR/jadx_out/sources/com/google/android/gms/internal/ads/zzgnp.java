package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgnp {
    private final Class zza;
    private final Class zzb;

    /* synthetic */ zzgnp(Class cls, Class cls2, zzgnq zzgnqVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgnp)) {
            return false;
        }
        zzgnp zzgnpVar = (zzgnp) obj;
        return zzgnpVar.zza.equals(this.zza) && zzgnpVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        Class cls = this.zzb;
        return this.zza.getSimpleName() + " with serialization type: " + cls.getSimpleName();
    }
}
