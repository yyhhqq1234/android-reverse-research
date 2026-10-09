package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public final class zzbnx {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    private zzbog zzc;
    private zzbog zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzbog zza(Context context, VersionInfoParcel versionInfoParcel, zzfhk zzfhkVar) {
        zzbog zzbogVar;
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = new zzbog(zzc(context), versionInfoParcel, (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zza), zzfhkVar);
            }
            zzbogVar = this.zzc;
        }
        return zzbogVar;
    }

    public final zzbog zzb(Context context, VersionInfoParcel versionInfoParcel, zzfhk zzfhkVar) {
        zzbog zzbogVar;
        synchronized (this.zzb) {
            if (this.zzd == null) {
                this.zzd = new zzbog(zzc(context), versionInfoParcel, (String) zzbev.zza.zze(), zzfhkVar);
            }
            zzbogVar = this.zzd;
        }
        return zzbogVar;
    }
}
