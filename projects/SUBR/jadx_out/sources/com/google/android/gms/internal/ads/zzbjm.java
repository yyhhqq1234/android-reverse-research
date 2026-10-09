package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbjm implements zzbjp {
    zzbjm() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        if (map.keySet().contains("start")) {
            zzcexVar.zzN().zzm();
        } else if (map.keySet().contains("stop")) {
            zzcexVar.zzN().zzn();
        } else if (map.keySet().contains("cancel")) {
            zzcexVar.zzN().zzl();
        }
    }
}
