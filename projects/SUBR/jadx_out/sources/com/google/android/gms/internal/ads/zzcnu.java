package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnu {
    private final zzdrw zza;
    private final zzfca zzb;

    zzcnu(zzdrw zzdrwVar, zzfca zzfcaVar) {
        this.zza = zzdrwVar;
        this.zzb = zzfcaVar;
    }

    public final void zza(long j, int i) {
        String str;
        zzdrv zzdrvVarZza = this.zza.zza();
        zzdrvVarZza.zzd(this.zzb.zzb.zzb);
        zzdrvVarZza.zzb("action", "ad_closed");
        zzdrvVarZza.zzb("show_time", String.valueOf(j));
        zzdrvVarZza.zzb("ad_format", "app_open_ad");
        int i2 = i - 1;
        if (i2 == 0) {
            str = "h";
        } else if (i2 == 1) {
            str = "bb";
        } else if (i2 == 2) {
            str = "cc";
        } else if (i2 != 3) {
            str = i2 != 4 ? "u" : "ac";
        } else {
            str = "cb";
        }
        zzdrvVarZza.zzb("acr", str);
        zzdrvVarZza.zzg();
    }
}
