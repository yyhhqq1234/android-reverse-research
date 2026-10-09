package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerk implements zzetr {
    private final zzgcs zza;
    private final zzduv zzb;

    zzerk(zzgcs zzgcsVar, zzduv zzduvVar) {
        this.zza = zzgcsVar;
        this.zzb = zzduvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzerl zzc() throws Exception {
        zzduv zzduvVar = this.zzb;
        String strZzc = zzduvVar.zzc();
        boolean zZzr = zzduvVar.zzr();
        boolean zZzl = com.google.android.gms.ads.internal.zzv.zzt().zzl();
        zzduv zzduvVar2 = this.zzb;
        return new zzerl(strZzc, zZzr, zZzl, zzduvVar2.zzp(), zzduvVar2.zzs());
    }
}
