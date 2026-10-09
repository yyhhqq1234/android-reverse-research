package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyr implements zzezf {
    private final zzfdw zza;
    private final Executor zzb;
    private final zzgcd zzc = new zzeyp(this);

    public zzeyr(zzfdw zzfdwVar, Executor executor) {
        this.zza = zzfdwVar;
        this.zzb = executor;
    }

    final /* synthetic */ ListenableFuture zza(zzcuz zzcuzVar, zzeyz zzeyzVar) throws Exception {
        zzfdw zzfdwVar = this.zza;
        zzfeg zzfegVar = zzeyzVar.zzb;
        zzbvk zzbvkVar = zzeyzVar.zza;
        zzfef zzfefVarZzb = zzfdwVar.zzb(zzfegVar);
        if (zzfefVarZzb != null && zzbvkVar != null) {
            zzgch.zzr(zzcuzVar.zzb().zzg(zzbvkVar), this.zzc, this.zzb);
        }
        return zzgch.zzh(new zzeyq(zzfegVar, zzbvkVar, zzfefVarZzb));
    }

    public final ListenableFuture zzb(zzezg zzezgVar, zzeze zzezeVar, final zzcuz zzcuzVar) {
        return (zzgby) zzgch.zze((zzgby) zzgch.zzn(zzgby.zzu(new zzezb(this.zza, zzcuzVar, this.zzb).zzc()), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeyn
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zza(zzcuzVar, (zzeyz) obj);
            }
        }, this.zzb), Exception.class, new zzeyo(this), this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezg zzezgVar, zzeze zzezeVar, Object obj) {
        return zzb(zzezgVar, zzezeVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzezf
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
