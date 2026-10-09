package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzfcr implements zzbjp {
    public final /* synthetic */ zzdds zza;
    public final /* synthetic */ zzcmk zzb;
    public final /* synthetic */ zzfja zzc;
    public final /* synthetic */ zzebk zzd;

    public /* synthetic */ zzfcr(zzdds zzddsVar, zzcmk zzcmkVar, zzfja zzfjaVar, zzebk zzebkVar) {
        this.zza = zzddsVar;
        this.zzb = zzcmkVar;
        this.zzc = zzfjaVar;
        this.zzd = zzebkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        zzbjo.zzc(map, this.zza);
        String str = (String) map.get("u");
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from click GMSG.");
            return;
        }
        zzebk zzebkVar = this.zzd;
        zzfja zzfjaVar = this.zzc;
        zzgch.zzr(zzbjo.zza(zzcexVar, str), new zzfct(zzcexVar, this.zzb, zzfjaVar, zzebkVar), zzbzw.zza);
    }
}
