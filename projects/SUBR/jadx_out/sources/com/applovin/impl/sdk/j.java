package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.impl.ag;
import com.applovin.impl.ba;
import com.applovin.impl.c5;
import com.applovin.impl.ca;
import com.applovin.impl.cd;
import com.applovin.impl.d4;
import com.applovin.impl.e4;
import com.applovin.impl.fc;
import com.applovin.impl.h4;
import com.applovin.impl.hr;
import com.applovin.impl.jm;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.la;
import com.applovin.impl.mediation.MaxSegmentCollectionImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.ob;
import com.applovin.impl.oe;
import com.applovin.impl.oj;
import com.applovin.impl.pe;
import com.applovin.impl.pg;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.qn;
import com.applovin.impl.qr;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.sm;
import com.applovin.impl.te;
import com.applovin.impl.tj;
import com.applovin.impl.tm;
import com.applovin.impl.u0;
import com.applovin.impl.ue;
import com.applovin.impl.uj;
import com.applovin.impl.v;
import com.applovin.impl.vj;
import com.applovin.impl.wh;
import com.applovin.impl.wn;
import com.applovin.impl.wp;
import com.applovin.impl.x4;
import com.applovin.impl.xe;
import com.applovin.impl.ye;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.ze;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxSegmentCollection;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public static j u0;
    protected static Context v0;
    private static final boolean x0;
    private static volatile com.applovin.impl.q y0;
    private String a;
    private WeakReference b;
    private List c0;
    private long d;
    private AppLovinSdkSettings f;
    private MaxSegmentCollection g;
    private boolean g0;
    private String h;
    private String l0;
    private volatile AppLovinSdk m;
    private AppLovinSdkInitializationConfiguration m0;
    private AppLovinSdk.SdkInitializationListener p0;
    private AppLovinSdk.SdkInitializationListener q0;
    private static final Object z0 = new Object();
    private static final long w0 = System.currentTimeMillis();
    private final AtomicBoolean e = new AtomicBoolean();
    private final AtomicReference i = new AtomicReference();
    private final AtomicReference j = new AtomicReference();
    private final AtomicReference k = new AtomicReference();
    private final AtomicReference l = new AtomicReference();
    private final n n = new n(this);
    private final la o = new la(this);
    private final AtomicReference p = new AtomicReference();
    private final AtomicReference q = new AtomicReference();
    private final AtomicReference r = new AtomicReference();
    private final AtomicReference s = new AtomicReference();
    private final AtomicReference t = new AtomicReference();
    private final AtomicReference u = new AtomicReference();
    private final AtomicReference v = new AtomicReference();
    private final AtomicReference w = new AtomicReference();
    private final AtomicReference x = new AtomicReference();
    private final AtomicReference y = new AtomicReference();
    private final AtomicReference z = new AtomicReference();
    private final AtomicReference A = new AtomicReference();
    private final AtomicReference B = new AtomicReference();
    private final AtomicReference C = new AtomicReference();
    private final AtomicReference D = new AtomicReference();
    private final AtomicReference E = new AtomicReference();
    private final AtomicReference F = new AtomicReference();
    private final AtomicReference G = new AtomicReference();
    private final AtomicReference H = new AtomicReference();
    private final AtomicReference I = new AtomicReference();
    private final AtomicReference J = new AtomicReference();
    private final AtomicReference K = new AtomicReference();
    private final AtomicReference L = new AtomicReference();
    private final AtomicReference M = new AtomicReference();
    private final AtomicReference N = new AtomicReference();
    private final AtomicReference O = new AtomicReference();
    private final AtomicReference P = new AtomicReference();
    private final AtomicReference Q = new AtomicReference();
    private final AtomicReference R = new AtomicReference();
    private final AtomicReference S = new AtomicReference();
    private final AtomicReference T = new AtomicReference();
    private final AtomicReference U = new AtomicReference();
    private final AtomicReference V = new AtomicReference();
    private final AtomicReference W = new AtomicReference();
    private final AtomicReference X = new AtomicReference();
    private final AtomicReference Y = new AtomicReference();
    private final AtomicReference Z = new AtomicReference();
    private final AtomicReference a0 = new AtomicReference();
    private final AtomicReference b0 = new AtomicReference();
    private final Object d0 = new Object();
    private final AtomicBoolean e0 = new AtomicBoolean(true);
    private final AtomicBoolean f0 = new AtomicBoolean();
    private boolean h0 = false;
    private boolean i0 = false;
    private boolean j0 = false;
    private int k0 = 0;
    private final Object n0 = new Object();
    private AppLovinSdkConfiguration o0 = new SdkConfigurationImpl(null, this);
    private final AtomicBoolean r0 = new AtomicBoolean(false);
    private final yl s0 = new jn(this, true, "scheduleAdLoadIntegrationError", new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda10
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.C0();
        }
    });
    private final yl t0 = new jn(this, true, "sdkInit", new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda11
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.D0();
        }
    });
    private final long c = System.currentTimeMillis();

    class a implements jm.b {
        a() {
        }

        @Override // com.applovin.impl.jm.b
        public void a(JSONObject jSONObject) {
            boolean z = jSONObject != null && jSONObject.length() > 0;
            j.this.c(jSONObject);
            u0.b(j.this);
            e4.a(jSONObject, z, j.this);
            j.this.M().a(JsonUtils.getBoolean(jSONObject, "smd", Boolean.FALSE).booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
            j.this.D().a();
            j jVar = j.this;
            jVar.c0 = jVar.a(jSONObject);
            if (z) {
                List<String> listExplode = CollectionUtils.explode(JsonUtils.getString(jSONObject, "eaaui", ""));
                j jVar2 = j.this;
                jVar2.o0 = new SdkConfigurationImpl(listExplode, jVar2);
            }
            j.this.k0().a(jSONObject);
            j.this.b(jSONObject);
            fc.b(((Boolean) j.this.a(sj.c6)).booleanValue());
            fc.a(((Boolean) j.this.a(sj.d6)).booleanValue());
            j.this.K0();
            if (!((Boolean) j.this.a(sj.f3)).booleanValue() || z || !e4.a(j.m())) {
                j.this.J0();
                return;
            }
            j.this.I();
            if (n.a()) {
                j.this.I().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
            }
            j.this.P0();
        }
    }

    class c implements jm.b {
        c() {
        }

        @Override // com.applovin.impl.jm.b
        public void a(JSONObject jSONObject) {
            if (jSONObject != null && jSONObject.length() > 0) {
                j.this.c(jSONObject);
            }
            j.this.e.set(false);
            j.this.J0();
        }
    }

    static {
        try {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    yp.c();
                }
            });
            x0 = true;
        } catch (Throwable unused) {
            x0 = false;
        }
    }

    public j(Context context) {
        this.g0 = false;
        this.f = new AppLovinSdkSettings(context);
        this.g0 = true;
        if (!w0()) {
            throw new RuntimeException("As of version 12.0.0, the AppLovin MAX SDK requires Java 8. For more information visit our docs: https://developers.applovin.com/en/android/overview/integration");
        }
        v0 = context.getApplicationContext();
        if (context instanceof Activity) {
            this.b = new WeakReference((Activity) context);
        }
        if (u0 == null) {
            u0 = this;
        } else {
            n.h("AppLovinSdk", "Multiple SDK instances detected");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0() {
        if (i0().d()) {
            return;
        }
        I();
        if (n.a()) {
            I().a("AppLovinSdk", "Timing out adapters init...");
        }
        i0().e();
        H0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0() {
        tm tmVarI0 = i0();
        int i = this.k0 + 1;
        this.k0 = i;
        tmVarI0.a((yl) new jm(i, this, new c()), tm.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0() {
        if (y0()) {
            ob.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0() {
        synchronized (this.d0) {
            boolean zA = e4.a(m());
            if (!y0()) {
                I();
                if (n.a()) {
                    I().a("AppLovinSdk", "non-MAX mediation detected, mediation provider is: " + N());
                }
            }
            if (!((Boolean) a(sj.g3)).booleanValue() || zA) {
                O0();
            }
            if (((Boolean) a(sj.f3)).booleanValue() && !zA) {
                I();
                if (n.a()) {
                    I().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
                }
                P0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0() {
        if (u0()) {
            return;
        }
        this.s0.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0() {
        if (u0()) {
            return;
        }
        this.r0.set(true);
        this.t0.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G0() {
        c(uj.I);
    }

    private q I0() {
        if (!wh.f(v0)) {
            return null;
        }
        try {
            return new q(this);
        } catch (Throwable th) {
            n.b("AppLovinSdk", "Failed to initialize Privacy Sandbox Service", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J0() {
        Long l = (Long) a(sj.o3);
        if (l.longValue() >= 0 && this.e.compareAndSet(false, true)) {
            hr.a(l.longValue(), false, this, new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.B0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        if (!y0()) {
            e("Initializing SDK in non-MAX environment...");
            return;
        }
        if (!this.f0.compareAndSet(false, true)) {
            e("Consent flow is already shown. Initializing SDK in MAX environment...");
        } else {
            if (!u().j()) {
                e("Consent flow is not enabled. Initializing SDK in MAX environment...");
                return;
            }
            u().a();
            u().b(m0(), new b());
        }
    }

    private void M0() {
        Context context = v0;
        n nVarI = I();
        vj vjVarH0 = h0();
        h4 h4VarU = u();
        a(context);
        e0();
        i();
        n();
        U();
        K().a(MaxAdapter.InitializationStatus.INITIALIZING);
        NativeCrashReporter.a(this);
        String str = this.a;
        if (str == null || str.length() != 86) {
            n.h("AppLovinSdk", "Please double-check that you entered your SDK key correctly (" + this.a + ") : " + Log.getStackTraceString(new Throwable("")));
        }
        if ("HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1".equalsIgnoreCase(this.a)) {
            n.h("AppLovinSdk", "Cross Promo SDK has been deprecated and is no longer supported");
            if (yp.c(this)) {
                throw new RuntimeException("Cross Promo SDK has been deprecated and is no longer supported");
            }
            return;
        }
        if (f0().getExtraParameters().containsKey("terms_flow_settings")) {
            String str2 = "Terms flow has been removed. Please migrate to our Terms and Privacy Policy flow. For more information visit our docs: " + u().b();
            if (yp.c(this)) {
                throw new IllegalStateException(str2);
            }
            n.h("AppLovinSdk", str2);
        }
        if (yp.i()) {
            n.h("AppLovinSdk", "Failed to find class for name: com.applovin.sdk.AppLovinSdk. Please ensure proguard rules have not been omitted from the build.");
        }
        if (!yp.b(this)) {
            n.h("AppLovinSdk", "Detected non-Android core JSON library. Please double-check that none of your third party libraries include custom implementation of org.json.JSONObject.");
        }
        if (yp.k(context)) {
            this.f.setVerboseLogging(true);
        }
        g0().a(sj.l, Boolean.valueOf(this.f.isVerboseLoggingEnabled()));
        if (yp.c(this)) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayA = ze.a(this);
            for (int i = 0; i < jSONArrayA.length(); i++) {
                JSONObject jSONObject = JsonUtils.getJSONObject(jSONArrayA, i, (JSONObject) null);
                if (!JsonUtils.getBoolean(jSONObject, "is_supported", Boolean.TRUE).booleanValue()) {
                    arrayList.add(JsonUtils.getString(jSONObject, "name", "unknown"));
                }
            }
            if (!arrayList.isEmpty()) {
                throw new IllegalArgumentException("Please update to the latest adapter versions. Incompatible adapter(s) found: " + arrayList);
            }
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        uj ujVar = uj.c;
        if (TextUtils.isEmpty((String) vjVarH0.a(ujVar, (Object) null, defaultSharedPreferences))) {
            this.i0 = true;
            vjVarH0.b(ujVar, Boolean.toString(true), defaultSharedPreferences);
        } else {
            vjVarH0.b(ujVar, Boolean.toString(false), defaultSharedPreferences);
        }
        uj ujVar2 = uj.d;
        if (((Boolean) vjVarH0.a(ujVar2, Boolean.FALSE)).booleanValue()) {
            if (n.a()) {
                nVarI.a("AppLovinSdk", "Initializing SDK for non-maiden launch");
            }
            this.j0 = true;
        } else {
            if (n.a()) {
                nVarI.a("AppLovinSdk", "Initializing SDK for maiden launch");
            }
            vjVarH0.b(ujVar2, Boolean.TRUE);
            vjVarH0.b(uj.o, Boolean.valueOf(h4VarU.j()));
        }
        uj ujVar3 = uj.e;
        String str3 = (String) vjVarH0.a(ujVar3, null);
        if (StringUtils.isValidString(str3)) {
            if (AppLovinSdk.VERSION_CODE > yp.f(str3)) {
                vjVarH0.b(ujVar3, AppLovinSdk.VERSION);
            }
        } else {
            vjVarH0.b(ujVar3, AppLovinSdk.VERSION);
        }
        D().a(ka.e, (Object) null, (Map) null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        M0();
        if (this.f.isExceptionHandlerEnabled() && ((Boolean) a(sj.u)).booleanValue()) {
            AppLovinExceptionHandler.shared().addSdk(this);
            AppLovinExceptionHandler.shared().enable();
        }
        int i = StringUtils.parseInt(this.f.getExtraParameters().get("initialization_delay_ms"), ((Integer) a(sj.j4)).intValue());
        tm tmVarI0 = i0();
        jn jnVar = new jn(this, true, "scheduleAdLoadIntegrationErrorAuto", new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.E0();
            }
        });
        tm.b bVar = tm.b.CORE;
        long j = i;
        tmVarI0.a(jnVar, bVar, j);
        i0().a(new jn(this, true, "scheduleSdkInit", new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.F0();
            }
        }), bVar, j);
    }

    private Map O() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) a(sj.k4)));
        } catch (JSONException unused) {
            return Collections.emptyMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        ag agVarU = U();
        agVarU.a(new d(agVarU));
    }

    public static long l() {
        return w0;
    }

    public static Context m() {
        return v0;
    }

    public static boolean w0() {
        return x0;
    }

    public l A() {
        Object lVar = this.A.get();
        if (lVar == null) {
            synchronized (this.A) {
                lVar = this.A.get();
                if (lVar == null) {
                    lVar = new l(this);
                    this.A.set(lVar);
                }
            }
        }
        if (lVar == this.A) {
            lVar = null;
        }
        return (l) lVar;
    }

    public m B() {
        Object mVar = this.C.get();
        if (mVar == null) {
            synchronized (this.C) {
                mVar = this.C.get();
                if (mVar == null) {
                    mVar = new m(this);
                    this.C.set(mVar);
                }
            }
        }
        if (mVar == this.C) {
            mVar = null;
        }
        return (m) mVar;
    }

    public Activity F() {
        WeakReference weakReference = this.b;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public AppLovinSdkInitializationConfiguration G() {
        return this.m0;
    }

    public long H() {
        return this.c;
    }

    public void H0() {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener;
        if (u().i() || (sdkInitializationListener = this.p0) == null) {
            return;
        }
        if (s0()) {
            this.p0 = null;
            this.q0 = null;
            K().a(MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS);
        } else {
            if (this.q0 == sdkInitializationListener) {
                return;
            }
            K().a(MaxAdapter.InitializationStatus.INITIALIZED_FAILURE);
            if (((Boolean) a(sj.r)).booleanValue()) {
                this.p0 = null;
            } else {
                this.q0 = sdkInitializationListener;
            }
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.d(sdkInitializationListener);
            }
        }, Math.max(0L, ((Long) a(sj.s)).longValue()));
    }

    public n I() {
        return this.n;
    }

    public com.applovin.impl.mediation.d J() {
        Object dVar = this.a0.get();
        if (dVar == null) {
            synchronized (this.a0) {
                dVar = this.a0.get();
                if (dVar == null) {
                    dVar = new com.applovin.impl.mediation.d(this);
                    this.a0.set(dVar);
                }
            }
        }
        if (dVar == this.a0) {
            dVar = null;
        }
        return (com.applovin.impl.mediation.d) dVar;
    }

    public com.applovin.impl.mediation.e K() {
        Object eVar = this.U.get();
        if (eVar == null) {
            synchronized (this.U) {
                eVar = this.U.get();
                if (eVar == null) {
                    eVar = new com.applovin.impl.mediation.e(this);
                    this.U.set(eVar);
                }
            }
        }
        if (eVar == this.U) {
            eVar = null;
        }
        return (com.applovin.impl.mediation.e) eVar;
    }

    public com.applovin.impl.mediation.f L() {
        Object fVar = this.T.get();
        if (fVar == null) {
            synchronized (this.T) {
                fVar = this.T.get();
                if (fVar == null) {
                    fVar = new com.applovin.impl.mediation.f(this);
                    this.T.set(fVar);
                }
            }
        }
        if (fVar == this.T) {
            fVar = null;
        }
        return (com.applovin.impl.mediation.f) fVar;
    }

    public void L0() {
        q().a();
    }

    public String N() {
        String str = (String) a(uj.I);
        return StringUtils.isValidString(str) ? str : this.h;
    }

    public void O0() {
        synchronized (this.d0) {
            this.g0 = true;
            i0().f();
            d();
        }
    }

    public MediationServiceImpl P() {
        Object mediationServiceImpl = this.V.get();
        if (mediationServiceImpl == null) {
            synchronized (this.V) {
                mediationServiceImpl = this.V.get();
                if (mediationServiceImpl == null) {
                    mediationServiceImpl = new MediationServiceImpl(this);
                    this.V.set(mediationServiceImpl);
                }
            }
        }
        if (mediationServiceImpl == this.V) {
            mediationServiceImpl = null;
        }
        return (MediationServiceImpl) mediationServiceImpl;
    }

    public void Q0() {
        n.h("AppLovinSdk", "Resetting SDK state...");
        ca caVarC = C();
        ba baVar = ba.l;
        long jB = caVarC.b(baVar);
        g0().a();
        g0().e();
        C().a();
        C().b(baVar, jB + 1);
        if (this.e0.compareAndSet(true, false)) {
            O0();
        } else {
            this.e0.set(true);
        }
    }

    public void R0() {
        if (StringUtils.isValidString(this.l0)) {
            return;
        }
        this.l0 = AppLovinMediationProvider.MAX;
        I();
        if (n.a()) {
            I().a("AppLovinSdk", "Detected mediation provider: MAX");
        }
    }

    public o S() {
        Object oVar = this.Z.get();
        if (oVar == null) {
            synchronized (this.Z) {
                oVar = this.Z.get();
                if (oVar == null) {
                    oVar = new o(this);
                    this.Z.set(oVar);
                }
            }
        }
        if (oVar == this.Z) {
            oVar = null;
        }
        return (o) oVar;
    }

    public void S0() {
        v().n();
    }

    public AppLovinNativeAdService T() {
        Object appLovinNativeAdService = this.j.get();
        if (appLovinNativeAdService == null) {
            synchronized (this.j) {
                appLovinNativeAdService = this.j.get();
                if (appLovinNativeAdService == null) {
                    appLovinNativeAdService = new AppLovinNativeAdService(this);
                    this.j.set(appLovinNativeAdService);
                }
            }
        }
        if (appLovinNativeAdService == this.j) {
            appLovinNativeAdService = null;
        }
        return (AppLovinNativeAdService) appLovinNativeAdService;
    }

    public void T0() {
        a((Map) null);
    }

    public void U0() {
        if (AppLovinMediationProvider.ADMOB.equalsIgnoreCase(this.h) && ((Boolean) a(sj.L3)).booleanValue()) {
            String str = (String) a(sj.K3);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            String str2 = AppLovinSdk.VERSION;
            sb.append(str2);
            sb.append(".");
            if (str.startsWith(sb.toString())) {
                return;
            }
            final String str3 = "Mismatched AdMob adapter (" + str + ") and AppLovin SDK (" + str2 + ") versions detected, which may cause compatibility issues.";
            n.h("AppLovinSdk", str3);
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.d(str3);
                }
            });
        }
    }

    public com.applovin.impl.sdk.network.b W() {
        Object bVar = this.R.get();
        if (bVar == null) {
            synchronized (this.R) {
                bVar = this.R.get();
                if (bVar == null) {
                    bVar = new com.applovin.impl.sdk.network.b(this);
                    this.R.set(bVar);
                }
            }
        }
        if (bVar == this.R) {
            bVar = null;
        }
        return (com.applovin.impl.sdk.network.b) bVar;
    }

    public PostbackServiceImpl X() {
        Object postbackServiceImpl = this.Q.get();
        if (postbackServiceImpl == null) {
            synchronized (this.Q) {
                postbackServiceImpl = this.Q.get();
                if (postbackServiceImpl == null) {
                    postbackServiceImpl = new PostbackServiceImpl(this);
                    this.Q.set(postbackServiceImpl);
                }
            }
        }
        if (postbackServiceImpl == this.Q) {
            postbackServiceImpl = null;
        }
        return (PostbackServiceImpl) postbackServiceImpl;
    }

    public q Y() {
        Object objI0 = this.v.get();
        if (objI0 == null) {
            synchronized (this.v) {
                objI0 = this.v.get();
                if (objI0 == null) {
                    objI0 = I0();
                    if (objI0 == null) {
                        objI0 = this.v;
                    }
                    this.v.set(objI0);
                }
            }
        }
        if (objI0 == this.v) {
            objI0 = null;
        }
        return (q) objI0;
    }

    public String Z() {
        return o0().a();
    }

    public String a0() {
        return this.a;
    }

    public MaxSegmentCollectionImpl b0() {
        return (MaxSegmentCollectionImpl) this.g;
    }

    public Map c0() {
        MaxSegmentCollectionImpl maxSegmentCollectionImplB0 = b0();
        if (maxSegmentCollectionImplB0 == null) {
            return null;
        }
        return maxSegmentCollectionImplB0.getJsonData();
    }

    public SessionTracker e0() {
        Object sessionTracker = this.B.get();
        if (sessionTracker == null) {
            synchronized (this.B) {
                sessionTracker = this.B.get();
                if (sessionTracker == null) {
                    sessionTracker = new SessionTracker(this);
                    this.B.set(sessionTracker);
                }
            }
        }
        if (sessionTracker == this.B) {
            sessionTracker = null;
        }
        return (SessionTracker) sessionTracker;
    }

    public AppLovinSdkSettings f0() {
        return this.f;
    }

    public com.applovin.impl.sdk.d g() {
        Object dVar = this.P.get();
        if (dVar == null) {
            synchronized (this.P) {
                dVar = this.P.get();
                if (dVar == null) {
                    dVar = new com.applovin.impl.sdk.d(this);
                    this.P.set(dVar);
                }
            }
        }
        if (dVar == this.P) {
            dVar = null;
        }
        return (com.applovin.impl.sdk.d) dVar;
    }

    public e h() {
        Object eVar = this.y.get();
        if (eVar == null) {
            synchronized (this.y) {
                eVar = this.y.get();
                if (eVar == null) {
                    eVar = new e(this);
                    this.y.set(eVar);
                }
            }
        }
        if (eVar == this.y) {
            eVar = null;
        }
        return (e) eVar;
    }

    public AppLovinAdServiceImpl j() {
        Object appLovinAdServiceImpl = this.i.get();
        if (appLovinAdServiceImpl == null) {
            synchronized (this.i) {
                appLovinAdServiceImpl = this.i.get();
                if (appLovinAdServiceImpl == null) {
                    appLovinAdServiceImpl = new AppLovinAdServiceImpl(this);
                    this.i.set(appLovinAdServiceImpl);
                }
            }
        }
        if (appLovinAdServiceImpl == this.i) {
            appLovinAdServiceImpl = null;
        }
        return (AppLovinAdServiceImpl) appLovinAdServiceImpl;
    }

    public g k() {
        Object gVar = this.D.get();
        if (gVar == null) {
            synchronized (this.D) {
                gVar = this.D.get();
                if (gVar == null) {
                    gVar = new g(this);
                    this.D.set(gVar);
                }
            }
        }
        if (gVar == this.D) {
            gVar = null;
        }
        return (g) gVar;
    }

    public long l0() {
        if (this.d == 0) {
            return -1L;
        }
        return System.currentTimeMillis() - this.d;
    }

    public Activity m0() {
        Activity activityB = a(m()).b();
        return activityB != null ? activityB : F();
    }

    public ArrayService n() {
        Object arrayService = this.N.get();
        if (arrayService == null) {
            synchronized (this.N) {
                arrayService = this.N.get();
                if (arrayService == null) {
                    arrayService = new ArrayService(this);
                    this.N.set(arrayService);
                }
            }
        }
        if (arrayService == this.N) {
            arrayService = null;
        }
        return (ArrayService) arrayService;
    }

    public String n0() {
        return o0().c();
    }

    public h o() {
        Object hVar = this.I.get();
        if (hVar == null) {
            synchronized (this.I) {
                hVar = this.I.get();
                if (hVar == null) {
                    hVar = new h(this);
                    this.I.set(hVar);
                }
            }
        }
        if (hVar == this.I) {
            hVar = null;
        }
        return (h) hVar;
    }

    public CmpServiceImpl p() {
        Object cmpServiceImpl = this.l.get();
        if (cmpServiceImpl == null) {
            synchronized (this.l) {
                cmpServiceImpl = this.l.get();
                if (cmpServiceImpl == null) {
                    cmpServiceImpl = new CmpServiceImpl(this);
                    this.l.set(cmpServiceImpl);
                }
            }
        }
        if (cmpServiceImpl == this.l) {
            cmpServiceImpl = null;
        }
        return (CmpServiceImpl) cmpServiceImpl;
    }

    public i q() {
        Object iVar = this.G.get();
        if (iVar == null) {
            synchronized (this.G) {
                iVar = this.G.get();
                if (iVar == null) {
                    iVar = new i(this);
                    this.G.set(iVar);
                }
            }
        }
        if (iVar == this.G) {
            iVar = null;
        }
        return (i) iVar;
    }

    public AppLovinSdk q0() {
        return this.m;
    }

    public String r() {
        return o0().b();
    }

    public boolean r0() {
        return this.j0;
    }

    public AppLovinSdkConfiguration s() {
        return this.o0;
    }

    public boolean s0() {
        boolean z;
        synchronized (this.d0) {
            z = this.h0;
        }
        return z;
    }

    public boolean t0() {
        return this.i0;
    }

    public String toString() {
        return "CoreSdk{sdkKey='" + this.a + "', enabled=" + this.h0 + ", isFirstSession=" + this.i0 + '}';
    }

    public boolean u0() {
        boolean z;
        synchronized (this.n0) {
            z = this.m0 != null;
        }
        return z;
    }

    public boolean v0() {
        boolean z;
        synchronized (this.d0) {
            z = this.g0;
        }
        return z;
    }

    public k x() {
        Object kVar = this.u.get();
        if (kVar == null) {
            synchronized (this.u) {
                kVar = this.u.get();
                if (kVar == null) {
                    kVar = new k(this);
                    this.u.set(kVar);
                }
            }
        }
        if (kVar == this.u) {
            kVar = null;
        }
        return (k) kVar;
    }

    public AtomicBoolean x0() {
        return this.r0;
    }

    public String y() {
        return this.l0;
    }

    public boolean y0() {
        return StringUtils.containsIgnoreCase(N(), AppLovinMediationProvider.MAX);
    }

    public EventServiceImpl z() {
        Object eventServiceImpl = this.k.get();
        if (eventServiceImpl == null) {
            synchronized (this.k) {
                eventServiceImpl = this.k.get();
                if (eventServiceImpl == null) {
                    eventServiceImpl = new EventServiceImpl(this);
                    this.k.set(eventServiceImpl);
                }
            }
        }
        if (eventServiceImpl == this.k) {
            eventServiceImpl = null;
        }
        return (EventServiceImpl) eventServiceImpl;
    }

    public boolean z0() {
        return yp.a("com.unity3d.player.UnityPlayerActivity");
    }

    private void d() {
        tm tmVarI0 = i0();
        int i = this.k0 + 1;
        this.k0 = i;
        tmVarI0.a((yl) new jm(i, this, new a()), tm.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        I();
        if (n.a()) {
            I().a("AppLovinSdk", str);
        }
        i0().a(new sm(this));
    }

    public com.applovin.impl.sdk.a f() {
        Object aVar = this.z.get();
        if (aVar == null) {
            synchronized (this.z) {
                aVar = this.z.get();
                if (aVar == null) {
                    aVar = new com.applovin.impl.sdk.a(this);
                    this.z.set(aVar);
                }
            }
        }
        if (aVar == this.z) {
            aVar = null;
        }
        return (com.applovin.impl.sdk.a) aVar;
    }

    public void g(final String str) {
        n.g("AppLovinSdk", "Setting plugin version: " + str);
        if (yp.h()) {
            yp.a(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(str);
                }
            });
        } else {
            g0().a(sj.K3, str);
        }
    }

    public void h(final String str) {
        I();
        if (n.a()) {
            I().a("AppLovinSdk", "Setting user id: " + str);
        }
        if (StringUtils.isValidString(str) && str.length() > yp.b(8)) {
            n.h("AppLovinSdk", "Provided user id longer than supported (" + str.length() + " bytes, " + yp.b(8) + " maximum)");
        }
        if (yp.h()) {
            yp.a(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(str);
                }
            });
        } else {
            o0().a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
        if (!yp.c(this)) {
            HashMap map = new HashMap();
            map.put("details", AppLovinMediationProvider.ADMOB);
            map.put("error_message", str);
            D().a(ka.V, "adapterVersionMismatch", (Map) map);
            return;
        }
        throw new IllegalStateException(str);
    }

    public void f(String str) {
        I();
        if (n.a()) {
            I().a("AppLovinSdk", "setMediationProvider(mediationProvider=" + str + ")");
        }
        if (str != null && (str.isEmpty() || str.length() > 64 || !StringUtils.isAlphaNumeric(str))) {
            n.h("AppLovinSdk", "Mediation provider set to invalid value: " + str + ". Please use a valid mediation provider (e.g., AppLovinMediationProvider.MAX)");
            return;
        }
        this.h = str;
        if (yp.h()) {
            yp.a(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.G0();
                }
            });
        } else {
            c(uj.I);
        }
    }

    public com.applovin.impl.q e() {
        return a(v0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        I();
        if (n.a()) {
            I().a("AppLovinSdk", "Calling back publisher's initialization completion handler...");
        }
        sdkInitializationListener.onSdkInitialized(this.o0);
    }

    public la D() {
        return this.o;
    }

    public tm i0() {
        Object tmVar = this.p.get();
        if (tmVar == null) {
            synchronized (this.p) {
                tmVar = this.p.get();
                if (tmVar == null) {
                    tmVar = new tm(this);
                    this.p.set(tmVar);
                }
            }
        }
        if (tmVar == this.p) {
            tmVar = null;
        }
        return (tm) tmVar;
    }

    public tj g0() {
        Object tjVar = this.q.get();
        if (tjVar == null) {
            synchronized (this.q) {
                tjVar = this.q.get();
                if (tjVar == null) {
                    tjVar = new tj(this);
                    this.q.set(tjVar);
                }
            }
        }
        if (tjVar == this.q) {
            tjVar = null;
        }
        return (tj) tjVar;
    }

    public d4 t() {
        Object d4Var = this.r.get();
        if (d4Var == null) {
            synchronized (this.r) {
                d4Var = this.r.get();
                if (d4Var == null) {
                    d4Var = new d4(this);
                    this.r.set(d4Var);
                }
            }
        }
        if (d4Var == this.r) {
            d4Var = null;
        }
        return (d4) d4Var;
    }

    public ca C() {
        Object caVar = this.s.get();
        if (caVar == null) {
            synchronized (this.s) {
                caVar = this.s.get();
                if (caVar == null) {
                    caVar = new ca(this);
                    this.s.set(caVar);
                }
            }
        }
        if (caVar == this.s) {
            caVar = null;
        }
        return (ca) caVar;
    }

    public xe Q() {
        Object xeVar = this.t.get();
        if (xeVar == null) {
            synchronized (this.t) {
                xeVar = this.t.get();
                if (xeVar == null) {
                    xeVar = new xe(this);
                    this.t.set(xeVar);
                }
            }
        }
        if (xeVar == this.t) {
            xeVar = null;
        }
        return (xe) xeVar;
    }

    public vj h0() {
        Object vjVar = this.w.get();
        if (vjVar == null) {
            synchronized (this.w) {
                vjVar = this.w.get();
                if (vjVar == null) {
                    vjVar = new vj(this);
                    this.w.set(vjVar);
                }
            }
        }
        if (vjVar == this.w) {
            vjVar = null;
        }
        return (vj) vjVar;
    }

    public wp o0() {
        Object wpVar = this.x.get();
        if (wpVar == null) {
            synchronized (this.x) {
                wpVar = this.x.get();
                if (wpVar == null) {
                    wpVar = new wp(this);
                    this.x.set(wpVar);
                }
            }
        }
        if (wpVar == this.x) {
            wpVar = null;
        }
        return (wp) wpVar;
    }

    public qr p0() {
        Object qrVar = this.E.get();
        if (qrVar == null) {
            synchronized (this.E) {
                qrVar = this.E.get();
                if (qrVar == null) {
                    qrVar = new qr(this);
                    this.E.set(qrVar);
                }
            }
        }
        if (qrVar == this.E) {
            qrVar = null;
        }
        return (qr) qrVar;
    }

    public ag U() {
        Object agVar = this.F.get();
        if (agVar == null) {
            synchronized (this.F) {
                agVar = this.F.get();
                if (agVar == null) {
                    agVar = new ag(m());
                    this.F.set(agVar);
                }
            }
        }
        if (agVar == this.F) {
            agVar = null;
        }
        return (ag) agVar;
    }

    public oj d0() {
        Object ojVar = this.H.get();
        if (ojVar == null) {
            synchronized (this.H) {
                ojVar = this.H.get();
                if (ojVar == null) {
                    ojVar = new oj(this);
                    this.H.set(ojVar);
                }
            }
        }
        if (ojVar == this.H) {
            ojVar = null;
        }
        return (oj) ojVar;
    }

    public h4 u() {
        Object h4Var = this.J.get();
        if (h4Var == null) {
            synchronized (this.J) {
                h4Var = this.J.get();
                if (h4Var == null) {
                    h4Var = new h4(this);
                    this.J.set(h4Var);
                }
            }
        }
        if (h4Var == this.J) {
            h4Var = null;
        }
        return (h4) h4Var;
    }

    public qn j0() {
        Object qnVar = this.K.get();
        if (qnVar == null) {
            synchronized (this.K) {
                qnVar = this.K.get();
                if (qnVar == null) {
                    qnVar = new qn(this);
                    this.K.set(qnVar);
                }
            }
        }
        if (qnVar == this.K) {
            qnVar = null;
        }
        return (qn) qnVar;
    }

    public x4 v() {
        Object x4Var = this.L.get();
        if (x4Var == null) {
            synchronized (this.L) {
                x4Var = this.L.get();
                if (x4Var == null) {
                    x4Var = new x4(this);
                    this.L.set(x4Var);
                }
            }
        }
        if (x4Var == this.L) {
            x4Var = null;
        }
        return (x4) x4Var;
    }

    public pg V() {
        Object pgVar = this.M.get();
        if (pgVar == null) {
            synchronized (this.M) {
                pgVar = this.M.get();
                if (pgVar == null) {
                    pgVar = new pg(this);
                    this.M.set(pgVar);
                }
            }
        }
        if (pgVar == this.M) {
            pgVar = null;
        }
        return (pg) pgVar;
    }

    public c5 w() {
        Object c5Var = this.O.get();
        if (c5Var == null) {
            synchronized (this.O) {
                c5Var = this.O.get();
                if (c5Var == null) {
                    c5Var = new c5(this);
                    this.O.set(c5Var);
                }
            }
        }
        if (c5Var == this.O) {
            c5Var = null;
        }
        return (c5) c5Var;
    }

    public v i() {
        Object vVar = this.S.get();
        if (vVar == null) {
            synchronized (this.S) {
                vVar = this.S.get();
                if (vVar == null) {
                    vVar = new v(this);
                    this.S.set(vVar);
                }
            }
        }
        if (vVar == this.S) {
            vVar = null;
        }
        return (v) vVar;
    }

    public cd E() {
        Object cdVar = this.W.get();
        if (cdVar == null) {
            synchronized (this.W) {
                cdVar = this.W.get();
                if (cdVar == null) {
                    cdVar = new cd(this);
                    this.W.set(cdVar);
                }
            }
        }
        if (cdVar == this.W) {
            cdVar = null;
        }
        return (cd) cdVar;
    }

    public ye R() {
        Object yeVar = this.X.get();
        if (yeVar == null) {
            synchronized (this.X) {
                yeVar = this.X.get();
                if (yeVar == null) {
                    yeVar = new ye();
                    this.X.set(yeVar);
                }
            }
        }
        if (yeVar == this.X) {
            yeVar = null;
        }
        return (ye) yeVar;
    }

    public te M() {
        Object teVar = this.Y.get();
        if (teVar == null) {
            synchronized (this.Y) {
                teVar = this.Y.get();
                if (teVar == null) {
                    teVar = new te(this);
                    this.Y.set(teVar);
                }
            }
        }
        if (teVar == this.Y) {
            teVar = null;
        }
        return (te) teVar;
    }

    public wn k0() {
        Object wnVar = this.b0.get();
        if (wnVar == null) {
            synchronized (this.b0) {
                wnVar = this.b0.get();
                if (wnVar == null) {
                    wnVar = new wn(this);
                    this.b0.set(wnVar);
                }
            }
        }
        if (wnVar == this.b0) {
            wnVar = null;
        }
        return (wn) wnVar;
    }

    class b implements h4.b {
        b() {
        }

        @Override // com.applovin.impl.h4.b
        public void a(h4.a aVar) {
            j.this.I();
            if (n.a()) {
                j.this.I().a("AppLovinSdk", "Terms and Privacy Policy flow completed with status: " + aVar);
            }
            if (aVar.b()) {
                j.this.I();
                if (n.a()) {
                    j.this.I().a("AppLovinSdk", "Re-initializing SDK with the updated privacy settings...");
                }
                j.this.O0();
                j.this.L0();
                return;
            }
            j.this.e("Initializing SDK in MAX environment...");
        }
    }

    class d implements ag.a {
        final /* synthetic */ ag a;

        @Override // com.applovin.impl.ag.a
        public void a() {
            j.this.I();
            if (n.a()) {
                j.this.I().d("AppLovinSdk", "Connected to internet - re-initializing SDK");
            }
            synchronized (j.this.d0) {
                if (!j.this.g0) {
                    j.this.O0();
                }
            }
            this.a.b(this);
        }

        @Override // com.applovin.impl.ag.a
        public void b() {
        }

        d(ag agVar) {
            this.a = agVar;
        }
    }

    public Object a(sj sjVar) {
        return g0().a(sjVar);
    }

    public List c(sj sjVar) {
        return g0().c(sjVar);
    }

    public List b(sj sjVar) {
        return g0().b(sjVar);
    }

    public Object a(uj ujVar) {
        return a(ujVar, (Object) null);
    }

    public void c(uj ujVar) {
        h0().b(ujVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        this.d = System.currentTimeMillis();
        e4.c(jSONObject, this);
        e4.b(jSONObject, this);
        e4.a(jSONObject, this);
        pe.f(jSONObject, this);
        pe.d(jSONObject, this);
        pe.e(jSONObject, this);
        pe.g(jSONObject, this);
    }

    public void c() {
        synchronized (this.d0) {
            if (!this.g0 && !this.h0) {
                O0();
            }
        }
    }

    public Object b(uj ujVar) {
        return h0().a(ujVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        sdkInitializationListener.onSdkInitialized(this.o0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        o0().a(str);
    }

    public Object a(uj ujVar, Object obj) {
        return h0().a(ujVar, obj);
    }

    public void b(uj ujVar, Object obj) {
        h0().b(ujVar, obj);
    }

    public static void b(Context context) {
        if (context == null) {
            return;
        }
        v0 = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        sdkInitializationListener.onSdkInitialized(this.o0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration) {
        M0();
        this.f.attachAppLovinSdk(this);
        String pluginVersion = appLovinSdkInitializationConfiguration.getPluginVersion();
        if (pluginVersion != null) {
            n.g("AppLovinSdk", "Setting plugin version: " + pluginVersion);
            g0().a(sj.K3, pluginVersion);
        }
        if (appLovinSdkInitializationConfiguration.isExceptionHandlerEnabled() && ((Boolean) a(sj.u)).booleanValue()) {
            AppLovinExceptionHandler.shared().addSdk(this);
            AppLovinExceptionHandler.shared().enable();
        }
        tm tmVarI0 = i0();
        yl ylVar = this.s0;
        tm.b bVar = tm.b.CORE;
        tmVarI0.a(ylVar, bVar);
        i0().a(this.t0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        Iterator it = JsonUtils.getList(jSONObject, "error_messages", Collections.emptyList()).iterator();
        while (it.hasNext()) {
            n.h("AppLovinSdk", (String) it.next());
        }
    }

    public String b() {
        if (StringUtils.isValidString(this.l0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Map mapO = O();
        List listC = c(sj.m4);
        Boolean bool = (Boolean) a(sj.n4);
        if (mapO.isEmpty() && !bool.booleanValue()) {
            return null;
        }
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            Integer numValueOf = (Integer) a(sj.l4);
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (numValueOf.intValue() <= 0) {
                    break;
                }
                String className = stackTraceElement.getClassName();
                Iterator it = listC.iterator();
                do {
                    if (!it.hasNext()) {
                        for (Map.Entry entry : mapO.entrySet()) {
                            if (className.startsWith((String) entry.getKey())) {
                                this.l0 = (String) entry.getValue();
                                I();
                                if (n.a()) {
                                    I().a("AppLovinSdk", "Detected mediation provider: " + this.l0);
                                }
                                return null;
                            }
                        }
                        if (bool.booleanValue()) {
                            arrayList.add(className);
                        }
                        numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                        break;
                    }
                } while (!className.startsWith((String) it.next()));
            }
        } catch (Throwable th) {
            D().a("AppLovinSdk", "detectMediationProvider", th);
        }
        this.l0 = "unknown";
        I();
        if (n.a()) {
            I().k("AppLovinSdk", "Unable to detect mediation provider");
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        String strJoin = StringUtils.join(",", arrayList);
        if (!((Boolean) a(sj.o4)).booleanValue()) {
            return strJoin;
        }
        D().a(ka.d, "detectMediationProvider", (Map) CollectionUtils.hashMap("details", strJoin));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        g0().a(sj.K3, str);
    }

    public boolean a(sj sjVar, MaxAdFormat maxAdFormat) {
        return b(sjVar).contains(maxAdFormat);
    }

    public void a(oe oeVar) {
        if (i0().d()) {
            return;
        }
        List listC = c(ue.D6);
        if (listC.size() <= 0 || !K().a().containsAll(listC)) {
            return;
        }
        I();
        if (n.a()) {
            I().a("AppLovinSdk", "All required adapters initialized");
        }
        i0().e();
        H0();
    }

    public void a(AppLovinSdk appLovinSdk) {
        this.m = appLovinSdk;
    }

    public static String a(String str) {
        return a(str, (List) null);
    }

    public static String a(int i) {
        return a(i, (List) null);
    }

    public static String a(String str, List list) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Context contextM = m();
        return a(contextM.getResources().getIdentifier(str, "string", contextM.getPackageName()), list);
    }

    public static String a(int i, List list) {
        String string = m().getResources().getString(i);
        return list != null ? String.format(string, list.toArray()) : string;
    }

    public static com.applovin.impl.q a(Context context) {
        if (y0 == null) {
            synchronized (z0) {
                if (y0 == null) {
                    y0 = new com.applovin.impl.q(context);
                }
            }
        }
        return y0;
    }

    public void a(final AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration, final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        if (this.r0.get()) {
            n.h("AppLovinSdk", "Invalid initialization process: please remove the applovin.sdk.key entry from your AndroidManifest.xml and set your SDK key with the AppLovinSdkInitializationConfiguration object. Then initialize the SDK as soon as possible with \"AppLovinSdk#initialize(AppLovinSdkInitializationConfiguration, AppLovinSdk.SdkInitializationListener)\" before accessing any SDK fields or APIs.");
            D().a(ka.V, "legacy_init_already");
            if (yp.c(this)) {
                throw new IllegalStateException("Invalid initialization process: please remove the applovin.sdk.key entry from your AndroidManifest.xml and set your SDK key with the AppLovinSdkInitializationConfiguration object. Then initialize the SDK as soon as possible with \"AppLovinSdk#initialize(AppLovinSdkInitializationConfiguration, AppLovinSdk.SdkInitializationListener)\" before accessing any SDK fields or APIs.");
            }
            return;
        }
        synchronized (this.n0) {
            if (this.m0 != null) {
                n.h("AppLovinSdk", "AppLovin SDK already initialized with configuration: " + this.m0 + ". Ignoring the provided initialization configuration.");
                if (!s0() || sdkInitializationListener == null) {
                    return;
                }
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(sdkInitializationListener);
                    }
                });
                return;
            }
            this.m0 = appLovinSdkInitializationConfiguration;
            this.p0 = sdkInitializationListener;
            this.a = appLovinSdkInitializationConfiguration.getSdkKey();
            this.h = appLovinSdkInitializationConfiguration.getMediationProvider();
            this.g = appLovinSdkInitializationConfiguration.getSegmentCollection();
            yp.a(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(appLovinSdkInitializationConfiguration);
                }
            });
        }
    }

    public void a(String str, AppLovinSdkSettings appLovinSdkSettings) {
        x0().set(true);
        this.a = str;
        this.f = appLovinSdkSettings;
        if (TextUtils.isEmpty(str)) {
            n.h("AppLovinSdk", "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
            n.h("AppLovinSdk", "Called with an invalid SDK key from: " + Log.getStackTraceString(new Throwable("")));
        }
        yp.a(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.N0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a(JSONObject jSONObject) {
        List listAsList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(","));
        ArrayList arrayList = new ArrayList(listAsList.size());
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            MaxAdFormat fromString = MaxAdFormat.formatFromString((String) it.next());
            if (fromString != null) {
                arrayList.add(fromString);
            }
        }
        return arrayList;
    }

    public void a(boolean z) {
        synchronized (this.d0) {
            this.g0 = false;
            this.h0 = z;
        }
        if (z) {
            List listC = c(ue.D6);
            if (listC.isEmpty()) {
                i0().e();
                H0();
                return;
            }
            Long l = (Long) a(ue.E6);
            jn jnVar = new jn(this, true, "timeoutInitAdapters", new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.A0();
                }
            });
            I();
            if (n.a()) {
                I().a("AppLovinSdk", "Waiting for required adapters to init: " + listC + " - timing out in " + l + "ms...");
            }
            i0().a(jnVar, tm.b.TIMEOUT, l.longValue(), true);
        }
    }

    public boolean a(MaxAdFormat maxAdFormat) {
        List list = this.c0;
        return (list == null || list.size() <= 0 || this.c0.contains(maxAdFormat)) ? false : true;
    }

    public void a() {
        String str = (String) h0().a(uj.e, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE < yp.f(str)) {
                n.h("AppLovinSdk", "Current version (" + AppLovinSdk.VERSION + ") is older than earlier installed version (" + str + "), which may cause compatibility issues.");
            }
        }
    }

    public void a(Map map) {
        M().a(map);
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        h0().a(str, obj, editor);
    }

    public Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return vj.a(str, obj, cls, sharedPreferences);
    }

    public void a(SharedPreferences sharedPreferences) {
        h0().a(sharedPreferences);
    }

    public void a(final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        if (!s0()) {
            this.p0 = sdkInitializationListener;
        } else if (sdkInitializationListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.j$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(sdkInitializationListener);
                }
            });
        }
    }
}
