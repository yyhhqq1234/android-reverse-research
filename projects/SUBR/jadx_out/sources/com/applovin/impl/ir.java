package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ir {
    private final ic a;
    private final cg b;
    private final List c;

    public ir(JSONObject jSONObject, MaxAdFormat maxAdFormat, je jeVar, com.applovin.impl.sdk.j jVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "bidder_placement", (JSONObject) null);
        if (jSONObject2 != null) {
            this.b = new cg(jSONObject2, jVar);
        } else {
            this.b = null;
        }
        this.a = new ic(JsonUtils.getString(jSONObject, "name", ""), JsonUtils.getString(jSONObject, "display_name", ""), jSONObject2 != null, jeVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, org.json.oo.c, new JSONArray());
        this.c = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject3 != null) {
                this.c.add(new cg(jSONObject3, jVar));
            }
        }
    }

    public ic b() {
        return this.a;
    }

    public cg a() {
        return this.b;
    }

    public boolean d() {
        return this.b != null;
    }

    public List c() {
        return this.c;
    }
}
