package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeus implements zzetq {
    private final AdvertisingIdClient.Info zza;
    private final String zzb;
    private final zzfra zzc;

    public zzeus(AdvertisingIdClient.Info info, String str, zzfra zzfraVar) {
        this.zza = info;
        this.zzb = str;
        this.zzc = zzfraVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            JSONObject jSONObjectZzg = com.google.android.gms.ads.internal.util.zzbs.zzg((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.zza;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                String str = this.zzb;
                if (str != null) {
                    jSONObjectZzg.put("pdid", str);
                    jSONObjectZzg.put("pdidtype", "ssaid");
                    return;
                }
                return;
            }
            jSONObjectZzg.put("rdid", this.zza.getId());
            jSONObjectZzg.put("is_lat", this.zza.isLimitAdTrackingEnabled());
            jSONObjectZzg.put("idtype", "adid");
            zzfra zzfraVar = this.zzc;
            if (zzfraVar.zzc()) {
                jSONObjectZzg.put("paidv1_id_android_3p", zzfraVar.zzb());
                jSONObjectZzg.put("paidv1_creation_time_android_3p", this.zzc.zza());
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed putting Ad ID.", e);
        }
    }
}
