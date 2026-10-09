package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwg {
    private final zzgcs zza;
    private final zzgcs zzb;
    private final zzdxo zzc;
    private final zzhel zzd;

    public zzdwg(zzgcs zzgcsVar, zzgcs zzgcsVar2, zzdxo zzdxoVar, zzhel zzhelVar) {
        this.zza = zzgcsVar;
        this.zzb = zzgcsVar2;
        this.zzc = zzdxoVar;
        this.zzd = zzhelVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzdyi zza(zzbvk zzbvkVar) throws Exception {
        return (zzdyi) this.zzc.zza(zzbvkVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfy)).intValue(), TimeUnit.SECONDS);
    }

    final /* synthetic */ ListenableFuture zzb(final zzbvk zzbvkVar, int i, zzdyh zzdyhVar) throws Exception {
        Bundle bundle;
        if (zzbvkVar != null && (bundle = zzbvkVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgch.zzn(((zzdzl) this.zzd.zzb()).zzc(zzbvkVar, i), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdwc
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return zzgch.zzh(new zzdyi((InputStream) obj, zzbvkVar));
            }
        }, this.zzb);
    }

    public final ListenableFuture zzc(final zzbvk zzbvkVar) {
        String str = zzbvkVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzq();
        ListenableFuture listenableFutureZzg = com.google.android.gms.ads.internal.util.zzs.zzD(str) ? zzgch.zzg(new zzdyh(1)) : zzgch.zzf(this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza(zzbvkVar);
            }
        }), ExecutionException.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdwe
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
        }, this.zzb);
        final int callingUid = Binder.getCallingUid();
        return zzgch.zzf(listenableFutureZzg, zzdyh.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdwf
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzb(zzbvkVar, callingUid, (zzdyh) obj);
            }
        }, this.zzb);
    }
}
