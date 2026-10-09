package com.google.android.gms.internal.ads;

import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwv implements zzher {
    public static zzdwv zza() {
        return zzdwu.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        com.google.android.gms.ads.internal.zzv.zzq();
        String string = UUID.randomUUID().toString();
        zzhez.zzb(string);
        return string;
    }
}
