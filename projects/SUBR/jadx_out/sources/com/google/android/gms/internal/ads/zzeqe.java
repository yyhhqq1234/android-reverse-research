package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqe implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzeqe(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzetr zzetrVarZzb = ((zzesg) this.zza).zzb();
        zzeoj zzeojVar = (zzeoj) this.zzb.zzb();
        if (true == ((List) this.zzc.zzb()).contains("29")) {
            zzetrVarZzb = zzeojVar;
        }
        zzhez.zzb(zzetrVarZzb);
        return zzetrVarZzb;
    }
}
