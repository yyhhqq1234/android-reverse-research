package com.google.android.gms.internal.ads;

import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdsh {
    private final String zze;
    private final zzdsb zzf;
    private final List zzb = new ArrayList();
    private boolean zzc = false;
    private boolean zzd = false;
    private final com.google.android.gms.ads.internal.util.zzg zza = com.google.android.gms.ads.internal.zzv.zzp().zzi();

    public zzdsh(String str, zzdsb zzdsbVar) {
        this.zze = str;
        this.zzf = zzdsbVar;
    }

    private final Map zzg() {
        Map mapZza = this.zzf.zza();
        mapZza.put("tms", Long.toString(com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime(), 10));
        mapZza.put(ScarConstants.TOKEN_ID_KEY, this.zza.zzN() ? "" : this.zze);
        return mapZza;
    }

    public final synchronized void zza(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map mapZzg = zzg();
            mapZzg.put("action", "aaia");
            mapZzg.put("aair", "MalformedJson");
            this.zzb.add(mapZzg);
        }
    }

    public final synchronized void zzb(String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map mapZzg = zzg();
            mapZzg.put("action", "adapter_init_finished");
            mapZzg.put("ancn", str);
            mapZzg.put("rqe", str2);
            this.zzb.add(mapZzg);
        }
    }

    public final synchronized void zzc(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map mapZzg = zzg();
            mapZzg.put("action", "adapter_init_started");
            mapZzg.put("ancn", str);
            this.zzb.add(mapZzg);
        }
    }

    public final synchronized void zzd(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map mapZzg = zzg();
            mapZzg.put("action", "adapter_init_finished");
            mapZzg.put("ancn", str);
            this.zzb.add(mapZzg);
        }
    }

    public final synchronized void zze() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue() && !this.zzd) {
            Map mapZzg = zzg();
            mapZzg.put("action", "init_finished");
            this.zzb.add(mapZzg);
            Iterator it = this.zzb.iterator();
            while (it.hasNext()) {
                this.zzf.zzg((Map) it.next());
            }
            this.zzd = true;
        }
    }

    public final synchronized void zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue() && !this.zzc) {
            Map mapZzg = zzg();
            mapZzg.put("action", "init_started");
            this.zzb.add(mapZzg);
            this.zzc = true;
        }
    }
}
