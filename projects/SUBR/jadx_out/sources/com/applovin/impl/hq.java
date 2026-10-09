package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class hq implements hh {
    private final String a;
    private final String b;

    public String toString() {
        return "VastJavaScriptResource{apiFramework='" + this.a + "', javascriptResourceUrl='" + this.b + "'}";
    }

    private hq(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static hq a(es esVar, com.applovin.impl.sdk.j jVar) {
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            try {
                return new hq((String) esVar.a().get("apiFramework"), esVar.d());
            } catch (Throwable th) {
                jVar.I();
                if (com.applovin.impl.sdk.n.a()) {
                    jVar.I().a("VastJavaScriptResource", "Error occurred while initializing", th);
                }
                jVar.D().a("VastJavaScriptResource", th);
                return null;
            }
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        hq hqVar = (hq) obj;
        String str = this.a;
        if (str == null ? hqVar.a != null : !str.equals(hqVar.a)) {
            return false;
        }
        String str2 = this.b;
        String str3 = hqVar.b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        return str3 == null;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public static hq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        return new hq(JsonUtils.getString(jSONObject, "api_framework", null), JsonUtils.getString(jSONObject, "javascript_resource_url", null));
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "api_framework", this.a);
        JsonUtils.putString(jSONObject, "javascript_resource_url", this.b);
        return jSONObject;
    }
}
