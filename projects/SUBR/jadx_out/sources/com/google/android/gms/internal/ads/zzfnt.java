package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfnt {
    private final Context zza;
    private final Looper zzb;

    public zzfnt(Context context, Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(String str) {
        zzfog zzfogVarZza = zzfoj.zza();
        zzfogVarZza.zza(this.zza.getPackageName());
        zzfogVarZza.zzc(2);
        zzfod zzfodVarZza = zzfof.zza();
        zzfodVarZza.zza(str);
        zzfodVarZza.zzb(2);
        zzfogVarZza.zzb(zzfodVarZza);
        new zzfnu(this.zza, this.zzb, (zzfoj) zzfogVarZza.zzbr()).zza();
    }
}
