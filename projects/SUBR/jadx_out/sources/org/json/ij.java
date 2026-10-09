package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
class ij extends e {
    private final String i = "https://o-sdk.mediation.unity3d.com/mediation?adUnit=2";
    private final String j = "super.dwh.mediation_events";
    private final String k = rb.Q;
    private final String l = "data";

    ij(int i) {
        this.g = i;
    }

    @Override // org.json.e
    public String a() {
        return "https://o-sdk.mediation.unity3d.com/mediation?adUnit=2";
    }

    @Override // org.json.e
    public String a(ArrayList<ob> arrayList, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        this.f = jSONObject;
        try {
            JSONArray jSONArray = new JSONArray();
            if (arrayList != null && !arrayList.isEmpty()) {
                Iterator<ob> it = arrayList.iterator();
                while (it.hasNext()) {
                    JSONObject jSONObjectA = a(it.next());
                    if (jSONObjectA != null) {
                        jSONArray.put(jSONObjectA);
                    }
                }
            }
            jSONObject2.put(rb.Q, "super.dwh.mediation_events");
            jSONObject2.put("data", a(jSONArray));
            return jSONObject2.toString();
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return "";
        }
    }

    @Override // org.json.e
    public String c() {
        return "ironbeast";
    }
}
