package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.json.md;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeoj implements zzetr {
    private final AtomicReference zza = new AtomicReference();
    private final AtomicReference zzb = new AtomicReference(false);
    private final Clock zzc;
    private final Executor zzd;
    private final zzetr zze;
    private final long zzf;
    private final zzdrw zzg;

    public zzeoj(zzetr zzetrVar, long j, Clock clock, Executor executor, zzdrw zzdrwVar) {
        this.zzc = clock;
        this.zze = zzetrVar;
        this.zzf = j;
        this.zzd = executor;
        this.zzg = zzdrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return this.zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        zzeoi zzeoiVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlF)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlE)).booleanValue() && !((Boolean) this.zzb.getAndSet(true)).booleanValue()) {
                ScheduledExecutorService scheduledExecutorService = zzbzw.zzd;
                Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzeog
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeoj zzeojVar = this.zza;
                        zzeojVar.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeoh
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzeojVar.zzd();
                            }
                        });
                    }
                };
                long j = this.zzf;
                scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j, TimeUnit.MILLISECONDS);
            }
            synchronized (this) {
                zzeoiVar = (zzeoi) this.zza.get();
                if (zzeoiVar == null) {
                    zzeoi zzeoiVar2 = new zzeoi(this.zze.zzb(), this.zzf, this.zzc);
                    this.zza.set(zzeoiVar2);
                    return zzeoiVar2.zza;
                }
                if (!((Boolean) this.zzb.get()).booleanValue() && zzeoiVar.zza()) {
                    ListenableFuture listenableFuture = zzeoiVar.zza;
                    zzetr zzetrVar = this.zze;
                    zzeoi zzeoiVar3 = new zzeoi(zzetrVar.zzb(), this.zzf, this.zzc);
                    this.zza.set(zzeoiVar3);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlG)).booleanValue()) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlH)).booleanValue()) {
                            zzdrv zzdrvVarZza = this.zzg.zza();
                            zzdrvVarZza.zzb("action", "scs");
                            zzdrvVarZza.zzb(md.L0, String.valueOf(this.zze.zza()));
                            zzdrvVarZza.zzg();
                        }
                        return listenableFuture;
                    }
                    zzeoiVar = zzeoiVar3;
                }
            }
        } else {
            zzeoiVar = (zzeoi) this.zza.get();
            if (zzeoiVar == null || zzeoiVar.zza()) {
                zzetr zzetrVar2 = this.zze;
                zzeoi zzeoiVar4 = new zzeoi(zzetrVar2.zzb(), this.zzf, this.zzc);
                this.zza.set(zzeoiVar4);
                zzeoiVar = zzeoiVar4;
            }
        }
        return zzeoiVar.zza;
    }

    final /* synthetic */ void zzd() {
        this.zza.set(new zzeoi(this.zze.zzb(), this.zzf, this.zzc));
    }
}
