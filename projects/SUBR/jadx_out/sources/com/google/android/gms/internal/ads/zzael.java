package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzael implements zzaeb {
    public final String zza;

    private zzael(String str) {
        this.zza = str;
    }

    public static zzael zzb(zzdy zzdyVar) {
        return new zzael(zzdyVar.zzB(zzdyVar.zzb(), StandardCharsets.UTF_8));
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final int zza() {
        return 1852994675;
    }
}
