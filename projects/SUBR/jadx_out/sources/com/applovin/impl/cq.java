package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class cq implements hh {
    private final List a;

    public String toString() {
        return "VastAdVerification{verifications='" + this.a + "'}";
    }

    private cq(List list) {
        this.a = list;
    }

    public static cq a(es esVar, cq cqVar, eq eqVar, com.applovin.impl.sdk.j jVar) {
        List arrayList;
        try {
            if (cqVar != null) {
                arrayList = cqVar.b();
            } else {
                arrayList = new ArrayList();
            }
            Iterator it = esVar.a("Verification").iterator();
            while (it.hasNext()) {
                bq bqVarA = bq.a((es) it.next(), eqVar, jVar);
                if (bqVarA != null) {
                    arrayList.add(bqVarA);
                }
            }
            return new cq(arrayList);
        } catch (Throwable th) {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().a("VastAdVerifications", "Error occurred while initializing", th);
            }
            jVar.D().a("VastAdVerifications", th);
            return null;
        }
    }

    public List b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cq) {
            return this.a.equals(((cq) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    static cq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "verifications", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            bq bqVarA = bq.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jVar);
            if (bqVarA != null) {
                arrayList.add(bqVarA);
            }
        }
        return new cq(arrayList);
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        if (this.a != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                jSONArray.put(((bq) it.next()).a());
            }
            JsonUtils.putJsonArray(jSONObject, "verifications", jSONArray);
        }
        return jSONObject;
    }
}
