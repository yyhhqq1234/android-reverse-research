package com.applovin.impl;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class nq implements hh {
    private List a;
    private List b;
    private int c;
    private Uri d;
    private final Set f;
    private gq g;
    private final Map h;

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.a + ", durationSeconds=" + this.c + ", destinationUri=" + this.d + ", clickTrackers=" + this.f + ", eventTrackers=" + this.h + ", industryIcon=" + this.g + '}';
    }

    private nq() {
        this.a = Collections.emptyList();
        this.b = Collections.emptyList();
        this.f = new HashSet();
        this.h = new HashMap();
    }

    public static nq a(es esVar, nq nqVar, eq eqVar, com.applovin.impl.sdk.j jVar) {
        es esVarC;
        gq gqVarA;
        List listA;
        es esVarC2;
        List listA2;
        es esVarC3;
        int iA;
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (eqVar == null) {
            throw new IllegalArgumentException("No context specified.");
        }
        if (jVar != null) {
            if (nqVar == null) {
                try {
                    nqVar = new nq(eqVar);
                } catch (Throwable th) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().a("VastVideoCreative", "Error occurred while initializing", th);
                    }
                    jVar.D().a("VastVideoCreative", th);
                    return null;
                }
            }
            if (nqVar.c == 0 && (esVarC3 = esVar.c("Duration")) != null && (iA = a(esVarC3.d(), jVar)) > 0) {
                nqVar.c = iA;
            }
            es esVarC4 = esVar.c("MediaFiles");
            if (esVarC4 != null && (listA2 = a(esVarC4, jVar)) != null && listA2.size() > 0) {
                List list = nqVar.a;
                if (list != null) {
                    listA2.addAll(list);
                }
                nqVar.a = listA2;
            }
            es esVarC5 = esVar.c("VideoClicks");
            if (esVarC5 != null) {
                if (nqVar.d == null && (esVarC2 = esVarC5.c("ClickThrough")) != null) {
                    String strD = esVarC2.d();
                    if (StringUtils.isValidString(strD)) {
                        nqVar.d = Uri.parse(strD);
                    }
                }
                mq.a(esVarC5.a("ClickTracking"), nqVar.f, eqVar, jVar);
            }
            es esVarC6 = esVar.c("Icons");
            if (esVarC6 != null && (gqVarA = gq.a((esVarC = esVarC6.c("Icon")), jVar)) != null) {
                es esVarC7 = esVarC.c("IconClicks");
                if (esVarC7 != null && (listA = esVarC7.a("IconClickTracking")) != null) {
                    mq.a(listA, gqVarA.a, eqVar, jVar);
                }
                List listA3 = esVarC.a("IconViewTracking");
                if (listA3 != null) {
                    mq.a(listA3, gqVarA.b, eqVar, jVar);
                }
                nqVar.g = gqVarA;
            }
            mq.a(esVar, nqVar.h, eqVar, jVar);
            return nqVar;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    private nq(eq eqVar) {
        this.a = Collections.emptyList();
        this.b = Collections.emptyList();
        this.f = new HashSet();
        this.h = new HashMap();
        this.b = eqVar.f();
    }

    public List g() {
        return this.a;
    }

    public int d() {
        return this.c;
    }

    public Uri c() {
        return this.d;
    }

    public Set b() {
        return this.f;
    }

    public Map e() {
        return this.h;
    }

    public gq f() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nq)) {
            return false;
        }
        nq nqVar = (nq) obj;
        if (this.c != nqVar.c) {
            return false;
        }
        List list = this.a;
        if (list == null ? nqVar.a != null : !list.equals(nqVar.a)) {
            return false;
        }
        Uri uri = this.d;
        if (uri == null ? nqVar.d != null : !uri.equals(nqVar.d)) {
            return false;
        }
        Set set = this.f;
        if (set == null ? nqVar.f != null : !set.equals(nqVar.f)) {
            return false;
        }
        Map map = this.h;
        Map map2 = nqVar.h;
        if (map != null) {
            return map.equals(map2);
        }
        return map2 == null;
    }

    public int hashCode() {
        List list = this.a;
        int iHashCode = (((list != null ? list.hashCode() : 0) * 31) + this.c) * 31;
        Uri uri = this.d;
        int iHashCode2 = (iHashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        Set set = this.f;
        int iHashCode3 = (iHashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map map = this.h;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public static nq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        nq nqVar = new nq();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "video_files", new JSONArray());
        nqVar.a = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            oq oqVarA = oq.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jVar);
            if (oqVarA != null) {
                nqVar.a.add(oqVarA);
            }
        }
        nqVar.b = JsonUtils.getStringList(jSONObject, "preferred_video_file_types", Collections.emptyList());
        nqVar.c = JsonUtils.getInt(jSONObject, "duration_seconds", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        nqVar.d = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            kq kqVarA = kq.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), jVar);
            if (kqVarA != null) {
                nqVar.f.add(kqVarA);
            }
        }
        nqVar.g = gq.a(JsonUtils.getJSONObject(jSONObject, "industry_icon", (JSONObject) null), jVar);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "event_trackers", new JSONObject());
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            HashSet hashSet = new HashSet();
            String next = itKeys.next();
            JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject2, next, new JSONArray());
            for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                kq kqVarA2 = kq.a(JsonUtils.getJSONObject(jSONArray3, i3, (JSONObject) null), jVar);
                if (kqVarA2 != null) {
                    hashSet.add(kqVarA2);
                }
            }
            nqVar.h.put(next, hashSet);
        }
        return nqVar;
    }

    public oq a(long j) {
        List list = this.a;
        oq oqVar = null;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<oq> arrayList = new ArrayList(3);
        for (String str : this.b) {
            for (oq oqVar2 : this.a) {
                String strC = oqVar2.c();
                if (StringUtils.isValidString(strC) && str.equalsIgnoreCase(strC)) {
                    arrayList.add(oqVar2);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.a;
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.applovin.impl.nq$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return nq.a((oq) obj, (oq) obj2);
            }
        });
        for (oq oqVar3 : arrayList) {
            if (oqVar3.b() > j) {
                break;
            }
            oqVar = oqVar3;
        }
        return oqVar != null ? oqVar : (oq) arrayList.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(oq oqVar, oq oqVar2) {
        return Long.compare(oqVar.b(), oqVar2.b());
    }

    private static int a(String str, com.applovin.impl.sdk.j jVar) {
        try {
            List<String> listExplode = CollectionUtils.explode(str, ":");
            if (listExplode.size() == 3) {
                return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(listExplode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(listExplode.get(1))) + ((long) StringUtils.parseInt(listExplode.get(2))));
            }
        } catch (Throwable unused) {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().b("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            }
        }
        return 0;
    }

    private static List a(es esVar, com.applovin.impl.sdk.j jVar) {
        List listA = esVar.a("MediaFile");
        ArrayList arrayList = new ArrayList(listA.size());
        List<String> listExplode = CollectionUtils.explode((String) jVar.a(sj.I4));
        List<String> listExplode2 = CollectionUtils.explode((String) jVar.a(sj.H4));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            oq oqVarA = oq.a((es) it.next(), jVar);
            if (oqVarA != null) {
                try {
                    String strC = oqVarA.c();
                    if (StringUtils.isValidString(strC) && !listExplode.contains(strC)) {
                        arrayList.add(oqVarA);
                    } else {
                        if (((Boolean) jVar.a(sj.J4)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(oqVarA.e().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !listExplode2.contains(fileExtensionFromUrl)) {
                                arrayList.add(oqVarA);
                            }
                        }
                        jVar.I();
                        if (com.applovin.impl.sdk.n.a()) {
                            jVar.I().k("VastVideoCreative", "Video file not supported: " + oqVarA);
                        }
                    }
                } catch (Throwable th) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().a("VastVideoCreative", "Failed to validate video file: " + oqVarA, th);
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        List list = this.a;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((oq) it.next()).a());
            }
        }
        JsonUtils.putJsonArray(jSONObject, "video_files", jSONArray);
        JsonUtils.putJsonArray(jSONObject, "preferred_video_file_types", new JSONArray((Collection) this.b));
        JsonUtils.putInt(jSONObject, "duration_seconds", this.c);
        Uri uri = this.d;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = this.f.iterator();
        while (it2.hasNext()) {
            jSONArray2.put(((kq) it2.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray2);
        gq gqVar = this.g;
        if (gqVar != null) {
            JsonUtils.putJSONObject(jSONObject, "industry_icon", gqVar.a());
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.h.keySet()) {
            Set set = (Set) this.h.get(str);
            if (set != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator it3 = set.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(((kq) it3.next()).a());
                }
                JsonUtils.putJsonArray(jSONObject2, str, jSONArray3);
            }
        }
        JsonUtils.putJSONObject(jSONObject, "event_trackers", jSONObject2);
        return jSONObject;
    }
}
