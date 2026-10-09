package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzetb implements zzetr {
    private final zzbyi zza;
    private final zzgcs zzb;
    private final Context zzc;

    public zzetb(zzbyi zzbyiVar, zzgcs zzgcsVar, Context context) {
        this.zza = zzbyiVar;
        this.zzb = zzgcsVar;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeta
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzetc zzc() throws Exception {
        if (!this.zza.zzp(this.zzc)) {
            return new zzetc(null, null, null, null, null);
        }
        String strZzd = this.zza.zzd(this.zzc);
        String str = strZzd == null ? "" : strZzd;
        String strZzb = this.zza.zzb(this.zzc);
        String str2 = strZzb == null ? "" : strZzb;
        String strZza = this.zza.zza(this.zzc);
        String str3 = strZza == null ? "" : strZza;
        Long l = null;
        String str4 = true != this.zza.zzp(this.zzc) ? null : "fa";
        if ("TIME_OUT".equals(str2)) {
            l = (Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzat);
        }
        return new zzetc(str, str2, str3, str4 == null ? "" : str4, l);
    }
}
