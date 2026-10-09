package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccw extends com.google.android.gms.ads.internal.util.zzb {
    final zzcbs zza;
    final zzcde zzb;
    private final String zzc;
    private final String[] zzd;

    zzccw(zzcbs zzcbsVar, zzcde zzcdeVar, String str, String[] strArr) {
        this.zza = zzcbsVar;
        this.zzb = zzcdeVar;
        this.zzc = str;
        this.zzd = strArr;
        com.google.android.gms.ads.internal.zzv.zzz().zzb(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        try {
            this.zzb.zzu(this.zzc, this.zzd);
        } finally {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzccv(this));
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final ListenableFuture zzb() {
        return (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzce)).booleanValue() && (this.zzb instanceof zzcdn)) ? zzbzw.zzf.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzccu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzd();
            }
        }) : super.zzb();
    }

    final /* synthetic */ Boolean zzd() throws Exception {
        return Boolean.valueOf(this.zzb.zzw(this.zzc, this.zzd, this));
    }

    public final String zze() {
        return this.zzc;
    }
}
