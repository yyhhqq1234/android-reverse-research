package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
@Deprecated
public final class zzbcr {
    public static final void zza(zzbcq zzbcqVar, zzbco zzbcoVar) {
        if (zzbcoVar.zza() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(zzbcoVar.zzb())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        zzbcqVar.zzd(zzbcoVar.zza(), zzbcoVar.zzb(), zzbcoVar.zzc(), zzbcoVar.zzd());
    }
}
