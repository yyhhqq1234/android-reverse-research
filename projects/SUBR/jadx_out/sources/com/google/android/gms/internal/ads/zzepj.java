package com.google.android.gms.internal.ads;

import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepj implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzepj(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzetr zzetrVarZzb = ((zzeln) this.zza).zzb();
        zzeoj zzeojVar = (zzeoj) this.zzb.zzb();
        if (true == ((List) this.zzc.zzb()).contains(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION)) {
            zzetrVarZzb = zzeojVar;
        }
        zzhez.zzb(zzetrVarZzb);
        return zzetrVarZzb;
    }
}
