package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class aq extends com.applovin.impl.sdk.ad.b implements hh {
    private final String l;
    private final String m;
    private final jq n;
    private final long o;
    private final nq p;
    private final dq q;
    private final String r;
    private final cq s;
    private final rg t;
    private final Set u;
    private final Set v;

    public enum c {
        COMPANION_AD,
        VIDEO
    }

    public enum d {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        INDUSTRY_ICON_IMPRESSION,
        INDUSTRY_ICON_CLICK,
        ERROR
    }

    @Override // com.applovin.impl.sdk.ad.b
    public void N0() {
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public String toString() {
        return "VastAd{title='" + this.l + "', adDescription='" + this.m + "', systemInfo=" + this.n + ", videoCreative=" + this.p + ", companionAd=" + this.q + ", adVerifications=" + this.s + ", impressionTrackers=" + this.u + ", errorTrackers=" + this.v + '}';
    }

    private aq(b bVar) {
        super(bVar.a, bVar.b, bVar.c);
        this.l = bVar.e;
        this.n = bVar.g;
        this.m = bVar.f;
        this.p = bVar.h;
        this.q = bVar.i;
        this.s = bVar.j;
        this.u = bVar.k;
        this.v = bVar.l;
        this.t = new rg(this);
        Uri uriU0 = u0();
        if (uriU0 != null) {
            this.r = uriU0.toString();
        } else {
            this.r = "";
        }
        this.o = bVar.d;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean G0() {
        return getBooleanFromFullResponse("is_persisted_ad", false);
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        return this.fullResponse;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        List listG;
        nq nqVar = this.p;
        return (nqVar == null || (listG = nqVar.g()) == null || listG.size() <= 0) ? false : true;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean K0() {
        return getBooleanFromAdObject("vast_is_streaming", Boolean.FALSE);
    }

    public void z1() {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            tlVar.c("vast_is_streaming");
            return;
        }
        synchronized (this.adObjectLock) {
            this.adObject.remove("vast_is_streaming");
        }
    }

    @Override // com.applovin.impl.sdk.ad.b
    public String Q() {
        return this.r;
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject("omsdk_enabled", Boolean.TRUE) && this.s != null;
    }

    public boolean D1() {
        return getBooleanFromAdObject("iopms", Boolean.FALSE);
    }

    public boolean E1() {
        return getBooleanFromAdObject("iopmsfsr", Boolean.TRUE);
    }

    public long s1() {
        return getLongFromAdObject("real_close_delay", 0L);
    }

    public c p1() {
        if ("companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad"))) {
            return c.COMPANION_AD;
        }
        return c.VIDEO;
    }

    public boolean y1() {
        return getBooleanFromAdObject("vast_immediate_ad_load", Boolean.TRUE);
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public rg getAdEventTracker() {
        return this.t;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri u0() {
        oq oqVarW1 = w1();
        if (oqVarW1 != null) {
            return oqVarW1.e();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri j() {
        nq nqVar = this.p;
        if (nqVar != null) {
            return nqVar.c();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri l0() {
        return j();
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean J0() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE) && j() != null;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public List F() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.aq$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.w((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("vimp_urls", new JSONObject()), getClCode(), null, q1(), R(), V0(), this.sdk);
        }
        return listA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List w(tl tlVar) {
        return yp.a(tlVar.a("vimp_urls", new JSONObject()), getClCode(), null, q1(), R(), V0(), this.sdk);
    }

    private String q1() {
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject != null) {
            return stringFromAdObject.replace("{CLCODE}", getClCode());
        }
        return null;
    }

    public jq t1() {
        return this.n;
    }

    public nq v1() {
        return this.p;
    }

    public oq w1() {
        Long lF = e4.f(this.sdk);
        return this.p.a(lF != null ? lF.longValue() : 0L);
    }

    public dq l1() {
        return this.q;
    }

    public gq r1() {
        nq nqVar = this.p;
        if (nqVar != null) {
            return nqVar.f();
        }
        return null;
    }

    public boolean x1() {
        return r1() != null;
    }

    public boolean C1() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", Boolean.FALSE);
    }

    public void b(String str) {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            tlVar.b("html_template", str);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html_template", str);
        }
    }

    public String n1() {
        return getStringFromAdObject("html_template", "");
    }

    public Uri o1() {
        String stringFromAdObject = getStringFromAdObject("html_template_url", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean A1() {
        return getBooleanFromAdObject("cache_companion_ad", Boolean.TRUE);
    }

    public boolean B1() {
        return getBooleanFromAdObject("cache_video", Boolean.TRUE);
    }

    public cq k1() {
        return this.s;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.o;
    }

    private Set u1() {
        nq nqVar = this.p;
        if (nqVar != null) {
            return nqVar.b();
        }
        return Collections.emptySet();
    }

    private Set m1() {
        dq dqVar = this.q;
        if (dqVar != null) {
            return dqVar.b();
        }
        return Collections.emptySet();
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aq) || !super.equals(obj)) {
            return false;
        }
        aq aqVar = (aq) obj;
        String str = this.l;
        if (str == null ? aqVar.l != null : !str.equals(aqVar.l)) {
            return false;
        }
        String str2 = this.m;
        if (str2 == null ? aqVar.m != null : !str2.equals(aqVar.m)) {
            return false;
        }
        jq jqVar = this.n;
        if (jqVar == null ? aqVar.n != null : !jqVar.equals(aqVar.n)) {
            return false;
        }
        nq nqVar = this.p;
        if (nqVar == null ? aqVar.p != null : !nqVar.equals(aqVar.p)) {
            return false;
        }
        dq dqVar = this.q;
        if (dqVar == null ? aqVar.q != null : !dqVar.equals(aqVar.q)) {
            return false;
        }
        cq cqVar = this.s;
        if (cqVar == null ? aqVar.s != null : !cqVar.equals(aqVar.s)) {
            return false;
        }
        Set set = this.u;
        if (set == null ? aqVar.u != null : !set.equals(aqVar.u)) {
            return false;
        }
        Set set2 = this.v;
        Set set3 = aqVar.v;
        if (set2 != null) {
            return set2.equals(set3);
        }
        return set3 == null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.l;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.m;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        jq jqVar = this.n;
        int iHashCode4 = (iHashCode3 + (jqVar != null ? jqVar.hashCode() : 0)) * 31;
        nq nqVar = this.p;
        int iHashCode5 = (iHashCode4 + (nqVar != null ? nqVar.hashCode() : 0)) * 31;
        dq dqVar = this.q;
        int iHashCode6 = (iHashCode5 + (dqVar != null ? dqVar.hashCode() : 0)) * 31;
        cq cqVar = this.s;
        int iHashCode7 = (iHashCode6 + (cqVar != null ? cqVar.hashCode() : 0)) * 31;
        Set set = this.u;
        int iHashCode8 = (iHashCode7 + (set != null ? set.hashCode() : 0)) * 31;
        Set set2 = this.v;
        return iHashCode8 + (set2 != null ? set2.hashCode() : 0);
    }

    public static class b {
        private JSONObject a;
        private JSONObject b;
        private com.applovin.impl.sdk.j c;
        private long d;
        private String e;
        private String f;
        private jq g;
        private nq h;
        private dq i;
        private cq j;
        private Set k;
        private Set l;

        public b b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.b = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No full ad response specified.");
        }

        public b b(Set set) {
            this.k = set;
            return this;
        }

        public b b(String str) {
            this.e = str;
            return this;
        }

        public b a(String str) {
            this.f = str;
            return this;
        }

        public b a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.a = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No ad object specified.");
        }

        public b a(cq cqVar) {
            this.j = cqVar;
            return this;
        }

        public b a(dq dqVar) {
            this.i = dqVar;
            return this;
        }

        public b a(long j) {
            this.d = j;
            return this;
        }

        public b a(Set set) {
            this.l = set;
            return this;
        }

        public b a(com.applovin.impl.sdk.j jVar) {
            if (jVar != null) {
                this.c = jVar;
                return this;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }

        public b a(jq jqVar) {
            this.g = jqVar;
            return this;
        }

        public b a(nq nqVar) {
            this.h = nqVar;
            return this;
        }

        public aq a() {
            return new aq(this);
        }
    }

    public static aq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "full_response", (JSONObject) null);
        if (jSONObject2 == null) {
            return null;
        }
        bVar.b = jSONObject2;
        JSONObject jSONObject3 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject2, "ads", new JSONArray()), 0, (JSONObject) null);
        if (jSONObject3 == null) {
            return null;
        }
        bVar.a = jSONObject3;
        bVar.c = jVar;
        bVar.d = JsonUtils.getLong(jSONObject, "created_at_millis", 0L);
        bVar.e = JsonUtils.getString(jSONObject, "title", "");
        bVar.f = JsonUtils.getString(jSONObject, "ad_description", "");
        bVar.g = jq.a(JsonUtils.getJSONObject(jSONObject, "system_info", (JSONObject) null), jVar);
        bVar.h = nq.a(JsonUtils.getJSONObject(jSONObject, "video_creative", (JSONObject) null), jVar);
        bVar.i = dq.a(JsonUtils.getJSONObject(jSONObject, "companion_ad", (JSONObject) null), jVar);
        bVar.j = cq.a(JsonUtils.getJSONObject(jSONObject, "ad_verifications", (JSONObject) null), jVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "impression_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            kq kqVarA = kq.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jVar);
            if (kqVarA != null) {
                hashSet.add(kqVarA);
            }
        }
        bVar.k = hashSet;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "error_trackers", new JSONArray());
        HashSet hashSet2 = new HashSet();
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            kq kqVarA2 = kq.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), jVar);
            if (kqVarA2 != null) {
                hashSet2.add(kqVarA2);
            }
        }
        bVar.l = hashSet2;
        aq aqVar = new aq(bVar);
        JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray());
        for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
            Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray3, i3, null);
            if (objectAtIndex instanceof String) {
                String str = (String) objectAtIndex;
                if (!TextUtils.isEmpty(str)) {
                    aqVar.a(Uri.parse(str));
                }
            }
        }
        return aqVar;
    }

    private Set a(c cVar, String[] strArr) {
        Map mapD;
        dq dqVar;
        nq nqVar;
        if (strArr != null && strArr.length > 0) {
            if (cVar == c.VIDEO && (nqVar = this.p) != null) {
                mapD = nqVar.e();
            } else {
                mapD = (cVar != c.COMPANION_AD || (dqVar = this.q) == null) ? null : dqVar.d();
            }
            HashSet hashSet = new HashSet();
            if (mapD != null && !mapD.isEmpty()) {
                for (String str : strArr) {
                    if (mapD.containsKey(str)) {
                        hashSet.addAll((Collection) mapD.get(str));
                    }
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.emptySet();
    }

    public Set a(d dVar, String str) {
        return a(dVar, new String[]{str});
    }

    public Set a(d dVar, String[] strArr) {
        this.sdk.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.sdk.I().a("VastAd", "Retrieving trackers of type '" + dVar + "' and events '" + Arrays.toString(strArr) + "'...");
        }
        if (dVar == d.IMPRESSION) {
            return this.u;
        }
        if (dVar == d.VIDEO_CLICK) {
            return u1();
        }
        if (dVar == d.COMPANION_CLICK) {
            return m1();
        }
        if (dVar == d.VIDEO) {
            return a(c.VIDEO, strArr);
        }
        if (dVar == d.COMPANION) {
            return a(c.COMPANION_AD, strArr);
        }
        if (dVar == d.INDUSTRY_ICON_CLICK) {
            return r1().b();
        }
        if (dVar == d.INDUSTRY_ICON_IMPRESSION) {
            return r1().f();
        }
        if (dVar == d.ERROR) {
            return this.v;
        }
        this.sdk.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.sdk.I().b("VastAd", "Failed to retrieve trackers of invalid type '" + dVar + "' and events '" + Arrays.toString(strArr) + "'");
        }
        return Collections.emptySet();
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putLong(jSONObject, "created_at_millis", this.o);
        JsonUtils.putString(jSONObject, "title", this.l);
        JsonUtils.putString(jSONObject, "ad_description", this.m);
        jq jqVar = this.n;
        if (jqVar != null) {
            JsonUtils.putJSONObject(jSONObject, "system_info", jqVar.a());
        }
        nq nqVar = this.p;
        if (nqVar != null) {
            JsonUtils.putJSONObject(jSONObject, "video_creative", nqVar.a());
        }
        dq dqVar = this.q;
        if (dqVar != null) {
            JsonUtils.putJSONObject(jSONObject, "companion_ad", dqVar.a());
        }
        cq cqVar = this.s;
        if (cqVar != null) {
            JsonUtils.putJSONObject(jSONObject, "ad_verifications", cqVar.a());
        }
        if (this.u != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.u.iterator();
            while (it.hasNext()) {
                jSONArray.put(((kq) it.next()).a());
            }
            JsonUtils.putJsonArray(jSONObject, "impression_trackers", jSONArray);
        }
        if (this.v != null) {
            JSONArray jSONArray2 = new JSONArray();
            Iterator it2 = this.v.iterator();
            while (it2.hasNext()) {
                jSONArray2.put(((kq) it2.next()).a());
            }
            JsonUtils.putJsonArray(jSONObject, "error_trackers", jSONArray2);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it3 = i().iterator();
        while (it3.hasNext()) {
            arrayList.add(((Uri) it3.next()).toString());
        }
        JsonUtils.putJsonArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray((Collection) arrayList));
        tl tlVar = this.synchronizedFullResponse;
        if (tlVar != null) {
            JsonUtils.putJSONObject(jSONObject, "full_response", tlVar.a());
        } else {
            synchronized (this.fullResponseLock) {
                JsonUtils.putJSONObject(jSONObject, "full_response", this.fullResponse);
            }
        }
        return jSONObject;
    }
}
