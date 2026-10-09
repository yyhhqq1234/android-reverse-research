package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class jq implements hh {
    private String a;
    private String b;

    private jq() {
    }

    public String toString() {
        return "VastSystemInfo{name='" + this.a + "', version='" + this.b + "'}";
    }

    public static jq a(es esVar, jq jqVar, com.applovin.impl.sdk.j jVar) {
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            if (jqVar == null) {
                try {
                    jqVar = new jq();
                } catch (Throwable th) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().a("VastSystemInfo", "Error occurred while initializing", th);
                    }
                    jVar.D().a("VastSystemInfo", th);
                    return null;
                }
            }
            if (!StringUtils.isValidString(jqVar.a)) {
                String strD = esVar.d();
                if (StringUtils.isValidString(strD)) {
                    jqVar.a = strD;
                }
            }
            if (!StringUtils.isValidString(jqVar.b)) {
                String str = (String) esVar.a().get("version");
                if (StringUtils.isValidString(str)) {
                    jqVar.b = str;
                }
            }
            return jqVar;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jq)) {
            return false;
        }
        jq jqVar = (jq) obj;
        String str = this.a;
        if (str == null ? jqVar.a != null : !str.equals(jqVar.a)) {
            return false;
        }
        String str2 = this.b;
        String str3 = jqVar.b;
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

    public static jq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        jq jqVar = new jq();
        jqVar.a = JsonUtils.getString(jSONObject, "name", null);
        jqVar.b = JsonUtils.getString(jSONObject, "version", null);
        return jqVar;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", this.a);
        JsonUtils.putString(jSONObject, "version", this.b);
        return jSONObject;
    }
}
