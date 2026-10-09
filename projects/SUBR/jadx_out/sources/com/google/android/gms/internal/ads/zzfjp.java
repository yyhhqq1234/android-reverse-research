package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjp {
    private final zzdrw zza;

    zzfjp(zzdrw zzdrwVar) {
        this.zza = zzdrwVar;
    }

    private final void zzg(AdFormat adFormat, Optional optional, String str, long j, Optional optional2) {
        final zzdrv zzdrvVarZza = this.zza.zza();
        zzdrvVarZza.zzb(str, Long.toString(j));
        zzdrvVarZza.zzb("ad_format", adFormat == null ? "unknown" : adFormat.name());
        optional.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjn
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrvVarZza.zzb("action", (String) obj);
            }
        });
        optional2.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrvVarZza.zzb("gqi", (String) obj);
            }
        });
        zzdrvVarZza.zzg();
    }

    public final void zza(AdFormat adFormat, long j, Optional optional, Optional optional2) {
        final zzdrv zzdrvVarZza = this.zza.zza();
        zzdrvVarZza.zzb("plaac_ts", Long.toString(j));
        zzdrvVarZza.zzb("ad_format", adFormat.name());
        zzdrvVarZza.zzb("action", "is_ad_available");
        optional.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjl
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrvVarZza.zzb("plaay_ts", Long.toString(((Long) obj).longValue()));
            }
        });
        optional2.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrvVarZza.zzb("gqi", (String) obj);
            }
        });
        zzdrvVarZza.zzg();
    }

    public final void zzb(AdFormat adFormat, long j, Optional optional) {
        zzg(adFormat, Optional.empty(), "pano_ts", j, optional);
    }

    public final void zzc(AdFormat adFormat, long j) {
        zzg(adFormat, Optional.empty(), "paeo_ts", j, Optional.empty());
    }

    public final void zzd(AdFormat adFormat, long j) {
        zzg(adFormat, Optional.of("poll_ad"), "ppac_ts", j, Optional.empty());
    }

    public final void zze(AdFormat adFormat, long j, Optional optional) {
        zzg(adFormat, Optional.of("poll_ad"), "ppla_ts", j, optional);
    }

    public final void zzf(Map map, long j) {
        zzdrv zzdrvVarZza = this.zza.zza();
        zzdrvVarZza.zzb("action", "start_preload");
        zzdrvVarZza.zzb("sp_ts", Long.toString(j));
        for (AdFormat adFormat : map.keySet()) {
            String strValueOf = String.valueOf(adFormat.name().toLowerCase(Locale.ENGLISH));
            zzdrvVarZza.zzb(strValueOf.concat("_count"), Integer.toString(((Integer) map.get(adFormat)).intValue()));
        }
        zzdrvVarZza.zzg();
    }
}
