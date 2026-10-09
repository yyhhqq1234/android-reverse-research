package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeop implements zzetr {
    private final zzgcs zza;
    private final zzdpr zzb;
    private final String zzc;
    private final zzfcj zzd;

    public zzeop(zzgcs zzgcsVar, zzdpr zzdprVar, zzfcj zzfcjVar, String str) {
        this.zza = zzgcsVar;
        this.zzb = zzdprVar;
        this.zzd = zzfcjVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeoo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzeoq zzc() throws Exception {
        zzdpr zzdprVar = this.zzb;
        return new zzeoq(zzdprVar.zzb(this.zzd.zzf, this.zzc), zzdprVar.zza());
    }
}
