package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzezb {
    private final zzfdw zza;
    private final zzcuz zzb;
    private final Executor zzc;
    private zzeyz zzd;

    public zzezb(zzfdw zzfdwVar, zzcuz zzcuzVar, Executor executor) {
        this.zza = zzfdwVar;
        this.zzb = zzcuzVar;
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public final zzfeg zze() {
        zzfcj zzfcjVarZzg = this.zzb.zzg();
        return this.zza.zzc(zzfcjVarZzg.zzd, zzfcjVarZzg.zzf, zzfcjVarZzg.zzj);
    }

    public final ListenableFuture zzc() {
        ListenableFuture listenableFutureZzh;
        zzeyz zzeyzVar = this.zzd;
        if (zzeyzVar != null) {
            return zzgch.zzh(zzeyzVar);
        }
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            listenableFutureZzh = (zzgby) zzgch.zze((zzgby) zzgch.zzm(zzgby.zzu(this.zzb.zzb().zze(this.zza.zza())), new zzeyy(this), this.zzc), zzdyh.class, new zzeyx(this), this.zzc);
        } else {
            zzeyz zzeyzVar2 = new zzeyz(null, zze(), null);
            this.zzd = zzeyzVar2;
            listenableFutureZzh = zzgch.zzh(zzeyzVar2);
        }
        return zzgch.zzm(listenableFutureZzh, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeyw
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return (zzeyz) obj;
            }
        }, this.zzc);
    }
}
