package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezh implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzezh(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00a9  */
    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzezf zzb() {
        zzezf zzeyuVar;
        Context context = (Context) this.zza.zzb();
        zzfds zzfdsVar = (zzfds) this.zzb.zzb();
        zzfek zzfekVar = (zzfek) this.zzc.zzb();
        zzbzg zzbzgVarZzg = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgg)).booleanValue() ? com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg() : com.google.android.gms.ads.internal.zzv.zzp().zzi().zzh();
        boolean z = false;
        if (zzbzgVarZzg != null && zzbzgVarZzg.zzh()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgw)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgf)).booleanValue() || z) {
                zzfej zzfejVarZza = zzfekVar.zza(zzfea.AppOpen, context, zzfdsVar, new zzeyj(new zzeyg()));
                zzeyuVar = new zzeyl(new zzeyv(new zzeyu()), new zzeyr(zzfejVarZza.zza, zzbzw.zza), zzfejVarZza.zzb, zzfejVarZza.zza.zza().zzf, zzbzw.zza);
            } else {
                zzeyuVar = new zzeyu();
            }
        } else {
            zzeyuVar = new zzeyu();
        }
        return zzeyuVar;
    }
}
