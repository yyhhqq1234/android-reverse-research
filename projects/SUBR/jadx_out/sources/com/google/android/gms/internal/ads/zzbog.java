package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public final class zzbog {
    static final com.google.android.gms.ads.internal.util.zzbd zza = new zzboe();
    static final com.google.android.gms.ads.internal.util.zzbd zzb = new zzbof();
    private final zzbns zzc;

    public zzbog(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable zzfhk zzfhkVar) {
        this.zzc = new zzbns(context, versionInfoParcel, str, zza, zzb, zzfhkVar);
    }

    public final zzbnw zza(String str, zzbnz zzbnzVar, zzbny zzbnyVar) {
        return new zzbok(this.zzc, str, zzbnzVar, zzbnyVar);
    }

    public final zzbop zzb() {
        return new zzbop(this.zzc);
    }
}
