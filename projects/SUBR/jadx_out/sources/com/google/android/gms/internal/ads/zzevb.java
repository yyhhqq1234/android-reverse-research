package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Tasks;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevb implements zzetr {
    private final zzbzm zza;
    private final ScheduledExecutorService zzb;
    private final zzgcs zzc;

    zzevb(String str, zzbam zzbamVar, zzbzm zzbzmVar, ScheduledExecutorService scheduledExecutorService, zzgcs zzgcsVar) {
        this.zza = zzbzmVar;
        this.zzb = scheduledExecutorService;
        this.zzc = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcX)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdc)).booleanValue()) {
                ListenableFuture listenableFutureZzn = zzgch.zzn(zzfrj.zza(Tasks.forResult(null), null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeuz
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final ListenableFuture zza(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        return appSetIdInfo == null ? zzgch.zzh(new zzevc(null, -1)) : zzgch.zzh(new zzevc(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                    }
                }, this.zzc);
                if (((Boolean) zzbdy.zza.zze()).booleanValue()) {
                    listenableFutureZzn = zzgch.zzo(listenableFutureZzn, ((Long) zzbdy.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
                }
                return zzgch.zze(listenableFutureZzn, Exception.class, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeva
                    @Override // com.google.android.gms.internal.ads.zzfuc
                    public final Object apply(Object obj) {
                        return this.zza.zzc((Exception) obj);
                    }
                }, this.zzc);
            }
        }
        return zzgch.zzh(new zzevc(null, -1));
    }

    final /* synthetic */ zzevc zzc(Exception exc) {
        this.zza.zzw(exc, "AppSetIdInfoGmscoreSignal");
        return new zzevc(null, -1);
    }
}
