package org.json;

import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class pj {
    private String a;
    private JSONObject b;
    private String c;
    private String d;

    public pj(JSONObject jSONObject) {
        this.a = jSONObject.optString(y8.f.b);
        this.b = jSONObject.optJSONObject(y8.f.c);
        this.c = jSONObject.optString("success");
        this.d = jSONObject.optString(y8.f.e);
    }

    public String a() {
        return this.d;
    }

    public String b() {
        return this.a;
    }

    public JSONObject c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(y8.f.b, this.a);
            jSONObject.put(y8.f.c, this.b);
            jSONObject.put("success", this.c);
            jSONObject.put(y8.f.e, this.d);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject;
    }
}
