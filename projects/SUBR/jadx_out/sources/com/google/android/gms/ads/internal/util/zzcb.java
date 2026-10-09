package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.zzbcl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcb {
    private final Map zza = new HashMap();
    private final List zzb = new ArrayList();
    private final Context zzc;

    zzcb(Context context) {
        this.zzc = context;
    }

    final synchronized void zzb(String str) {
        if (this.zza.containsKey(str)) {
            return;
        }
        SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.zzc) : this.zzc.getSharedPreferences(str, 0);
        zzca zzcaVar = new zzca(this, str);
        this.zza.put(str, zzcaVar);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(zzcaVar);
    }

    public final void zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkm)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            Map mapZzw = zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkr));
            Iterator it = mapZzw.keySet().iterator();
            while (it.hasNext()) {
                zzb((String) it.next());
            }
            zzd(new zzbz(mapZzw));
        }
    }

    final synchronized void zzd(zzbz zzbzVar) {
        this.zzb.add(zzbzVar);
    }
}
