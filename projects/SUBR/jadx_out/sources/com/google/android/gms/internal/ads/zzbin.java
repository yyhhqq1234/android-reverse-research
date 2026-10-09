package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzbin implements zzbjp {
    public final /* synthetic */ zzdds zza;
    public final /* synthetic */ zzcmk zzb;

    public /* synthetic */ zzbin(zzdds zzddsVar, zzcmk zzcmkVar) {
        this.zza = zzddsVar;
        this.zzb = zzcmkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        zzbjo.zzc(map, this.zza);
        final String str = (String) map.get("u");
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from click GMSG.");
        } else {
            final zzcmk zzcmkVar = this.zzb;
            zzgch.zzr((zzgby) zzgch.zzn(zzgby.zzu(zzbjo.zza(zzcexVar, str)), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzbiq
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final ListenableFuture zza(Object obj2) {
                    zzcmk zzcmkVar2;
                    String str2 = (String) obj2;
                    zzbjp zzbjpVar = zzbjo.zza;
                    return (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjT)).booleanValue() && (zzcmkVar2 = zzcmkVar) != null && zzcmk.zzj(str)) ? zzcmkVar2.zzb(str2, com.google.android.gms.ads.internal.client.zzbc.zze()) : zzgch.zzh(str2);
                }
            }, zzbzw.zza), new zzbjd(zzcexVar), zzbzw.zza);
        }
    }
}
