package com.google.android.gms.internal.ads;

import androidx.core.internal.view.SupportMenu;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgxa {
    private final Object zza;
    private final int zzb;

    zzgxa(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgxa)) {
            return false;
        }
        zzgxa zzgxaVar = (zzgxa) obj;
        return this.zza == zzgxaVar.zza && this.zzb == zzgxaVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * SupportMenu.USER_MASK) + this.zzb;
    }
}
