package org.json.mediationsdk;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.c5;
import org.json.environment.ContextProvider;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.j5;
import org.json.jj;
import org.json.jl;
import org.json.l9;
import org.json.md;
import org.json.mediationsdk.demandOnly.p;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.ob;
import org.json.oe;
import org.json.s4;
import org.json.u2;
import org.json.vp;
import org.json.y4;

/* JADX INFO: loaded from: classes3.dex */
public class d {
    public static final boolean A = false;
    private static d B = new d();
    public static final String c = "auctionId";
    public static final String d = "armData";
    public static final String e = "larmData";
    public static final String f = "isAdUnitCapped";
    public static final String g = "settings";
    public static final String h = "waterfall";
    public static final String i = "genericParams";
    public static final String j = "configurations";
    public static final String k = "instances";
    public static final String l = "${AUCTION_LOSS}";
    public static final String m = "${AUCTION_MBR}";
    public static final String n = "${AUCTION_PRICE}";
    public static final String o = "${DYNAMIC_DEMAND_SOURCE}";
    public static final String p = "${INSTANCE}";
    public static final String q = "${INSTANCE_TYPE}";
    public static final String r = "${PLACEMENT_NAME}";
    private static final String s = "adMarkup";
    private static final String t = "dynamicDemandSource";
    private static final String u = "params";
    public static final String v = "dlpl";
    public static final String w = "adUnit";
    public static final String x = "parallelLoad";
    public static final String y = "bidderExclusive";
    public static final String z = "showPriorityEnabled";
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final oe b = jl.P().f();

    public static class a {
        private String a;
        private List<j5> b;
        private j5 c;
        private JSONObject d;
        private JSONObject e;
        private int f;
        private String g;
        private s4 h;

        public a(String str) {
            this.a = str;
        }

        public p a(String str) {
            s4 s4Var = this.h;
            return s4Var != null ? s4Var.a(str) : new p.b();
        }

        public String a() {
            return this.a;
        }

        public JSONObject b() {
            return this.e;
        }

        public int c() {
            return this.f;
        }

        public String d() {
            return this.g;
        }

        public j5 e() {
            return this.c;
        }

        public JSONObject f() {
            return this.d;
        }

        public s4 g() {
            return this.h;
        }

        public List<j5> h() {
            return this.b;
        }
    }

