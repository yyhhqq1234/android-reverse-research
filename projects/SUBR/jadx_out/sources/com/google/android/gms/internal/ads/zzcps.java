package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcps implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzcps(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        boolean zBooleanValue = ((zzcpy) this.zza).zzb().booleanValue();
        zzecw zzecwVarZzb = ((zzegj) this.zzb).zzb();
        zzeii zzeiiVarZzb = ((zzeij) this.zzc).zzb();
        if (true != zBooleanValue) {
            zzecwVarZzb = zzeiiVarZzb;
        }
        return zzecwVarZzb;
    }
}
