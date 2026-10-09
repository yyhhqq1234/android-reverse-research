package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a0 {
    private final String a;
    private final String b;
    private final kr c;
    private final List d;
    private final List e;
    private boolean f = false;

    a0(JSONObject jSONObject, Map map, MaxAdFormat maxAdFormat, com.applovin.impl.sdk.j jVar) {
        this.a = JsonUtils.getString(jSONObject, "name", "");
        this.b = JsonUtils.getString(jSONObject, "experiment", null);
        this.c = a(jSONObject);
        this.d = a("bidders", jSONObject, map, maxAdFormat, jVar);
        this.e = a(org.json.mediationsdk.d.h, jSONObject, map, maxAdFormat, jVar);
    }

    public String c() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public kr d() {
        return this.c;
    }

    public List a() {
        return this.d;
    }

    public List e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    private List a(String str, JSONObject jSONObject, Map map, MaxAdFormat maxAdFormat, com.applovin.impl.sdk.j jVar) {
        je jeVar;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, str, new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null && (jeVar = (je) map.get(JsonUtils.getString(jSONObject2, "adapter_class", ""))) != null) {
                if (jeVar.C()) {
                    this.f = true;
                }
                arrayList.add(new ir(jSONObject2, maxAdFormat, jeVar, jVar));
            }
        }
        return arrayList;
    }

    private kr a(JSONObject jSONObject) {
        return new kr(JsonUtils.getJSONObject(jSONObject, "targeting"));
    }
}
