package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l4 extends i4 {
    private Map c;

    @Override // com.applovin.impl.i4
    public String toString() {
        return "ConsentFlowState{id=" + b() + "type=" + c() + "isInitialState=" + d() + "name=" + f() + "}";
    }

    public Map e() {
        return this.c;
    }

    public l4(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        super(jSONObject, jVar);
    }

    public String f() {
        return JsonUtils.getString(this.b, "name", null);
    }
}
