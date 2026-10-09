package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpr implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzcpr(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        zzfcj zzfcjVarZza = ((zzcvk) this.zza).zza();
        zzecw zzecwVarZzb = ((zzeer) this.zzb).zzb();
        zzedx zzedxVarZzb = ((zzedy) this.zzc).zzb();
        if (zzfcjVarZza.zza() == null) {
            zzecwVarZzb = zzedxVarZzb;
        }
        return zzecwVarZzb;
    }
}
