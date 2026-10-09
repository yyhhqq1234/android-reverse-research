package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbne implements zzbjp {
    final /* synthetic */ zzbmn zza;
    final /* synthetic */ com.google.android.gms.ads.internal.util.zzby zzb;
    final /* synthetic */ zzbns zzc;

    zzbne(zzbns zzbnsVar, zzava zzavaVar, zzbmn zzbmnVar, com.google.android.gms.ads.internal.util.zzby zzbyVar) {
        this.zza = zzbmnVar;
        this.zzb = zzbyVar;
        this.zzc = zzbnsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
        synchronized (this.zzc.zza) {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock acquired");
            com.google.android.gms.ads.internal.util.client.zzo.zzi("JS Engine is requesting an update");
            if (this.zzc.zzi == 0) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Starting reload.");
                this.zzc.zzi = 2;
                this.zzc.zzd(null);
            }
            this.zza.zzr("/requestReload", (zzbjp) this.zzb.zza());
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock released");
    }
}
