package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegm extends zzegf {
    private final zzcgx zza;
    private final zzcva zzb;
    private final zzdbm zzc;
    private final zzegq zzd;

    @Nullable
    private final zzfcb zze;
    private final zzedb zzf;

    public zzegm(zzcgx zzcgxVar, zzcva zzcvaVar, zzdbm zzdbmVar, @Nullable zzfcb zzfcbVar, zzegq zzegqVar, zzedb zzedbVar) {
        this.zza = zzcgxVar;
        this.zzb = zzcvaVar;
        this.zzc = zzdbmVar;
        this.zze = zzfcbVar;
        this.zzd = zzegqVar;
        this.zzf = zzedbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegf
    protected final ListenableFuture zzc(zzfcj zzfcjVar, Bundle bundle, zzfbo zzfboVar, zzfca zzfcaVar) {
        zzfcb zzfcbVar;
        zzcva zzcvaVar = this.zzb;
        zzcvaVar.zzk(zzfcjVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcaVar, zzfboVar, this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdG)).booleanValue() && (zzfcbVar = this.zze) != null) {
            this.zzb.zzj(zzfcbVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdH)).booleanValue()) {
            this.zzb.zze(this.zzf);
        }
        zzcgx zzcgxVar = this.zza;
        zzcva zzcvaVar2 = this.zzb;
        zzdoe zzdoeVarZzi = zzcgxVar.zzi();
        zzdoeVarZzi.zzd(zzcvaVar2.zzl());
        zzdoeVarZzi.zzc(this.zzc);
        zzcsd zzcsdVarZzb = zzdoeVarZzi.zze().zzb();
        return zzcsdVarZzb.zzh(zzcsdVarZzb.zzi());
    }
}
