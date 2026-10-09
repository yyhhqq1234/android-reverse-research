package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegz {
    private zzegq zza;

    zzegz() {
    }

    private zzegz(zzegq zzegqVar) {
        this.zza = zzegqVar;
    }

    public static zzegz zzb(zzegq zzegqVar) {
        return new zzegz(zzegqVar);
    }

    public final zzegq zza(Clock clock, zzegs zzegsVar, zzedb zzedbVar, zzfja zzfjaVar) {
        zzegq zzegqVar = this.zza;
        return zzegqVar != null ? zzegqVar : new zzegq(clock, zzegsVar, zzedbVar, zzfjaVar);
    }
}
