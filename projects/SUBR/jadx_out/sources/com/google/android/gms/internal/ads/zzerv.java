package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerv implements zzetr {
    private final zzgcs zza;
    private final zzfcj zzb;
    private final PackageInfo zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;

    public zzerv(zzgcs zzgcsVar, zzfcj zzfcjVar, PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzgcsVar;
        this.zzb = zzfcjVar;
        this.zzc = packageInfo;
        this.zzd = zzgVar;
    }

    public static /* synthetic */ zzerw zzc(zzerv zzervVar) {
        return new zzerw(zzervVar.zzb, zzervVar.zzc, zzervVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 26;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeru
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerv.zzc(this.zza);
            }
        });
    }
}
