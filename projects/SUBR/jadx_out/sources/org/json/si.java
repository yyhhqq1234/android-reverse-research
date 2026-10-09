package org.json;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.controller.FeaturesManager;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class si implements bq, s9, r9, p9, q9, yi, ln {
    private static final String l = "IronSourceAdsPublisherAgent";
    private static si m;
    private org.json.sdk.controller.e a;
    private String b;
    private String c;
    private ma d;
    private mm e;
    private b9 g;
    private boolean f = false;
    private FeaturesManager h = FeaturesManager.getInstance();
    private ah.a i = jl.K().g();
    private m0.a j = jl.K().C();
    private m0 k = jl.P().D();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ la c;

        a(String str, String str2, la laVar) {
            this.a = str;
            this.b = str2;
            this.c = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            si.this.a.a(this.a, this.b, this.c, (s9) si.this);
        }
    }

    class b implements Runnable {
        final /* synthetic */ JSONObject a;

        b(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            si.this.a.a(this.a, (s9) si.this);
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ la c;

        c(String str, String str2, la laVar) {
            this.a = str;
            this.b = str2;
            this.c = laVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            si.this.a.a(this.a, this.b, this.c, (r9) si.this);
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;

        d(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            si.this.a.a(this.a, si.this);
        }
    }

    class e implements Runnable {
        final /* synthetic */ JSONObject a;

        e(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            si.this.a.a(this.a, (r9) si.this);
        }
    }

    class f implements Runnable {
        final /* synthetic */ oi a;
        final /* synthetic */ Map b;

        f(oi oiVar, Map map) {
            this.a = oiVar;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            dg.e eVar = this.a.i() ? dg.e.Banner : dg.e.Interstitial;
            la laVarA = si.this.d.a(eVar, this.a);
            fg fgVar = new fg();
            fgVar.a(rb.x, Boolean.valueOf(this.a.j())).a(rb.G, Boolean.valueOf(this.a.m())).a(rb.v, this.a.g()).a(rb.w, zi.a(this.a)).a(rb.I, Long.valueOf(j0.a.b(this.a.e())));
            kg.a(zp.h, fgVar.a());
            if (eVar == dg.e.Banner) {
                si.this.a.a(si.this.b, si.this.c, laVarA, (q9) si.this);
                si.this.a.a(laVarA, this.b, (q9) si.this);
            } else {
                si.this.a.a(si.this.b, si.this.c, laVarA, (r9) si.this);
                si.this.a.b(laVarA, this.b, si.this);
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ la a;
        final /* synthetic */ Map b;

        g(la laVar, Map map) {
            this.a = laVar;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            si.this.a.a(this.a, this.b, (r9) si.this);
        }
    }

    class h implements Runnable {
        final /* synthetic */ oi a;

        h(oi oiVar) {
            this.a = oiVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            dg.e eVar = this.a.i() ? dg.e.Banner : dg.e.Interstitial;
            la laVarA = si.this.d.a(eVar, this.a);
            fg fgVar = new fg();
            fgVar.a(rb.x, Boolean.valueOf(this.a.j())).a(rb.v, this.a.g()).a(rb.w, zi.a(this.a)).a("isMultipleAdObjects", Boolean.valueOf(this.a.l()));
            kg.a(zp.m, fgVar.a());
            if (eVar == dg.e.Banner) {
                si.this.a.a(laVarA);
            } else {
                laVarA.a(false);
                si.this.a.b(laVarA);
            }
        }
    }

    private si(Context context, int i) {
        b(context);
    }

    si(String str, String str2, Context context) {
        this.b = str;
        this.c = str2;
        b(context);
    }

    private gn a(la laVar) {
        if (laVar == null) {
            return null;
        }
        return (gn) laVar.i();
    }

    public static synchronized si a(Context context) throws Exception {
        return a(context, 0);
    }

    public static synchronized si a(Context context, int i) throws Exception {
        Logger.i(l, "getInstance()");
        if (m == null) {
            m = new si(context, i);
        }
        return m;
    }

    public static yi a(Context context, String str, String str2) {
        return a(str, str2, context);
    }

    public static synchronized yi a(String str, String str2, Context context) {
        if (m == null) {
            kg.a(zp.a);
            m = new si(str, str2, context);
        }
        return m;
    }

    private Map<String, String> a(Map<String, String> map) {
        map.put("adm", SDKUtils.decodeString(map.get("adm")));
        return map;
    }

    private in b(la laVar) {
        if (laVar == null) {
            return null;
        }
        return (in) laVar.i();
    }

    private void b(Context context) {
        try {
            JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
            fj.a(context);
            IronSourceStorageUtils.initializeCacheDirectory(context, new ls(SDKUtils.getNetworkConfiguration().optJSONObject(y8.a.j)));
            fj.e().d(SDKUtils.getSDKVersion());
            this.d = new ma();
            b9 b9Var = new b9();
            this.g = b9Var;
            if (context instanceof Activity) {
                b9Var.a((Activity) context);
            }
            int debugMode = this.h.getDebugMode();
            this.e = new mm();
            this.a = new org.json.sdk.controller.e(context, this.g, this.d, Cif.a, debugMode, this.h.getDataManagerConfig(), this.b, this.c, this.e);
            Logger.enableLogging(debugMode);
            Logger.i(l, "C'tor");
            a(context, networkConfiguration);
            this.e.d();
            this.e.e();
            this.e.a(context);
            this.e.b();
            this.e.a();
            this.e.b(context);
            this.e.c();
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    private void b(oi oiVar, Map<String, String> map) {
        Logger.d(l, "loadOnNewInstance " + oiVar.e());
        this.a.a(new f(oiVar, map));
    }

    private nn c(la laVar) {
        if (laVar == null) {
            return null;
        }
        return (nn) laVar.i();
    }

    private void c(oi oiVar, Map<String, String> map) {
        try {
            map = a(map);
        } catch (Exception e2) {
            l9.d().a(e2);
            fg fgVarA = new fg().a(rb.A, e2.getMessage()).a(rb.x, Boolean.valueOf(oiVar.j())).a(rb.G, Boolean.valueOf(oiVar.m())).a(rb.v, oiVar.g()).a(rb.w, zi.a(oiVar)).a(rb.I, Long.valueOf(j0.a.b(oiVar.e())));
            j0.a.a(oiVar.e());
            kg.a(zp.k, fgVarA.a());
            IronLog.INTERNAL.error(e2.toString());
            Logger.d(l, "loadInAppBiddingAd failed decoding  ADM " + e2.getMessage());
        }
        b(oiVar, map);
    }

    private la d(dg.e eVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.d.a(eVar, str);
    }

    @Override // org.json.yi
    public org.json.sdk.controller.e a() {
        return this.a;
    }

    @Override // org.json.bq, org.json.yi
    public void a(Activity activity) {
        try {
            Logger.i(l, "release()");
            pa.g();
            this.g.b();
            this.a.a((Context) activity);
            this.a.destroy();
            this.a = null;
        } catch (Exception e2) {
            l9.d().a(e2);
        }
        m = null;
    }

    @Override // org.json.aj
    public void a(Activity activity, oi oiVar, Map<String, String> map) {
        this.g.a(activity);
        Logger.i(l, "showAd " + oiVar.e());
        la laVarA = this.d.a(dg.e.Interstitial, oiVar.e());
        if (laVarA == null) {
            return;
        }
        this.a.a(new g(laVarA, map));
    }

    public void a(Context context, JSONObject jSONObject) {
        boolean zOptBoolean = jSONObject.optBoolean(y8.a.f, false);
        this.f = zOptBoolean;
        if (zOptBoolean) {
            try {
                ((Application) context).registerActivityLifecycleCallbacks(new i(this));
            } catch (Throwable th) {
                l9.d().a(th);
                fg fgVar = new fg();
                fgVar.a(rb.y, th.getMessage());
                kg.a(zp.u, fgVar.a());
            }
        }
    }

    @Override // org.json.p9
    public void a(dg.e eVar, String str) {
        in inVarB;
        la laVarD = d(eVar, str);
        if (laVarD != null) {
            if (eVar == dg.e.RewardedVideo) {
                nn nnVarC = c(laVarD);
                if (nnVarC != null) {
                    nnVarC.c();
                    return;
                }
                return;
            }
            if (eVar != dg.e.Interstitial || (inVarB = b(laVarD)) == null) {
                return;
            }
            inVarB.onInterstitialClose();
        }
    }

    @Override // org.json.p9
    public void a(dg.e eVar, String str, w2 w2Var) {
        gn gnVarA;
        la laVarD = d(eVar, str);
        if (laVarD != null) {
            laVarD.b(2);
            if (eVar == dg.e.RewardedVideo) {
                nn nnVarC = c(laVarD);
                if (nnVarC != null) {
                    nnVarC.a(w2Var);
                    return;
                }
                return;
            }
            if (eVar == dg.e.Interstitial) {
                in inVarB = b(laVarD);
                if (inVarB != null) {
                    inVarB.onInterstitialInitSuccess();
                    return;
                }
                return;
            }
            if (eVar != dg.e.Banner || (gnVarA = a(laVarD)) == null) {
                return;
            }
            gnVarA.onBannerInitSuccess();
        }
    }

    @Override // org.json.p9
    public void a(dg.e eVar, String str, String str2) {
        gn gnVarA;
        la laVarD = d(eVar, str);
        fg fgVarA = new fg().a(rb.v, str).a(rb.w, eVar).a(rb.A, str2);
        if (laVarD != null) {
            j0 j0Var = j0.a;
            fgVarA.a(rb.I, Long.valueOf(j0Var.b(laVarD.h())));
            fgVarA.a(rb.x, Boolean.valueOf(lg.a(laVarD)));
            j0Var.a(laVarD.h());
            laVarD.b(3);
            if (eVar == dg.e.RewardedVideo) {
                nn nnVarC = c(laVarD);
                if (nnVarC != null) {
                    nnVarC.b(str2);
                }
            } else if (eVar == dg.e.Interstitial) {
                in inVarB = b(laVarD);
                if (inVarB != null) {
                    inVarB.onInterstitialInitFailed(str2);
                }
            } else if (eVar == dg.e.Banner && (gnVarA = a(laVarD)) != null) {
                gnVarA.onBannerLoadFail(str2);
            }
        }
        kg.a(zp.i, fgVarA.a());
    }

    @Override // org.json.p9
    public void a(dg.e eVar, String str, String str2, JSONObject jSONObject) {
        gn gnVarA;
        la laVarD = d(eVar, str);
        if (laVarD == null || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            Logger.i(l, "Received Event Notification: " + str2 + " for demand source: " + laVarD.f());
            if (eVar == dg.e.Interstitial) {
                in inVarB = b(laVarD);
                if (inVarB != null) {
                    jSONObject.put("demandSourceName", str);
                    inVarB.onInterstitialEventNotificationReceived(str2, jSONObject);
                }
            } else if (eVar == dg.e.RewardedVideo) {
                nn nnVarC = c(laVarD);
                if (nnVarC != null) {
                    jSONObject.put("demandSourceName", str);
                    nnVarC.a(str2, jSONObject);
                }
            } else if (eVar == dg.e.Banner && (gnVarA = a(laVarD)) != null) {
                jSONObject.put("demandSourceName", str);
                if (str2.equalsIgnoreCase("impressions")) {
                    gnVarA.onBannerShowSuccess();
                }
            }
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    @Override // org.json.aj
    public void a(oi oiVar, Map<String, String> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        map.put(y8.h.y0, String.valueOf(jCurrentTimeMillis));
        j0.a.a(oiVar.e(), jCurrentTimeMillis);
        fg fgVar = new fg();
        fgVar.a(rb.x, Boolean.valueOf(oiVar.j())).a(rb.G, Boolean.valueOf(oiVar.m())).a(rb.v, oiVar.g()).a(rb.w, zi.a(oiVar)).a(rb.I, Long.valueOf(jCurrentTimeMillis));
        kg.a(zp.f, fgVar.a());
        Logger.d(l, "loadAd " + oiVar.e());
        l0 l0Var = new l0(oiVar);
        this.j.a(l0Var);
        this.j.a(new JSONObject(map), k1.LOAD_REQUEST, l0Var.c());
        if (c(oiVar)) {
            this.i.a(new sr(l0Var));
        }
        if (oiVar.k()) {
            c(oiVar, map);
        } else {
            b(oiVar, map);
        }
    }

    @Override // org.json.s9
    public void a(String str, int i) {
        nn nnVarC;
        la laVarD = d(dg.e.RewardedVideo, str);
        if (laVarD == null || (nnVarC = c(laVarD)) == null) {
            return;
        }
        nnVarC.a(i);
    }

    @Override // org.json.q9
    public void a(String str, wf wfVar) {
        gn gnVarA;
        la laVarD = d(dg.e.Banner, str);
        if (laVarD == null || (gnVarA = a(laVarD)) == null) {
            return;
        }
        gnVarA.onBannerLoadSuccess(laVarD.c(), wfVar);
    }

    @Override // org.json.q9
    public void a(String str, String str2) {
        gn gnVarA;
        la laVarD = d(dg.e.Banner, str);
        if (laVarD == null || (gnVarA = a(laVarD)) == null) {
            return;
        }
        gnVarA.onBannerLoadFail(str2);
    }

    @Override // org.json.bq
    public void a(String str, String str2, int i) {
        dg.e productType;
        la laVarA;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (productType = SDKUtils.getProductType(str)) == null || (laVarA = this.d.a(productType, str2)) == null) {
            return;
        }
        laVarA.c(i);
    }

    @Override // org.json.bq
    public void a(String str, String str2, String str3, Map<String, String> map, in inVar) {
        this.b = str;
        this.c = str2;
        this.a.a(new c(str, str2, this.d.a(dg.e.Interstitial, str3, map, inVar)));
    }

    @Override // org.json.bq
    public void a(String str, String str2, String str3, Map<String, String> map, nn nnVar) {
        this.b = str;
        this.c = str2;
        this.a.a(new a(str, str2, this.d.a(dg.e.RewardedVideo, str3, map, nnVar)));
    }

    @Override // org.json.r9
    public void a(String str, JSONObject jSONObject) {
        dg.e eVar = dg.e.Interstitial;
        la laVarD = d(eVar, str);
        fg fgVarA = new fg().a(rb.v, str);
        if (laVarD != null) {
            oi oiVarC = laVarD.c();
            this.j.a(jSONObject, k1.LOAD_SUCCESS, oiVarC.e());
            if (c(oiVarC)) {
                this.i.a(new tr(this.k.a(oiVarC.e())));
            }
            fg fgVarA2 = fgVarA.a(rb.w, lg.a(laVarD, eVar)).a(rb.x, Boolean.valueOf(lg.a(laVarD)));
            j0 j0Var = j0.a;
            fgVarA2.a(rb.I, Long.valueOf(j0Var.b(laVarD.h())));
            j0Var.a(laVarD.h());
            in inVarB = b(laVarD);
            if (inVarB != null) {
                inVarB.onInterstitialLoadSuccess(laVarD.c());
            }
        }
        kg.a(zp.l, fgVarA.a());
    }

    @Override // org.json.bq
    public void a(JSONObject jSONObject) {
        this.a.a(new b(jSONObject));
    }

    @Override // org.json.aj
    public boolean a(oi oiVar) {
        Logger.d(l, "isAdAvailable " + oiVar.e());
        la laVarA = this.d.a(dg.e.Interstitial, oiVar.e());
        if (laVarA == null) {
            return false;
        }
        return laVarA.d();
    }

    @Override // org.json.bq
    public boolean a(String str) {
        return this.a.a(str);
    }

    @Override // org.json.ln
    public void b(Activity activity) {
        try {
            this.a.d();
            this.a.a((Context) activity);
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    @Override // org.json.aj
    public void b(Activity activity, oi oiVar, Map<String, String> map) {
        this.g.a(activity);
        a(oiVar, map);
    }

    @Override // org.json.p9
    public void b(dg.e eVar, String str) {
        nn nnVarC;
        la laVarD = d(eVar, str);
        if (laVarD != null) {
            if (eVar == dg.e.Interstitial) {
                in inVarB = b(laVarD);
                if (inVarB != null) {
                    inVarB.onInterstitialOpen();
                    return;
                }
                return;
            }
            if (eVar != dg.e.RewardedVideo || (nnVarC = c(laVarD)) == null) {
                return;
            }
            nnVarC.a();
        }
    }

    @Override // org.json.aj
    public void b(oi oiVar) {
        Logger.d(l, "destroyInstance " + oiVar.e());
        if (c(oiVar)) {
            this.j.a(k1.DESTROYED, oiVar.e());
            this.i.a(new rr(this.k.a(oiVar.e())));
        }
        this.a.a(new h(oiVar));
    }

    @Override // org.json.r9
    public void b(String str) {
        la laVarD = d(dg.e.Interstitial, str);
        if (laVarD != null) {
            oi oiVarC = laVarD.c();
            this.j.a(k1.SHOW_SUCCESS, oiVarC.e());
            if (c(oiVarC)) {
                this.i.a(new vr(this.k.a(oiVarC.e())));
            }
            in inVarB = b(laVarD);
            if (inVarB != null) {
                inVarB.onInterstitialShowSuccess();
            }
        }
    }

    @Override // org.json.r9
    public void b(String str, String str2) {
        la laVarD = d(dg.e.Interstitial, str);
        if (laVarD != null) {
            oi oiVarC = laVarD.c();
            this.j.a(k1.SHOW_FAIL, oiVarC.e());
            if (c(oiVarC)) {
                this.i.a(new ur(this.k.a(oiVarC.e())));
            }
            in inVarB = b(laVarD);
            if (inVarB != null) {
                inVarB.onInterstitialShowFailed(str2);
            }
        }
    }

    @Override // org.json.bq
    public void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("demandSourceName");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        this.a.a(new d(strOptString));
    }

    @Override // org.json.ln
    public void c(Activity activity) {
        this.g.a(activity);
        this.a.f();
        this.a.b(activity);
    }

    @Override // org.json.p9
    public void c(dg.e eVar, String str) {
        gn gnVarA;
        la laVarD = d(eVar, str);
        if (laVarD != null) {
            if (eVar == dg.e.RewardedVideo) {
                nn nnVarC = c(laVarD);
                if (nnVarC != null) {
                    nnVarC.d();
                    return;
                }
                return;
            }
            if (eVar == dg.e.Interstitial) {
                in inVarB = b(laVarD);
                if (inVarB != null) {
                    inVarB.onInterstitialClick();
                    return;
                }
                return;
            }
            if (eVar != dg.e.Banner || (gnVarA = a(laVarD)) == null) {
                return;
            }
            gnVarA.onBannerClick();
        }
    }

    @Override // org.json.s9
    public void c(String str) {
        nn nnVarC;
        la laVarD = d(dg.e.RewardedVideo, str);
        if (laVarD == null || (nnVarC = c(laVarD)) == null) {
            return;
        }
        nnVarC.b();
    }

    @Override // org.json.r9
    public void c(String str, String str2) {
        dg.e eVar = dg.e.Interstitial;
        la laVarD = d(eVar, str);
        fg fgVar = new fg();
        fgVar.a(rb.A, str2).a(rb.v, str);
        if (laVarD != null) {
            fg fgVarA = fgVar.a(rb.w, lg.a(laVarD, eVar)).a(rb.y, laVarD.e() == 2 ? rb.E : rb.F).a(rb.x, Boolean.valueOf(lg.a(laVarD)));
            j0 j0Var = j0.a;
            fgVarA.a(rb.I, Long.valueOf(j0Var.b(laVarD.h())));
            j0Var.a(laVarD.h());
            in inVarB = b(laVarD);
            if (inVarB != null) {
                inVarB.onInterstitialLoadFailed(str2);
            }
        }
        kg.a(zp.g, fgVar.a());
    }

    @Override // org.json.bq
    public void c(JSONObject jSONObject) {
        this.a.a(new e(jSONObject));
    }

    public boolean c(oi oiVar) {
        return oiVar.l() && !oiVar.i() && a(oiVar);
    }

    @Override // org.json.s9
    public void d(String str, String str2) {
        nn nnVarC;
        la laVarD = d(dg.e.RewardedVideo, str);
        if (laVarD == null || (nnVarC = c(laVarD)) == null) {
            return;
        }
        nnVarC.a(str2);
    }

    @Override // org.json.r9
    public void onInterstitialAdRewarded(String str, int i) {
        la laVarD = d(dg.e.Interstitial, str);
        in inVarB = b(laVarD);
        if (laVarD == null || inVarB == null) {
            return;
        }
        inVarB.onInterstitialAdRewarded(str, i);
    }

    @Override // org.json.bq, org.json.yi
    public void onPause(Activity activity) {
        if (this.f) {
            return;
        }
        b(activity);
    }

    @Override // org.json.bq, org.json.yi
    public void onResume(Activity activity) {
        if (this.f) {
            return;
        }
        c(activity);
    }
}
