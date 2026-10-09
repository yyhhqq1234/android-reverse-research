package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.UByte$$ExternalSyntheticBackport0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class lm extends yl {
    private final String h;
    private final MaxAdFormat i;
    private final Map j;
    private final Map k;
    private final Map l;
    private final JSONArray m;
    private final Context n;
    private final com.applovin.impl.mediation.ads.a.InterfaceC0024a o;

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Fetching next ad for " + this.i.getLabel() + " ad unit " + this.h);
        }
        ob.a();
        if (((Boolean) this.a.a(sj.S3)).booleanValue() && yp.j() && com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "User is connected to a VPN");
        }
        this.a.D().a(ka.B, this.i, this.h, (MaxError) null);
        if (((Boolean) this.a.a(sj.C4)).booleanValue()) {
            xe xeVarQ = this.a.Q();
            ve veVar = ve.c;
            xeVarQ.a(veVar, we.a(this.h));
            xeVarQ.a(veVar, we.a(this.i));
        }
        yp.a(this.a, this.b);
        ca caVarC = this.a.C();
        caVarC.c(ba.s);
        ba baVar = ba.g;
        if (caVarC.b(baVar) == 0) {
            caVarC.b(baVar, System.currentTimeMillis());
        }
        try {
            JSONObject jSONObjectG = g();
            HashMap map = new HashMap();
            if (!((Boolean) this.a.a(sj.p5)).booleanValue() && !((Boolean) this.a.a(sj.n5)).booleanValue()) {
                map.put("rid", UUID.randomUUID().toString());
            }
            if (!((Boolean) this.a.a(sj.a5)).booleanValue()) {
                map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
            }
            if (this.a.k0().c()) {
                map.put("test_mode", "1");
            }
            List listB = this.a.k0().b();
            String str = this.a.f0().getExtraParameters().get("fan");
            if (listB != null && !listB.isEmpty()) {
                String strM = UByte$$ExternalSyntheticBackport0.m(",", listB);
                map.put("filter_ad_network", strM);
                if (!this.a.k0().c()) {
                    map.put("fhkZsVqYC7", "1");
                }
                if (this.a.k0().d()) {
                    map.put("force_ad_network", strM);
                }
            } else if (StringUtils.isValidString(str)) {
                map.put("filter_ad_network", str);
            }
            a(caVarC);
            a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).c("POST").a(h()).b(f()).a(e()).b(map).a(jSONObjectG).b(((Boolean) this.a.a(ue.N7)).booleanValue()).a((Object) new JSONObject()).c(((Long) this.a.a(ue.I6)).intValue()).a(((Integer) this.a.a(sj.Y2)).intValue()).b(((Long) this.a.a(ue.H6)).intValue()).a(vi.a.a(((Integer) this.a.a(sj.g5)).intValue())).f(true).a(), this.a);
            aVar.c(ue.F6);
            aVar.b(ue.G6);
            this.a.i0().a(aVar);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Unable to fetch ad for Ad Unit ID: " + this.h, th);
            }
            a("", 0, th.getMessage());
        }
    }

    public lm(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, JSONArray jSONArray, Context context, com.applovin.impl.sdk.j jVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        super("TaskFetchMediatedAd", jVar, str);
        this.h = str;
        this.i = maxAdFormat;
        this.j = map;
        this.k = map2;
        this.l = map3;
        this.m = jSONArray;
        this.n = context;
        this.o = interfaceC0024a;
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
            super(aVar, jVar);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            lm.this.a(str, i, str2);
            this.a.D().a("fetchMediatedAd", str, i, CollectionUtils.hashMap("error_message", str2));
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            if (i != 200) {
                lm.this.a(str, i, null);
                return;
            }
            JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.m.a());
            JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.m.b());
            HashMap map = new HashMap(6);
            CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), map);
            CollectionUtils.putStringIfValid("code", String.valueOf(i), map);
            CollectionUtils.putStringIfValid("ad_unit_id", lm.this.h, map);
            CollectionUtils.putStringIfValid("ad_format", lm.this.i.getLabel(), map);
            CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.m.a()), map);
            CollectionUtils.putStringIfValid("response_size", String.valueOf(this.m.b()), map);
            this.a.D().a(ka.C, (Map) map);
            lm.this.b(jSONObject);
        }
    }

    private String f() {
        return pe.b(this.a);
    }

    private String e() {
        return pe.a(this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        try {
            e4.c(jSONObject, this.a);
            e4.b(jSONObject, this.a);
            e4.a(jSONObject, this.a);
            pe.f(jSONObject, this.a);
            pe.d(jSONObject, this.a);
            pe.e(jSONObject, this.a);
            pe.g(jSONObject, this.a);
            u0.b(this.a);
            MaxAdFormat fromString = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "ad_format", null));
            if (this.i == fromString) {
                a(jSONObject);
                return;
            }
            String label = fromString != null ? fromString.getLabel() : "UNKNOWN";
            String str = "Incorrect format (" + label + ") loaded for (" + this.i.getLabel() + ") ad. Please verify if the ad unit ID (" + this.h + ") is assigned to the correct ad format.";
            if (yp.a(this.i, fromString)) {
                com.applovin.impl.sdk.n.j(this.b, str);
                a(jSONObject);
                return;
            }
            p6.a(str, new Object[0]);
            com.applovin.impl.sdk.n.h(this.b, str);
            this.o.onAdLoadFailed(this.h, new MaxAdapterError(MaxAdapterError.INVALID_CONFIGURATION, 0, str));
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("ad_unit_id", this.h);
            CollectionUtils.putStringIfValid("name", this.i.getLabel(), mapHashMap);
            CollectionUtils.putStringIfValid("details", label, mapHashMap);
            this.a.D().a(ka.V, "incompatible_ad_format", (Map) mapHashMap);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Unable to process mediated ad response for ad unit " + this.h, th);
            }
            throw new RuntimeException("Unable to process ad: " + th);
        }
    }

    private JSONObject g() throws JSONException {
        Map mapA = this.a.x().a(null, false, true);
        mapA.putAll(this.l);
        JSONObject jSONObject = new JSONObject(mapA);
        e(jSONObject);
        h(jSONObject);
        f(jSONObject);
        c(jSONObject);
        g(jSONObject);
        d(jSONObject);
        return jSONObject;
    }

    private void a(JSONObject jSONObject) {
        yl xmVar;
        if (this.a.a(ue.A7, this.i)) {
            xmVar = new wm(this.h, this.i, this.j, jSONObject, this.n, this.a, this.o);
        } else {
            xmVar = new xm(this.h, this.i, this.j, jSONObject, this.n, this.a, this.o);
        }
        yl ylVar = xmVar;
        long j = JsonUtils.getLong(jSONObject, "process_waterfall_delay_ms", -1L);
        if (j > 0) {
            this.a.i0().a(ylVar, tm.b.MEDIATION, j, true);
        } else {
            this.a.i0().a(ylVar);
        }
    }

    private void h(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = this.m;
        if (jSONArray != null) {
            jSONObject.put("signal_data", jSONArray);
        }
    }

    private Map h() {
        HashMap map = new HashMap(2);
        map.put("AppLovin-Ad-Unit-Id", this.h);
        map.put("AppLovin-Ad-Format", this.i.getLabel());
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Attempt", this.k.get("retry_attempt"), map);
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Delay-Sec", this.k.get("retry_delay_sec"), map);
        return map;
    }

    private void c(JSONObject jSONObject) {
        JSONObject andResetCustomPostBodyData = this.a.P().getAndResetCustomPostBodyData();
        if (andResetCustomPostBodyData == null || !yp.f(com.applovin.impl.sdk.j.m())) {
            return;
        }
        JsonUtils.putAll(jSONObject, andResetCustomPostBodyData);
    }

    private void d(JSONObject jSONObject) {
        if (((Boolean) this.a.a(sj.C4)).booleanValue()) {
            xe xeVarQ = this.a.Q();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            ve veVar = ve.c;
            JsonUtils.putAll(jSONObject3, (Map<String, ?>) xeVarQ.a(veVar, we.a.AD_UNIT_ID));
            JsonUtils.putJSONObject(jSONObject2, "arpau", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            JsonUtils.putAll(jSONObject4, (Map<String, ?>) xeVarQ.a(veVar, we.a.AD_FORMAT));
            JsonUtils.putJSONObject(jSONObject2, "arpaf", jSONObject4);
            JSONObject jSONObject5 = new JSONObject();
            JsonUtils.putAll(jSONObject5, (Map<String, ?>) xeVarQ.a(ve.d, we.a.AD));
            JsonUtils.putJSONObject(jSONObject2, "ttdasipa_ms", jSONObject5);
            JsonUtils.putJSONObject(jSONObject, "mediation_stats", jSONObject2);
        }
    }

    private void f(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("disabled", new JSONArray(this.a.L().a()));
            jSONObject2.put("installed", ze.a(this.a));
            jSONObject2.put("initialized", this.a.K().b());
            jSONObject2.put("initialized_classnames", new JSONArray((Collection) this.a.K().a()));
            jSONObject2.put("loaded_classnames", new JSONArray(this.a.L().c()));
            jSONObject2.put("failed_classnames", new JSONArray(this.a.L().b()));
            jSONObject.put("adapters_info", jSONObject2);
        } catch (Exception e) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Failed to populate adapter classNames", e);
            }
            throw new RuntimeException("Failed to populate classNames: " + e);
        }
    }

    private void e(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ad_unit_id", this.h);
        jSONObject2.put("ad_format", this.i.getLabel());
        Map map = CollectionUtils.map(this.k);
        com.applovin.impl.sdk.o oVarS = this.a.S();
        CollectionUtils.putStringIfValid("previous_request_id", oVarS.b(this.h), map);
        CollectionUtils.putStringIfValid("previous_loaded_request_id", oVarS.a(this.h), map);
        com.applovin.impl.sdk.o.a aVarC = oVarS.c(this.h);
        if (aVarC != null) {
            if (Boolean.parseBoolean(this.a.f0().getExtraParameters().get("esc"))) {
                map.put("previous_winning_network", "APPLOVIN_NETWORK");
                map.put("previous_winning_network_name", "AppLovin");
            } else {
                map.put("previous_winning_network", aVarC.a());
                map.put("previous_winning_network_name", aVarC.c());
                CollectionUtils.putStringIfValid("second_previous_winning_network", aVarC.d(), map);
                CollectionUtils.putStringIfValid("second_previous_winning_network_name", aVarC.e(), map);
            }
        }
        jSONObject2.put("extra_parameters", CollectionUtils.toJson(map));
        jSONObject.put("ad_info", jSONObject2);
    }

    private void a(ca caVar) {
        ba baVar = ba.g;
        long jB = caVar.b(baVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jB > TimeUnit.MINUTES.toMillis(((Integer) this.a.a(sj.u3)).intValue())) {
            caVar.b(baVar, jCurrentTimeMillis);
            caVar.a(ba.h);
            caVar.a(ba.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i, String str2) {
        MaxErrorImpl maxErrorImpl;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Unable to fetch ad for ad unit " + this.h + ": server returned " + i);
        }
        if (i == -800) {
            this.a.C().c(ba.t);
        }
        if (i == -1009) {
            maxErrorImpl = new MaxErrorImpl(-1009, str2);
        } else if (i == -1001) {
            maxErrorImpl = new MaxErrorImpl(-1001, str2);
        } else if (StringUtils.isValidString(str2)) {
            maxErrorImpl = new MaxErrorImpl(-1000, str2);
        } else {
            maxErrorImpl = new MaxErrorImpl(-1);
        }
        HashMap map = new HashMap(5);
        CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), map);
        CollectionUtils.putStringIfValid("code", String.valueOf(i), map);
        CollectionUtils.putStringIfValid("error_message", str2, map);
        CollectionUtils.putStringIfValid("ad_unit_id", this.h, map);
        CollectionUtils.putStringIfValid("ad_format", this.i.getLabel(), map);
        this.a.D().a(ka.D, (Map) map);
        fc.a(this.o, this.h, maxErrorImpl);
    }

    private void g(JSONObject jSONObject) {
        JsonUtils.putObject(jSONObject, "sdk_extra_parameters", new JSONObject(this.a.f0().getExtraParameters()));
    }
}
