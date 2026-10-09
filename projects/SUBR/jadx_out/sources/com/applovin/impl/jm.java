package com.applovin.impl;

import android.app.ActivityManager;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.security.ProviderInstaller;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class jm extends yl {
    private static final AtomicBoolean k = new AtomicBoolean();
    private final int h;
    private final Object i;
    private b j;

    public interface b {
        void a(JSONObject jSONObject);
    }

    protected JSONObject e() {
        List<String> adUnitIds;
        JSONObject jSONObject = new JSONObject();
        try {
            com.applovin.impl.sdk.j jVar = this.a;
            sj sjVar = sj.n5;
            if (((Boolean) jVar.a(sjVar)).booleanValue() || ((Boolean) this.a.a(sjVar)).booleanValue()) {
                jSONObject.put("rid", UUID.randomUUID().toString());
            }
            jSONObject.put("sdk_version", AppLovinSdk.VERSION);
            JsonUtils.putStringIfValid(jSONObject, "ad_review_sdk_version", v.b());
            jSONObject.put("init_count", this.h);
            jSONObject.put("server_installed_at", this.a.a(sj.p));
            jSONObject.put("legacy", this.a.x0().get());
            if (this.a.t0()) {
                jSONObject.put("first_install", true);
            }
            if (!this.a.r0()) {
                jSONObject.put("first_install_v2", true);
            }
            JsonUtils.putStringIfValid(jSONObject, "process_name", yp.b(a()));
            JsonUtils.putBooleanIfValid(jSONObject, "is_main_process", yp.g(a()));
            JsonUtils.putStringIfValid(jSONObject, "plugin_version", (String) this.a.a(sj.K3));
            JsonUtils.putStringIfValid(jSONObject, "mediation_provider", this.a.N());
            JsonUtils.putStringIfValid(jSONObject, "mediation_provider_v2", this.a.y());
            jSONObject.put("installed_mediation_adapters", ze.a(this.a));
            Map mapB = this.a.x().B();
            jSONObject.put(com.ironsource.y8.h.V, mapB.get(com.ironsource.y8.h.V));
            jSONObject.put("app_version", mapB.get("app_version"));
            jSONObject.put("debug", mapB.get("debug"));
            jSONObject.put("tg", mapB.get("tg"));
            jSONObject.put("target_sdk", mapB.get("target_sdk"));
            if (this.a.x0().get()) {
                adUnitIds = this.a.f0().getInitializationAdUnitIds();
            } else {
                adUnitIds = this.a.G() != null ? this.a.G().getAdUnitIds() : null;
            }
            if (adUnitIds != null && adUnitIds.size() > 0) {
                List<String> listRemoveTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(adUnitIds);
                jSONObject.put("ad_unit_ids", CollectionUtils.implode(listRemoveTrimmedEmptyStrings, listRemoveTrimmedEmptyStrings.size()));
            }
            jSONObject.put(AndroidTcfDataSource.TCF_TCSTRING_KEY, mapB.get(AndroidTcfDataSource.TCF_TCSTRING_KEY));
            jSONObject.put("IABTCF_gdprApplies", mapB.get("IABTCF_gdprApplies"));
            Object obj = mapB.get("IABTCF_AddtlConsent");
            if (obj instanceof String) {
                JsonUtils.putStringIfValid(jSONObject, "IABTCF_AddtlConsent", (String) obj);
            }
            jSONObject.put("consent_flow_info", this.a.u().c());
            Map mapH = this.a.x().H();
            jSONObject.put(org.json.md.A, mapH.get(org.json.md.A));
            jSONObject.put(org.json.md.y, mapH.get(org.json.md.y));
            jSONObject.put("locale", mapH.get("locale"));
            jSONObject.put("brand", mapH.get("brand"));
            jSONObject.put("brand_name", mapH.get("brand_name"));
            jSONObject.put("hardware", mapH.get("hardware"));
            jSONObject.put(org.json.md.v, mapH.get(org.json.md.v));
            jSONObject.put("revision", mapH.get("revision"));
            jSONObject.put("is_tablet", mapH.get("is_tablet"));
            jSONObject.put("screen_size_in", mapH.get("screen_size_in"));
            jSONObject.put("supported_abis", mapH.get("supported_abis"));
            if (((Boolean) this.a.a(sj.V3)).booleanValue()) {
                jSONObject.put("mtl", this.a.e0().getLastTrimMemoryLevel());
            }
            try {
                ActivityManager activityManager = (ActivityManager) com.applovin.impl.sdk.j.m().getSystemService("activity");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                if (activityManager != null) {
                    activityManager.getMemoryInfo(memoryInfo);
                    jSONObject.put("fm", memoryInfo.availMem);
                    jSONObject.put("tm", memoryInfo.totalMem);
                    jSONObject.put("lmt", memoryInfo.threshold);
                    jSONObject.put("lm", memoryInfo.lowMemory);
                }
            } catch (Throwable unused) {
            }
            l0.a aVarF = this.a.x().f();
            jSONObject.put("dnt", aVarF.c());
            jSONObject.put("dnt_code", aVarF.b().b());
            Boolean boolB = a4.c().b(a());
            if (((Boolean) this.a.a(sj.H3)).booleanValue() && StringUtils.isValidString(aVarF.a()) && !Boolean.TRUE.equals(boolB)) {
                jSONObject.put("idfa", aVarF.a());
            }
            com.applovin.impl.sdk.k.b bVarC = this.a.x().C();
            if (((Boolean) this.a.a(sj.A3)).booleanValue() && bVarC != null && !Boolean.TRUE.equals(boolB)) {
                jSONObject.put("idfv", bVarC.a);
                jSONObject.put("idfv_scope", bVarC.b);
            }
            if (((Boolean) this.a.a(sj.D3)).booleanValue()) {
                jSONObject.put("compass_random_token", this.a.r());
            }
            if (((Boolean) this.a.a(sj.F3)).booleanValue()) {
                jSONObject.put("applovin_random_token", this.a.Z());
            }
            if (this.a.k0().c()) {
                jSONObject.put("test_mode", true);
            }
            List listB = this.a.k0().b();
            if (listB != null && !listB.isEmpty()) {
                jSONObject.put("test_mode_networks", listB);
            }
            jSONObject.put("sdk_extra_parameters", new JSONObject(this.a.f0().getExtraParameters()));
            Map mapC0 = this.a.c0();
            if (!CollectionUtils.isEmpty(mapC0)) {
                jSONObject.put("segments", new JSONObject(mapC0));
            }
            if (this.h > 1) {
                ArrayService arrayServiceN = this.a.n();
                if (arrayServiceN.getIsDirectDownloadEnabled() != null) {
                    jSONObject.put("ah_dd_enabled", arrayServiceN.getIsDirectDownloadEnabled());
                }
                jSONObject.put("ah_sdk_version_code", arrayServiceN.getAppHubVersionCode());
                jSONObject.put("ah_random_user_token", StringUtils.emptyIfNull(arrayServiceN.getRandomUserToken()));
                jSONObject.put("ah_sdk_package_name", StringUtils.emptyIfNull(arrayServiceN.getAppHubPackageName()));
            }
        } catch (JSONException e) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Failed to create JSON body", e);
            }
            this.a.D().a(this.b, "createJSONBody", e);
        }
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!z3.k() && k.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(com.applovin.impl.sdk.j.m());
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Cannot update security provider", th);
                }
            }
        }
        Map mapH = h();
        com.applovin.impl.sdk.network.a.C0039a c0039aB = com.applovin.impl.sdk.network.a.a(this.a).b(g()).a(f()).b(mapH).a(e()).b(((Boolean) this.a.a(sj.z5)).booleanValue()).c("POST").a((Object) new JSONObject()).a(((Integer) this.a.a(sj.e3)).intValue()).b(((Integer) this.a.a(sj.h3)).intValue());
        com.applovin.impl.sdk.j jVar = this.a;
        sj sjVar = sj.d3;
        com.applovin.impl.sdk.network.a aVarA = c0039aB.c(((Integer) jVar.a(sjVar)).intValue()).e(((Boolean) this.a.a(sj.q3)).booleanValue()).a(vi.a.a(((Integer) this.a.a(sj.f5)).intValue())).f(true).a();
        this.a.i0().a(new c(this.a), tm.b.TIMEOUT, ((long) ((Integer) this.a.a(sjVar)).intValue()) + 250);
        a aVar = new a(aVarA, this.a, d());
        aVar.c(sj.p0);
        aVar.b(sj.q0);
        this.a.i0().a(aVar);
    }

    public jm(int i, com.applovin.impl.sdk.j jVar, b bVar) {
        super("TaskFetchBasicSettings", jVar, true);
        this.i = new Object();
        this.h = i;
        this.j = bVar;
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar, boolean z) {
            super(aVar, jVar, z);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            jm.this.a(jSONObject);
            this.a.D().a("fetchBasicSettings", str, i);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to fetch basic SDK settings: server returned " + i);
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            jm.this.a(jSONObject);
            this.a.D().a("fetchBasicSettings", str, i, CollectionUtils.hashMap("error_message", str2));
        }
    }

    protected Map h() {
        HashMap map = new HashMap();
        if (!((Boolean) this.a.a(sj.o5)).booleanValue() && !((Boolean) this.a.a(sj.n5)).booleanValue()) {
            map.put("rid", UUID.randomUUID().toString());
        }
        if (!((Boolean) this.a.a(sj.a5)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
        }
        Boolean boolB = a4.b().b(a());
        if (boolB != null) {
            map.put("huc", boolB.toString());
        }
        Boolean boolB2 = a4.c().b(a());
        if (boolB2 != null) {
            map.put("aru", boolB2.toString());
        }
        Boolean boolB3 = a4.a().b(a());
        if (boolB3 != null) {
            map.put("dns", boolB3.toString());
        }
        return map;
    }

    private String g() {
        return e4.a((String) this.a.a(sj.p0), "5.0/i", b());
    }

    private String f() {
        return e4.a((String) this.a.a(sj.q0), "5.0/i", b());
    }

    private class c extends yl {
        public c(com.applovin.impl.sdk.j jVar) {
            super("TaskTimeoutFetchBasicSettings", jVar, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (jm.this.j != null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "Timing out fetch basic settings...");
                }
                jm.this.a(new JSONObject());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        b bVar;
        synchronized (this.i) {
            bVar = this.j;
            this.j = null;
        }
        if (bVar != null) {
            bVar.a(jSONObject);
        }
    }
}
