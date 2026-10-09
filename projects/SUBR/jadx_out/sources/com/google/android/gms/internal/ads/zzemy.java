package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemy implements zzetr {
    private final zzgcs zza;
    private final zzfcj zzb;
    private final zzbzq zzc;

    public zzemy(zzgcs zzgcsVar, zzfcj zzfcjVar, zzbzq zzbzqVar) {
        this.zza = zzgcsVar;
        this.zzb = zzfcjVar;
        this.zzc = zzbzqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 9;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzemx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzemz zzc() throws Exception {
        return new zzemz(this.zzb.zzj, this.zzc.zzm());
    }
}
