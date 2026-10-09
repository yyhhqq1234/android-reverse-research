package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfiq {
    private final com.google.android.gms.ads.internal.util.client.zzx zza;
    private final com.google.android.gms.ads.internal.util.client.zzu zzb;
    private final zzgct zzc;
    private final zzfir zzd;

    public zzfiq(com.google.android.gms.ads.internal.util.client.zzx zzxVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzgct zzgctVar, zzfir zzfirVar) {
        this.zza = zzxVar;
        this.zzb = zzuVar;
        this.zzc = zzgctVar;
        this.zzd = zzfirVar;
    }

    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zza(String str) throws Exception {
        return this.zzb.zza(str);
    }

    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zzb(String str) throws Exception {
        return this.zzb.zza(str);
    }

    final /* synthetic */ ListenableFuture zzc(int i, long j, String str, com.google.android.gms.ads.internal.util.client.zzt zztVar) throws Exception {
        if (zztVar != com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE) {
            return zzgch.zzh(zztVar);
        }
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        long jZzb = zzxVar.zzb();
        if (i != 1) {
            jZzb = (long) (zzxVar.zza() * j);
        }
        return zze(str, jZzb, i + 1);
    }

    public final ListenableFuture zzd(String str) {
        try {
            return zze(str, 0L, 1);
        } catch (NullPointerException | RejectedExecutionException unused) {
            return zzgch.zzh(com.google.android.gms.ads.internal.util.client.zzt.PERMANENT_FAILURE);
        }
    }

    private final ListenableFuture zze(final String str, final long j, final int i) {
        final String str2;
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.zza;
        if (i > zzxVar.zzc()) {
            zzfir zzfirVar = this.zzd;
            if (zzfirVar == null || !zzxVar.zzd()) {
                return zzgch.zzh(com.google.android.gms.ads.internal.util.client.zzt.RETRIABLE_FAILURE);
            }
            zzfirVar.zza(str, "", 2);
            return zzgch.zzh(com.google.android.gms.ads.internal.util.client.zzt.BUFFERED);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziv)).booleanValue()) {
            Uri uri = Uri.parse(str);
            String encodedQuery = uri.getEncodedQuery();
            Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
            builderClearQuery.appendQueryParameter("pa", Integer.toString(i));
            str2 = String.valueOf(builderClearQuery.build()) + y8.i.c + encodedQuery;
        } else {
            str2 = str;
        }
        zzgbo zzgboVar = new zzgbo() { // from class: com.google.android.gms.internal.ads.zzfip
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final ListenableFuture zza(Object obj) {
                return this.zza.zzc(i, j, str, (com.google.android.gms.ads.internal.util.client.zzt) obj);
            }
        };
        return j == 0 ? zzgch.zzn(this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfio
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza(str2);
            }
        }), zzgboVar, this.zzc) : zzgch.zzn(this.zzc.schedule(new Callable() { // from class: com.google.android.gms.internal.ads.zzfin
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb(str2);
            }
        }, j, TimeUnit.MILLISECONDS), zzgboVar, this.zzc);
    }
}
