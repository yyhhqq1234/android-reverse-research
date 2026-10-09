package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzt extends LinkedHashMap {
    final /* synthetic */ zzv zza;

    zzt(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry entry) {
        synchronized (this.zza) {
            int size = size();
            zzv zzvVar = this.zza;
            if (size <= zzvVar.zza) {
                return false;
            }
            zzvVar.zzf.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
            return size() > this.zza.zza;
        }
    }
}
