package org.json;

import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public class zi {
    static String a = "ManRewInst_";

    public static String a() {
        return String.valueOf(System.currentTimeMillis());
    }

    public static String a(oi oiVar) {
        dg.e eVar;
        if (oiVar.i()) {
            eVar = dg.e.Banner;
        } else {
            eVar = oiVar.n() ? dg.e.RewardedVideo : dg.e.Interstitial;
        }
        return eVar.toString();
    }

    public static String a(JSONObject jSONObject) {
        if (!jSONObject.optBoolean("rewarded")) {
            return jSONObject.optString("name");
        }
        return a + jSONObject.optString("name");
    }

    public static String b() {
        return UUID.randomUUID().toString();
    }
}
