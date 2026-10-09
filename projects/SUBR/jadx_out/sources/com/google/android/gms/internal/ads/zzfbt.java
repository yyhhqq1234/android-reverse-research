package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfbt {
    public final String zza;
    public final String zzb;
    public final JSONObject zzc;
    public final JSONObject zzd;

    zzfbt(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        JSONObject jSONObjectZzi = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
        this.zzd = jSONObjectZzi;
        this.zza = jSONObjectZzi.optString("ad_html", null);
        this.zzb = jSONObjectZzi.optString("ad_base_url", null);
        this.zzc = jSONObjectZzi.optJSONObject("ad_json");
    }
}
