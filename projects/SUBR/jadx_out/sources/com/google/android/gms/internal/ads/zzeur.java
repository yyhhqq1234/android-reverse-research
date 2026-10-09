package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeur implements zzetr {
    private final Context zza;
    private final ScheduledExecutorService zzb;
    private final Executor zzc;
    private final int zzd;
    private final boolean zze;
    private final boolean zzf;
    private final zzbzd zzg;

    zzeur(zzbzd zzbzdVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.zzg = zzbzdVar;
        this.zza = context;
        this.zzb = scheduledExecutorService;
        this.zzc = executor;
        this.zzd = i;
        this.zze = z;
        this.zzf = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return (zzgby) zzgch.zze((zzgby) zzgch.zzo((zzgby) zzgch.zzm(zzgby.zzu(this.zzg.zza(this.zza, this.zzd)), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeup
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return this.zza.zzc((AdvertisingIdClient.Info) obj);
            }
        }, this.zzc), ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbe)).longValue(), TimeUnit.MILLISECONDS, this.zzb), Throwable.class, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeuq
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return this.zza.zzd((Throwable) obj);
            }
        }, this.zzc);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x001b  */
    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    final /* synthetic */ zzeus zzc(AdvertisingIdClient.Info info) {
        zzfra zzfraVar = new zzfra();
        if (!this.zze) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdj)).booleanValue()) {
                zzfraVar = zzfre.zzj(this.zza).zzi((String) Objects.requireNonNull(((AdvertisingIdClient.Info) Objects.requireNonNull(info)).getId()), this.zza.getPackageName(), ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdp)).longValue(), this.zzf);
            } else if (this.zze) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdk)).booleanValue()) {
                    try {
                        zzfraVar = zzfre.zzj(this.zza).zzi((String) Objects.requireNonNull(((AdvertisingIdClient.Info) Objects.requireNonNull(info)).getId()), this.zza.getPackageName(), ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdp)).longValue(), this.zzf);
                    } catch (IOException | IllegalArgumentException e) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdIdInfoSignalSource.getPaidV1");
                        zzfraVar = new zzfra();
                    }
                }
            }
        } else if (this.zze) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdk)).booleanValue()) {
                zzfraVar = zzfre.zzj(this.zza).zzi((String) Objects.requireNonNull(((AdvertisingIdClient.Info) Objects.requireNonNull(info)).getId()), this.zza.getPackageName(), ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdp)).longValue(), this.zzf);
            }
        }
        return new zzeus(info, null, zzfraVar);
    }

    final /* synthetic */ zzeus zzd(Throwable th) {
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        ContentResolver contentResolver = this.zza.getContentResolver();
        return new zzeus(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new zzfra());
    }
}
