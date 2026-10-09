package com.applovin.impl;

import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class k4 {
    private final com.applovin.impl.sdk.j a;
    private final JSONObject b;

    public enum a {
        NEUTRAL,
        POSITIVE,
        NEGATIVE
    }

    public String toString() {
        return "ConsentFlowStateAlertAction{title=" + d() + "destinationStateId=" + a() + "event=" + b() + "}";
    }

    public static k4 a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        String string = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "title", (JSONObject) null), com.ironsource.y8.h.W, null);
        if ("TOS".equalsIgnoreCase(string) && jVar.u().h() == null) {
            return null;
        }
        if ("PP".equalsIgnoreCase(string) && jVar.u().g() == null) {
            return null;
        }
        return new k4(jSONObject, jVar);
    }

    private k4(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jSONObject;
    }

    public String d() {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.b, "title", (JSONObject) null);
        return com.applovin.impl.sdk.j.a(JsonUtils.getString(jSONObject, com.ironsource.y8.h.W, ""), JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "replacements", null), null));
    }

    public a c() {
        String string = JsonUtils.getString(this.b, "style", null);
        if ("default".equalsIgnoreCase(string)) {
            return a.POSITIVE;
        }
        if (!"destructive".equalsIgnoreCase(string) && !"cancel".equalsIgnoreCase(string)) {
            return a.NEUTRAL;
        }
        return a.NEGATIVE;
    }

    public String b() {
        return JsonUtils.getString(this.b, NotificationCompat.CATEGORY_EVENT, null);
    }

    public String a() {
        return JsonUtils.getString(this.b, "destination_state_id", null);
    }
}
