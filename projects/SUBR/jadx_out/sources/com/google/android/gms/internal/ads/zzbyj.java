package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbyj {
    static zzbyj zza;

    public static synchronized zzbyj zzd(Context context) {
        zzbyj zzbyjVar = zza;
        if (zzbyjVar != null) {
            return zzbyjVar;
        }
        Context applicationContext = context.getApplicationContext();
        zzbcl.zza(applicationContext);
        com.google.android.gms.ads.internal.util.zzg zzgVarZzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
        zzgVarZzi.zzp(applicationContext);
        zzbyb zzbybVar = new zzbyb(null);
        zzbybVar.zzb(applicationContext);
        zzbybVar.zzc(com.google.android.gms.ads.internal.zzv.zzC());
        zzbybVar.zza(zzgVarZzi);
        zzbybVar.zzd(com.google.android.gms.ads.internal.zzv.zzo());
        zzbyj zzbyjVarZze = zzbybVar.zze();
        zza = zzbyjVarZze;
        zzbyjVarZze.zza().zza();
        zzbyn zzbynVarZzc = zza.zzc();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaE)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            Map mapZzw = com.google.android.gms.ads.internal.util.zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaF));
            Iterator it = mapZzw.keySet().iterator();
            while (it.hasNext()) {
                zzbynVarZzc.zzc((String) it.next());
            }
            zzbynVarZzc.zzd(new zzbyl(zzbynVarZzc, mapZzw));
        }
        return zza;
    }

    abstract zzbxv zza();

    abstract zzbxz zzb();

    abstract zzbyn zzc();
}
