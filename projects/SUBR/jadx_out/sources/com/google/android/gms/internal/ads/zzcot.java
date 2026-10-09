package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzcot {
    private final zzcqx zza;
    private final View zzb;
    private final zzfbp zzc;
    private final zzcex zzd;

    public zzcot(View view, zzcex zzcexVar, zzcqx zzcqxVar, zzfbp zzfbpVar) {
        this.zzb = view;
        this.zzd = zzcexVar;
        this.zza = zzcqxVar;
        this.zzc = zzfbpVar;
    }

    public final View zza() {
        return this.zzb;
    }

    public final zzcex zzb() {
        return this.zzd;
    }

    public final zzcqx zzc() {
        return this.zza;
    }

    public zzcxf zzd(Set set) {
        return new zzcxf(set);
    }

    public final zzfbp zze() {
        return this.zzc;
    }
}
