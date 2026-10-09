package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Strings;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeoe implements zzetr {
    private final zzeym zza;

    zzeoe(zzeym zzeymVar) {
        this.zza = zzeymVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        zzeym zzeymVar = this.zza;
        if (zzeymVar == null) {
            return zzgch.zzh(new zzeod(null));
        }
        String strZza = zzeymVar.zza();
        return Strings.isEmptyOrWhitespace(strZza) ? zzgch.zzh(new zzeod(null)) : zzgch.zzh(new zzeod(strZza));
    }
}
