package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfus extends zzful {
    private final Object zza;

    zzfus(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzfus) {
            return this.zza.equals(((zzfus) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza.toString() + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final zzful zza(zzfuc zzfucVar) {
        Object objApply = zzfucVar.apply(this.zza);
        zzfun.zzc(objApply, "the Function passed to Optional.transform() must not return null.");
        return new zzfus(objApply);
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Object zzb(Object obj) {
        return this.zza;
    }
}
