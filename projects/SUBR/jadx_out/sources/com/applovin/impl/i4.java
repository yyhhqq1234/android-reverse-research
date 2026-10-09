package com.applovin.impl;

import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class i4 {
    protected final com.applovin.impl.sdk.j a;
    protected final JSONObject b;

    public enum a {
        NONE,
        IS_AL_GDPR
    }

    public enum b {
        ALERT,
        EVENT,
        HAS_USER_CONSENT,
        REINIT,
        CMP_LOAD,
        CMP_SHOW,
        DECISION,
        TERMS_FLOW
    }

    public String toString() {
        return "ConsentFlowState{id=" + b() + "type=" + c() + "isInitialState=" + d() + "}";
    }

    public i4(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jSONObject;
    }

    public static i4 a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        b bVarC = c(JsonUtils.getString(jSONObject, "type", null));
        if (bVarC == b.ALERT) {
            return new j4(jSONObject, jVar);
        }
        if (bVarC == b.EVENT) {
            return new l4(jSONObject, jVar);
        }
        return new i4(jSONObject, jVar);
    }

    public String b() {
        return JsonUtils.getString(this.b, "id", null);
    }

    public b c() {
        return c(JsonUtils.getString(this.b, "type", null));
    }

    private static b c(String str) {
        if ("alert".equalsIgnoreCase(str)) {
            return b.ALERT;
        }
        if (NotificationCompat.CATEGORY_EVENT.equalsIgnoreCase(str)) {
            return b.EVENT;
        }
        if ("cmp_load".equalsIgnoreCase(str)) {
            return b.CMP_LOAD;
        }
        if ("cmp_show".equalsIgnoreCase(str)) {
            return b.CMP_SHOW;
        }
        if ("decision".equalsIgnoreCase(str)) {
            return b.DECISION;
        }
        if ("terms_flow".equalsIgnoreCase(str)) {
            return b.TERMS_FLOW;
        }
        if ("huc".equalsIgnoreCase(str)) {
            return b.HAS_USER_CONSENT;
        }
        if ("reinit".equalsIgnoreCase(str)) {
            return b.REINIT;
        }
        throw new IllegalArgumentException("Invalid type provided: " + str);
    }

    public boolean d() {
        return JsonUtils.getBoolean(this.b, "is_initial_state", Boolean.FALSE).booleanValue();
    }

    public a a() {
        return a(JsonUtils.getString(this.b, "decision_type", null));
    }

    protected String b(String str) {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.b, str, (JSONObject) null);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "replacements", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String string = JsonUtils.getObjectAtIndex(jSONArray, i, "").toString();
            if ("<APP_NAME>".equalsIgnoreCase(string)) {
                String str2 = (String) this.a.x().G().get("app_name");
                if (StringUtils.isValidString(str2)) {
                    arrayList.add(str2);
                } else {
                    arrayList.add(com.applovin.impl.sdk.j.a("THIS_APP"));
                }
            } else {
                arrayList.add(string);
            }
        }
        return com.applovin.impl.sdk.j.a(JsonUtils.getString(jSONObject, com.ironsource.y8.h.W, null), arrayList);
    }

    public String a(Boolean bool) {
        String string = JsonUtils.getString(this.b, "destination_state_id", null);
        if (StringUtils.isValidString(string)) {
            return string;
        }
        if (bool != null) {
            return bool.booleanValue() ? JsonUtils.getString(this.b, "destination_state_id_true", null) : JsonUtils.getString(this.b, "destination_state_id_false", null);
        }
        throw new IllegalStateException("Decision needed for state: " + string);
    }

    private static a a(String str) {
        if ("is_al_gdpr".equalsIgnoreCase(str)) {
            return a.IS_AL_GDPR;
        }
        return a.NONE;
    }
}
