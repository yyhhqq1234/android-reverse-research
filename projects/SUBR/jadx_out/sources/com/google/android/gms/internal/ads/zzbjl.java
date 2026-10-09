package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbjl implements zzbjp {
    zzbjl() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzcexVar.zzde();
        } else if ("resume".equals(str)) {
            zzcexVar.zzdf();
        }
    }
}
