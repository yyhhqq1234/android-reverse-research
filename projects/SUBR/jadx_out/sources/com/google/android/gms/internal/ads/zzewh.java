package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzewh implements zzetr {
    private final zzbzm zza;
    private final boolean zzb;
    private final boolean zzc;
    private final ScheduledExecutorService zzd;
    private final zzgcs zze;

    zzewh(zzbzm zzbzmVar, boolean z, boolean z2, zzbzb zzbzbVar, zzgcs zzgcsVar, String str, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzbzmVar;
        this.zzb = z;
        this.zzc = z2;
        this.zze = zzgcsVar;
        this.zzd = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 50;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgQ)).booleanValue() && this.zzc) {
            return zzgch.zzh(new zzewi(null));
        }
        if (!this.zzb) {
            return zzgch.zzh(new zzewi(null));
        }
        return zzgch.zze(zzgch.zzo(zzgch.zzm(zzgch.zzh(null), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzewf
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return new zzewi((String) obj);
            }
        }, this.zze), ((Long) zzbez.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzd), Exception.class, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzewg
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return this.zza.zzc((Exception) obj);
            }
        }, this.zze);
    }

    final /* synthetic */ zzewi zzc(Exception exc) {
        this.zza.zzw(exc, "TrustlessTokenSignal");
        return new zzewi(null);
    }
}
