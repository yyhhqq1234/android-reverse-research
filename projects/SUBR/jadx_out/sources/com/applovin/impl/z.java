package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class z implements Comparable {
    private final String a;
    private final String b;
    private final MaxAdFormat c;
    private final a0 d;
    private final List f;

    public String e() {
        return "\n---------- " + this.b + " ----------\nIdentifier - " + this.a + "\nFormat     - " + b();
    }

    public z(JSONObject jSONObject, Map map, com.applovin.impl.sdk.j jVar) {
        this.a = JsonUtils.getString(jSONObject, "name", "");
        this.b = JsonUtils.getString(jSONObject, "display_name", "");
        this.c = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "format", null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "waterfalls", new JSONArray());
        this.f = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                this.f.add(new a0(jSONObject2, map, this.c, jVar));
            }
        }
        this.d = this.f.isEmpty() ? null : (a0) this.f.get(0);
    }

    public String c() {
        return this.a;
    }

    public String d() {
        return this.b;
    }

    public String b() {
        MaxAdFormat maxAdFormat = this.c;
        return maxAdFormat != null ? maxAdFormat.getLabel() : "Unknown";
    }

    public a0 f() {
        return this.d;
    }

    public List g() {
        return this.f;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(z zVar) {
        return this.b.compareToIgnoreCase(zVar.b);
    }

    public MaxAdFormat a() {
        return this.c;
    }
}
