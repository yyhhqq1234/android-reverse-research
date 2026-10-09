package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyv implements zzezf {
    private final zzezf zza;
    private zzcuz zzb;

    public zzeyv(zzezf zzezfVar) {
        this.zza = zzezfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcuz zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezg zzezgVar, zzeze zzezeVar, Object obj) {
        return zzb(zzezgVar, zzezeVar, null);
    }

    public final synchronized ListenableFuture zzb(zzezg zzezgVar, zzeze zzezeVar, zzcuz zzcuzVar) {
        this.zzb = zzcuzVar;
        if (zzcuzVar == null || zzezgVar.zza == null) {
            return ((zzeyu) this.zza).zzb(zzezgVar, zzezeVar, zzcuzVar);
        }
        zzbvk zzbvkVar = zzezgVar.zza;
        zzcsd zzcsdVarZzb = zzcuzVar.zzb();
        return zzcsdVarZzb.zzh(zzcsdVarZzb.zzj(zzgch.zzh(zzbvkVar)));
    }
}
