package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcrb implements zzcrc {
    private final Map zza;

    zzcrb(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcrc
    public final zzecw zza(int i, String str) {
        return (zzecw) this.zza.get(str);
    }
}
