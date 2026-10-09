package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class dq implements hh {
    private int a;
    private int b;
    private Uri c;
    private iq d;
    private final Set f = new HashSet();
    private final Map g = new HashMap();

    public String toString() {
        return "VastCompanionAd{width=" + this.a + ", height=" + this.b + ", destinationUri=" + this.c + ", nonVideoResource=" + this.d + ", clickTrackers=" + this.f + ", eventTrackers=" + this.g + '}';
    }

    private dq() {
    }

    public static dq a(es esVar, dq dqVar, eq eqVar, com.applovin.impl.sdk.j jVar) {
        es esVarC;
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            if (dqVar == null) {
                try {
                    dqVar = new dq();
                } catch (Throwable th) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().a("VastCompanionAd", "Error occurred while initializing", th);
                    }
                    jVar.D().a("VastCompanionAd", th);
                    return null;
                }
            }
            if (dqVar.a == 0 && dqVar.b == 0) {
                int i = StringUtils.parseInt((String) esVar.a().get("width"));
                int i2 = StringUtils.parseInt((String) esVar.a().get("height"));
                if (i > 0 && i2 > 0) {
                    dqVar.a = i;
                    dqVar.b = i2;
                }
            }
            dqVar.d = iq.a(esVar, dqVar.d, jVar);
            if (dqVar.c == null && (esVarC = esVar.c("CompanionClickThrough")) != null) {
                String strD = esVarC.d();
                if (StringUtils.isValidString(strD)) {
                    dqVar.c = Uri.parse(strD);
                }
            }
            mq.a(esVar.a("CompanionClickTracking"), dqVar.f, eqVar, jVar);
            mq.a(esVar, dqVar.g, eqVar, jVar);
            return dqVar;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public Uri c() {
        return this.c;
    }

    public iq e() {
        return this.d;
    }

    public Set b() {
        return this.f;
    }

    public Map d() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dq)) {
            return false;
        }
        dq dqVar = (dq) obj;
        if (this.a != dqVar.a || this.b != dqVar.b) {
            return false;
        }
        Uri uri = this.c;
        if (uri == null ? dqVar.c != null : !uri.equals(dqVar.c)) {
            return false;
        }
        iq iqVar = this.d;
        if (iqVar == null ? dqVar.d != null : !iqVar.equals(dqVar.d)) {
            return false;
        }
        Set set = this.f;
        if (set == null ? dqVar.f != null : !set.equals(dqVar.f)) {
            return false;
        }
        Map map = this.g;
        Map map2 = dqVar.g;
        if (map != null) {
            return map.equals(map2);
        }
        return map2 == null;
    }

    public int hashCode() {
        int i = ((this.a * 31) + this.b) * 31;
        Uri uri = this.c;
        int iHashCode = (i + (uri != null ? uri.hashCode() : 0)) * 31;
        iq iqVar = this.d;
        int iHashCode2 = (iHashCode + (iqVar != null ? iqVar.hashCode() : 0)) * 31;
        Set set = this.f;
        int iHashCode3 = (iHashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map map = this.g;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public static dq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        int i = JsonUtils.getInt(jSONObject, "width", 0);
        int i2 = JsonUtils.getInt(jSONObject, "height", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        Uri uri = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        iq iqVarA = iq.a(JsonUtils.getJSONObject(jSONObject, "non_video_resource", (JSONObject) null), jVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            kq kqVarA = kq.a(JsonUtils.getJSONObject(jSONArray, i3, (JSONObject) null), jVar);
            if (kqVarA != null) {
                hashSet.add(kqVarA);
            }
        }
        dq dqVar = new dq();
        dqVar.a = i;
        dqVar.b = i2;
        dqVar.c = uri;
        dqVar.d = iqVarA;
        dqVar.f.addAll(hashSet);
        return dqVar;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "width", this.a);
        JsonUtils.putInt(jSONObject, "height", this.b);
        Uri uri = this.c;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        iq iqVar = this.d;
        JsonUtils.putJSONObject(jSONObject, "non_video_resource", iqVar != null ? iqVar.a() : null);
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            jSONArray.put(((kq) it.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        return jSONObject;
    }
}
