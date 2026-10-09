package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfja {
    private final Context zza;
    private final Executor zzb;
    private final zzgct zzc;
    private final com.google.android.gms.ads.internal.util.client.zzu zzd;
    private final zzfir zze;
    private final zzfhk zzf;

    zzfja(Context context, Executor executor, zzgct zzgctVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzfir zzfirVar, zzfhk zzfhkVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzgctVar;
        this.zzd = zzuVar;
        this.zze = zzfirVar;
        this.zzf = zzfhkVar;
    }

    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zza(String str) throws Exception {
        return this.zzd.zza(str);
    }

    public final void zzd(final String str, final com.google.android.gms.ads.internal.util.client.zzv zzvVar, zzfhh zzfhhVar) {
        if (!zzfhk.zza() || !((Boolean) zzbee.zzd.zze()).booleanValue()) {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfiy
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzc(str, zzvVar);
                }
            });
            return;
        }
        zzfgw zzfgwVarZza = zzfgv.zza(this.zza, 14);
        zzfgwVarZza.zzi();
        zzgch.zzr(zzc(str, zzvVar), new zzfiz(this, zzfgwVarZza, zzfhhVar), this.zzb);
    }

    public final void zze(List list, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzd((String) it.next(), zzvVar, null);
        }
    }

    final ListenableFuture zzc(final String str, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        if (zzvVar == null) {
            return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfix
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zza(str);
                }
            });
        }
        return new zzfiq(zzvVar.zzb(), this.zzd, this.zzc, this.zze).zzd(str);
    }
}
