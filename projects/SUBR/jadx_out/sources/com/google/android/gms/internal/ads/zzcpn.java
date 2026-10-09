package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpn implements zzcwn {
    private final zzcex zza;
    private final zzdrw zzb;
    private final zzfbo zzc;

    zzcpn(zzcex zzcexVar, zzdrw zzdrwVar, zzfbo zzfboVar) {
        this.zza = zzcexVar;
        this.zzb = zzdrwVar;
        this.zzc = zzfboVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzr() {
        zzcex zzcexVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmK)).booleanValue() || (zzcexVar = this.zza) == null) {
            return;
        }
        String str = true != com.google.android.gms.ads.internal.util.zzac.zza(zzcexVar.zzF()) ? "0" : "1";
        zzdrv zzdrvVarZza = this.zzb.zza();
        zzdrvVarZza.zzb("action", "hcp");
        zzdrvVarZza.zzb("hcp", str);
        zzdrvVarZza.zzc(this.zzc);
        zzdrvVarZza.zzg();
    }
}
