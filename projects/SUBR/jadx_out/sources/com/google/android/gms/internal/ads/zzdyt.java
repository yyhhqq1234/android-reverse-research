package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdyt {
    private final zzgcs zza;
    private final zzdxy zzb;
    private final zzhel zzc;

    public zzdyt(zzgcs zzgcsVar, zzdxy zzdxyVar, zzhel zzhelVar) {
        this.zza = zzgcsVar;
        this.zzb = zzdxyVar;
        this.zzc = zzhelVar;
    }

    private final ListenableFuture zzg(final zzbvk zzbvkVar, zzdys zzdysVar, final zzdys zzdysVar2, final zzgbo zzgboVar) {
        String str = zzbvkVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzq();
        return (zzgby) zzgch.zzf((zzgby) zzgch.zzn((zzgby) zzgch.zzn(zzgby.zzu(com.google.android.gms.ads.internal.util.zzs.zzD(str) ? zzgch.zzg(new zzdyh(1)) : zzgch.zzf(zzdysVar.zza(zzbvkVar), ExecutionException.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdyr
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                ExecutionException executionException = (ExecutionException) obj;
                Throwable cause = executionException.getCause();
                ExecutionException cause2 = executionException;
                if (cause != null) {
                    cause2 = executionException.getCause();
                }
                return zzgch.zzg(cause2);
            }
        }, this.zza)), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdyp
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return zzgch.zzh(((zzdyi) obj).zzb());
            }
        }, this.zza), zzgboVar, this.zza), zzdyh.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdyq
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzb(zzdysVar2, zzbvkVar, zzgboVar, (zzdyh) obj);
            }
        }, this.zza);
    }

    public final ListenableFuture zza(final zzbvk zzbvkVar) {
        zzgbo zzgboVar = new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdym
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                String str = new String(zzgad.zzb((InputStream) obj), StandardCharsets.UTF_8);
                zzbvk zzbvkVar2 = zzbvkVar;
                zzbvkVar2.zzj = str;
                return zzgch.zzh(zzbvkVar2);
            }
        };
        final zzdxy zzdxyVar = this.zzb;
        Objects.requireNonNull(zzdxyVar);
        return zzg(zzbvkVar, new zzdys() { // from class: com.google.android.gms.internal.ads.zzdyn
            @Override // com.google.android.gms.internal.ads.zzdys
            public final ListenableFuture zza(zzbvk zzbvkVar2) {
                return zzdxyVar.zza(zzbvkVar2);
            }
        }, new zzdys() { // from class: com.google.android.gms.internal.ads.zzdyo
            @Override // com.google.android.gms.internal.ads.zzdys
            public final ListenableFuture zza(zzbvk zzbvkVar2) {
                return this.zza.zzc(zzbvkVar2);
            }
        }, zzgboVar);
    }

    final /* synthetic */ ListenableFuture zzb(zzdys zzdysVar, zzbvk zzbvkVar, zzgbo zzgboVar, zzdyh zzdyhVar) throws Exception {
        return zzgch.zzn(zzdysVar.zza(zzbvkVar), zzgboVar, this.zza);
    }

    final /* synthetic */ ListenableFuture zzc(zzbvk zzbvkVar) {
        return ((zzdzl) this.zzc.zzb()).zzb(zzbvkVar, Binder.getCallingUid());
    }

    final /* synthetic */ ListenableFuture zzd(zzbvk zzbvkVar) {
        return this.zzb.zzd(zzbvkVar.zzh);
    }

    final /* synthetic */ ListenableFuture zze(zzbvk zzbvkVar) {
        return ((zzdzl) this.zzc.zzb()).zzj(zzbvkVar.zzh);
    }

    public final ListenableFuture zzf(zzbvk zzbvkVar) {
        return zzg(zzbvkVar, new zzdys() { // from class: com.google.android.gms.internal.ads.zzdyk
            @Override // com.google.android.gms.internal.ads.zzdys
            public final ListenableFuture zza(zzbvk zzbvkVar2) {
                return this.zza.zzd(zzbvkVar2);
            }
        }, new zzdys() { // from class: com.google.android.gms.internal.ads.zzdyl
            @Override // com.google.android.gms.internal.ads.zzdys
            public final ListenableFuture zza(zzbvk zzbvkVar2) {
                return this.zza.zze(zzbvkVar2);
            }
        }, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdyj
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return zzgch.zzh(null);
            }
        });
    }
}
