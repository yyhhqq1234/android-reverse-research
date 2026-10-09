package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bq implements hh {
    private final String a;
    private final List b;
    private final String c;
    private final Set d;

    public String toString() {
        return "VastAdVerification{vendorId='" + this.a + "'javascriptResources='" + this.b + "'verificationParameters='" + this.c + "'errorEventTrackers='" + this.d + "'}";
    }

    private bq(String str, List list, String str2, Set set) {
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = set;
    }

    public static bq a(es esVar, eq eqVar, com.applovin.impl.sdk.j jVar) {
        try {
            String str = (String) esVar.a().get("vendor");
            es esVarB = esVar.b("VerificationParameters");
            String strD = esVarB != null ? esVarB.d() : null;
            List listA = esVar.a("JavaScriptResource");
            ArrayList arrayList = new ArrayList(listA.size());
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                hq hqVarA = hq.a((es) it.next(), jVar);
                if (hqVarA != null) {
                    arrayList.add(hqVarA);
                }
            }
            HashMap map = new HashMap();
            mq.a(esVar, map, eqVar, jVar);
            return new bq(str, arrayList, strD, (Set) map.get("verificationNotExecuted"));
        } catch (Throwable th) {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().a("VastAdVerification", "Error occurred while initializing", th);
            }
            jVar.D().a("VastAdVerification", th);
            return null;
        }
    }

    public String d() {
        return this.a;
    }

    public List c() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public Set b() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bq bqVar = (bq) obj;
        String str = this.a;
        if (str == null ? bqVar.a != null : !str.equals(bqVar.a)) {
            return false;
        }
        List list = this.b;
        if (list == null ? bqVar.b != null : !list.equals(bqVar.b)) {
            return false;
        }
        String str2 = this.c;
        if (str2 == null ? bqVar.c != null : !str2.equals(bqVar.c)) {
            return false;
        }
        Set set = this.d;
        Set set2 = bqVar.d;
        if (set != null) {
            return set.equals(set2);
        }
        return set2 == null;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        List list = this.b;
        int iHashCode2 = (iHashCode + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Set set = this.d;
        return iHashCode3 + (set != null ? set.hashCode() : 0);
    }

    public static bq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "vendor_id", null);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "javascript_resources", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            hq hqVarA = hq.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jVar);
            if (hqVarA != null) {
                arrayList.add(hqVarA);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "verification_parameters", null);
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "error_event_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            kq kqVarA = kq.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), jVar);
            if (kqVarA != null) {
                hashSet.add(kqVarA);
            }
        }
        return new bq(string, arrayList, string2, hashSet);
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "vendor_id", this.a);
        if (this.b != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                jSONArray.put(((hq) it.next()).a());
            }
            JsonUtils.putJsonArray(jSONObject, "javascript_resources", jSONArray);
        }
        JsonUtils.putString(jSONObject, "verification_parameters", this.c);
        if (this.d != null) {
            JSONArray jSONArray2 = new JSONArray();
            Iterator it2 = this.d.iterator();
            while (it2.hasNext()) {
                jSONArray2.put(((kq) it2.next()).a());
            }
            JsonUtils.putJsonArray(jSONObject, "error_event_trackers", jSONArray2);
        }
        return jSONObject;
    }
}
