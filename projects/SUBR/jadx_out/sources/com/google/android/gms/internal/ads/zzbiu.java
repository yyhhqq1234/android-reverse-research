package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbiu implements zzbjp {
    zzbiu() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject jSONObjectZza;
        zzcex zzcexVar = (zzcex) obj;
        zzbfk zzbfkVarZzK = zzcexVar.zzK();
        if (zzbfkVarZzK == null || (jSONObjectZza = zzbfkVarZzK.zza()) == null) {
            zzcexVar.zze("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzcexVar.zze("nativeAdViewSignalsReady", jSONObjectZza);
        }
    }
}