    static class b implements Runnable {
        private static final int d = 15000;
        private String a;
        private String b;
        private String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.a + ";" + this.b + ";" + this.c;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.c).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setReadTimeout(d);
                httpURLConnection.setConnectTimeout(d);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                String responseMessage = httpURLConnection.getResponseMessage();
                httpURLConnection.disconnect();
                if (responseCode == 200 || responseCode == 204) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
                jSONObject.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, str);
                jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, responseCode);
                jSONObject.put("reason", responseMessage);
                vp.i().a(new ob(IronSourceConstants.TROUBLESHOOTING_FAILED_TO_SEND_AUCTION_URL, jSONObject));
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error("Send auction url failed with params - " + str + ";" + e.getMessage());
            }
        }
    }

    private enum c {
        NOT_SECURE,
        SECURE
    }

    private c a() {
        c cVar = c.SECURE;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                return cVar;
            }
        } else if (i2 >= 23) {
            if (!((ContextProvider.getInstance().getApplicationContext().getApplicationInfo().flags & 134217728) != 0)) {
                return cVar;
            }
        }
        return c.NOT_SECURE;
    }

    private String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        double d2 = Double.parseDouble(str);
        double d3 = Double.parseDouble(str2);
        return d3 == 0.0d ? "" : String.valueOf(Math.round((d2 / d3) * 1000.0d) / 1000.0d);
    }

    public static d b() {
        return B;
    }

    public a a(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString("auctionId");
        if (TextUtils.isEmpty(strOptString)) {
            throw new JSONException("Invalid auction response - auction id is missing");
        }
        a aVar = new a(strOptString);
        JSONObject jSONObjectOptJSONObject = null;
        if (jSONObject.has("settings")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("settings");
            aVar.c = new j5(jSONObject2);
            jSONObjectOptJSONObject = jSONObject2.has(d) ? jSONObject2.optJSONObject(d) : null;
            if (jSONObject2.has("genericParams")) {
                aVar.d = jSONObject2.optJSONObject("genericParams");
            }
            if (jSONObject2.has("configurations")) {
                aVar.e = jSONObject2.optJSONObject("configurations");
            }
            if (jSONObject2.has(k)) {
                aVar.h = new s4.a(jSONObject2.optJSONObject(k));
            }
        }
        aVar.b = new ArrayList();
        if (jSONObject.has(h)) {
            JSONArray jSONArray = jSONObject.getJSONArray(h);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                j5 j5Var = new j5(jSONArray.getJSONObject(i2), i2, jSONObjectOptJSONObject);
                if (!j5Var.m()) {
                    aVar.f = 1002;
                    aVar.g = "waterfall " + i2;
                    IronLog.INTERNAL.verbose("AuctionResponseItem " + i2 + " not valid - parsing error");
                    throw new JSONException("invalid response");
                }
                aVar.b.add(j5Var);
            }
        }
        return aVar;
    }

    public String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.has("adMarkup") ? jSONObject.getString("adMarkup") : str;
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("exception " + e2.getMessage());
            return str;
        }
    }

    public String a(String str, int i2, j5 j5Var, String str2, String str3, String str4) {
        String strI = j5Var.i();
        return a(str, j5Var.c(), i2, b().c(j5Var.k()), strI, b().a(strI, str2), str3, str4);
    }

    public String a(String str, String str2, int i2, String str3, String str4, String str5, String str6, String str7) {
        return str.replace(n, str4).replace(l, str6).replace(m, str5).replace(p, str2).replace(q, Integer.toString(i2)).replace(o, str3).replace(r, str7);
    }

    JSONObject a(i iVar) throws JSONException {
        boolean z2;
        boolean z3;
        ISBannerSize iSBannerSize;
        IronSource.AD_UNIT ad_unitC = iVar.c();
        boolean isEncryptedResponse = iVar.getIsEncryptedResponse();
        Map<String, Object> mapG = iVar.g();
        List<String> listK = iVar.k();
        h auctionHistory = iVar.getAuctionHistory();
        int sessionDepth = iVar.getSessionDepth();
        ISBannerSize iSBannerSize2 = iVar.getCom.ironsource.h6.u java.lang.String();
        IronSourceSegment ironSourceSegment = iVar.getCom.ironsource.y3.i java.lang.String();
        boolean testSuiteLaunched = iVar.getTestSuiteLaunched();
        boolean useTestAds = iVar.getUseTestAds();
        ArrayList<c5> arrayListJ = iVar.j();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> it = mapG.keySet().iterator();
        while (true) {
            z2 = testSuiteLaunched;
            z3 = isEncryptedResponse;
            String strA = "";
            iSBannerSize = iSBannerSize2;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            Iterator<String> it2 = it;
            JSONObject jSONObject3 = new JSONObject();
            IronSourceSegment ironSourceSegment2 = ironSourceSegment;
            jSONObject3.put(md.n0, 2);
            jSONObject3.put(md.e0, new JSONObject((Map) mapG.get(next)));
            if (auctionHistory != null) {
                strA = auctionHistory.a(next);
            }
            jSONObject3.put(md.q0, strA);
            jSONObject3.put("ts", useTestAds ? 1 : 0);
            jSONObject2.put(next, jSONObject3);
            testSuiteLaunched = z2;
            isEncryptedResponse = z3 ? 1 : 0;
            iSBannerSize2 = iSBannerSize;
            it = it2;
            ironSourceSegment = ironSourceSegment2;
        }
        IronSourceSegment ironSourceSegment3 = ironSourceSegment;
        for (String str : listK) {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(md.n0, 1);
            jSONObject4.put(md.q0, auctionHistory != null ? auctionHistory.a(str) : "");
            jSONObject2.put(str, jSONObject4);
        }
        for (c5 c5Var : arrayListJ) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(md.n0, c5Var.e() ? 2 : 1);
            Map<String, Object> mapF = c5Var.f();
            if (!mapF.isEmpty()) {
                jSONObject5.put(md.e0, new JSONObject(mapF));
            }
            jSONObject5.put(md.q0, auctionHistory != null ? auctionHistory.a(c5Var.g()) : "");
            jSONObject5.put("ts", useTestAds ? 1 : 0);
            if (!c5Var.getPlumbus().isEmpty()) {
                jSONObject5.put(v, c5Var.getPlumbus());
            }
            jSONObject2.put(c5Var.g(), jSONObject5);
        }
        jSONObject.put(md.m0, jSONObject2);
        if (iVar.getIsOneFlow()) {
            jSONObject.put(md.f1, 1);
        }
        if (iVar.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_DEMAND_ONLY java.lang.String()) {
            jSONObject.put(md.e1, 1);
        }
        JSONObject jSONObjectA = new y4(u2.a(ad_unitC)).a();
        a(jSONObjectA, false);
        jSONObjectA.put(md.o0, sessionDepth);
        jSONObjectA.put(md.p0, a().ordinal());
        if (ironSourceSegment3 != null) {
            jSONObjectA.put(md.R0, ironSourceSegment3.toJson());
        }
        jSONObject.put(md.j0, jSONObjectA);
        if (iSBannerSize != null) {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(md.g0, iSBannerSize.getDescription());
            jSONObject6.put(md.i0, iSBannerSize.getWidth());
            jSONObject6.put(md.h0, iSBannerSize.getHeight());
            jSONObject.put(md.f0, jSONObject6);
        }
        jSONObject.put(md.a0, ad_unitC.toString());
        if (iVar.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String() != null) {
            jSONObject.put("adf", iVar.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String());
        }
        if (iVar.getAdUnitId() != null) {
            jSONObject.put("mediationAdUnitId", iVar.getAdUnitId());
        }
        if (iVar.getIsMultipleAdsFlow() != null) {
            jSONObject.put(md.d0, iVar.getIsMultipleAdsFlow());
        }
        jSONObject.put(md.k0, !z3 ? 1 : 0);
        Object objRemove = jSONObjectA.remove(md.b1);
        if (objRemove != null) {
            jSONObject.put(md.b1, objRemove);
        }
        if (z2) {
            jSONObject.put(md.Z0, 1);
        }
        return jSONObject;
    }

    public void a(String str, String str2, String str3) {
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b(str, str2, str3));
    }

    public void a(JSONObject jSONObject, boolean z2) {
        if (jSONObject == null || jSONObject.length() <= 0 || TextUtils.isEmpty(jSONObject.optString(md.T0)) || !this.a.compareAndSet(false, true)) {
            return;
        }
        vp.i().a(new ob(IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED, IronSourceUtils.getMediationAdditionalData(z2, true, -1)));
    }

    public Map<String, String> b(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("params")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("params");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject2.get(next);
                    if (obj instanceof String) {
                        map.put(next, (String) obj);
                    }
                }
            }
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("exception " + e2.getMessage());
        }
        return map;
    }

    public String c(String str) {
        String string = "";
        try {
            if (TextUtils.isEmpty(str) || !jj.a(str)) {
                return "";
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("params")) {
                return "";
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("params");
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("parameters = " + jSONObject2);
            if (!jSONObject2.has("dynamicDemandSource")) {
                return "";
            }
            string = jSONObject2.getString("dynamicDemandSource");
            ironLog.verbose("demand source = " + string);
            return string;
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("exception " + e2.getMessage());
            return string;
        }
    }
}
