package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class mm extends yl {
    private final d4.e h;

    private JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putJsonArrayIfValid(jSONObject, "installed_mediation_adapters", ze.a(this.a));
        l0.a aVarF = this.a.x().f();
        JsonUtils.putStringIfValid(jSONObject, "dnt_code", aVarF.b().b());
        JsonUtils.putStringIfValid(jSONObject, "idfa", aVarF.a());
        return jSONObject;
    }

    public mm(d4.e eVar, com.applovin.impl.sdk.j jVar) {
        super("TaskFetchMediationDebuggerInfo", jVar, true);
        this.h = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map mapF = f();
        JSONObject jSONObjectE = e();
        if (((Boolean) this.a.a(sj.q5)).booleanValue() || ((Boolean) this.a.a(sj.n5)).booleanValue()) {
            JsonUtils.putAll(jSONObjectE, (Map<String, ?>) mapF);
            mapF = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).c("POST").b(pe.i(this.a)).a(pe.h(this.a)).b(mapF).a(jSONObjectE).a((Object) new JSONObject()).c(((Long) this.a.a(ue.J6)).intValue()).a(vi.a.a(((Integer) this.a.a(sj.h5)).intValue())).a(), this.a, d());
        aVar.c(ue.F6);
        aVar.b(ue.G6);
        this.a.i0().a(aVar);
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar, boolean z) {
            super(aVar, jVar, z);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            mm.this.h.a(str, i, str2, jSONObject);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            mm.this.h.a(str, jSONObject, i);
        }
    }

    protected Map f() {
        HashMap map = new HashMap();
        map.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.a.a(sj.a5)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
        }
        Map mapB = this.a.x().B();
        map.put(com.ironsource.y8.h.V, String.valueOf(mapB.get(com.ironsource.y8.h.V)));
        map.put("app_version", String.valueOf(mapB.get("app_version")));
        Map mapH = this.a.x().H();
        map.put(org.json.md.A, String.valueOf(mapH.get(org.json.md.A)));
        map.put(org.json.md.y, String.valueOf(mapH.get(org.json.md.y)));
        return map;
    }
}
