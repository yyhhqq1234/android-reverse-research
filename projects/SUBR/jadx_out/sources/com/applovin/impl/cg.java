package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class cg {
    private final String a;
    private final String b;

    public cg(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        this.a = JsonUtils.getString(jSONObject, "id", "");
        this.b = JsonUtils.getString(jSONObject, "price", null);
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }
}
