package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdta {
    private Long zza;
    private final String zzb;
    private String zzc;
    private Integer zzd;
    private String zze;
    private Integer zzf;

    /* synthetic */ zzdta(String str, zzdtb zzdtbVar) {
        this.zzb = str;
    }

    static /* bridge */ /* synthetic */ String zza(zzdta zzdtaVar) {
        String str = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjQ);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", zzdtaVar.zza);
            jSONObject.put("eventCategory", zzdtaVar.zzb);
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, zzdtaVar.zzc);
            jSONObject.putOpt(IronSourceConstants.EVENTS_ERROR_CODE, zzdtaVar.zzd);
            jSONObject.putOpt("rewardType", zzdtaVar.zze);
            jSONObject.putOpt(IronSourceConstants.EVENTS_REWARD_AMOUNT, zzdtaVar.zzf);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert parameters to JSON.");
        }
        return str + "(\"h5adsEvent\"," + jSONObject.toString() + ");";
    }
}
