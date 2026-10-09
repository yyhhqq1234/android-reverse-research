package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeyx implements zzfuc {
    final /* synthetic */ zzezb zza;

    zzeyx(zzezb zzezbVar) {
        this.zza = zzezbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuc
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        com.google.android.gms.ads.internal.util.client.zzo.zzh("", (zzdyh) obj);
        com.google.android.gms.ads.internal.util.zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzezb zzezbVar = this.zza;
        zzezbVar.zzd = new zzeyz(null, zzezbVar.zze(), null);
        return this.zza.zzd;
    }
}
