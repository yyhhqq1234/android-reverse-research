package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyu implements zzezf {
    private zzcuz zza;

    @Override // com.google.android.gms.internal.ads.zzezf
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcuz zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezg zzezgVar, zzeze zzezeVar, Object obj) {
        return zzb(zzezgVar, zzezeVar, null);
    }

    public final synchronized ListenableFuture zzb(zzezg zzezgVar, zzeze zzezeVar, zzcuz zzcuzVar) {
        zzcsd zzcsdVarZzb;
        try {
            if (zzcuzVar != null) {
                this.zza = zzcuzVar;
            } else {
                this.zza = (zzcuz) zzezeVar.zza(zzezgVar.zzb).zzh();
            }
            zzcsdVarZzb = this.zza.zzb();
        } catch (Throwable th) {
            throw th;
        }
        return zzcsdVarZzb.zzh(zzcsdVarZzb.zzi());
    }
}
