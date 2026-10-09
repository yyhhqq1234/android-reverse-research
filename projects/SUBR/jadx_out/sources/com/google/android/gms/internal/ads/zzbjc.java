package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;
import org.json.mediationsdk.metadata.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbjc implements zzbjp {
    zzbjc() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        try {
            String str = (String) map.get("enabled");
            if (!zzftt.zzc(a.g, str) && !zzftt.zzc("false", str)) {
                return;
            }
            zzfrb.zza(zzcexVar.getContext()).zzb(Boolean.parseBoolean(str));
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
