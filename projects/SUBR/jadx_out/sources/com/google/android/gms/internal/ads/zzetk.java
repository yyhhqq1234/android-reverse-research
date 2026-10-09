package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzetk implements zzetr {
    private final boolean zza;

    zzetk(zzezj zzezjVar) {
        this.zza = zzezjVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return zzgch.zzh(new zzeti(this.zza, null));
    }
}
