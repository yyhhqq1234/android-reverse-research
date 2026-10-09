package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class zl extends yl {
    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d(this.b, "Submitting user data...");
        }
        Map mapC = e4.c(this.a);
        JSONObject jSONObject = new JSONObject();
        c(jSONObject);
        b(jSONObject);
        if (((Boolean) this.a.a(sj.t5)).booleanValue() || ((Boolean) this.a.a(sj.n5)).booleanValue()) {
            JsonUtils.putAll(jSONObject, (Map<String, ?>) mapC);
            mapC = null;
        }
        a(mapC, jSONObject);
    }

    zl(com.applovin.impl.sdk.j jVar) {
        super("TaskApiSubmitData", jVar);
    }

    private void c(JSONObject jSONObject) {
        com.applovin.impl.sdk.k kVarX = this.a.x();
        Map mapM = kVarX.m();
        yp.a(org.json.md.A, "type", mapM);
        yp.a("api_level", "sdk_version", mapM);
        JsonUtils.putObject(jSONObject, "device_info", new JSONObject(mapM));
        Map mapB = kVarX.B();
        yp.a("sdk_version", "applovin_sdk_version", mapB);
        yp.a("ia", "installed_at", mapB);
        JsonUtils.putObject(jSONObject, "app_info", new JSONObject(mapB));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        this.a.g0().a(sj.g, JsonUtils.getString(jSONObject2, "device_id", ""));
        this.a.g0().a(sj.k, JsonUtils.getString(jSONObject2, "device_token", ""));
        e4.a(jSONObject2, this.a);
        this.a.C().b();
    }

    private void b(JSONObject jSONObject) {
        if (((Boolean) this.a.a(sj.B4)).booleanValue()) {
            JsonUtils.putJSONObjectIfValid(jSONObject, "stats", this.a.C().c());
        }
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
            super(aVar, jVar);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            e4.a(i, this.a);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            zl.this.a(jSONObject);
        }
    }

    private void a(Map map, JSONObject jSONObject) {
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).b(e4.b("2.0/device", this.a)).a(e4.a("2.0/device", this.a)).b(map).a(jSONObject).c("POST").b(((Boolean) this.a.a(sj.A5)).booleanValue()).a((Object) new JSONObject()).a(((Integer) this.a.a(sj.b3)).intValue()).a(vi.a.a(((Integer) this.a.a(sj.l5)).intValue())).a(), this.a);
        aVar.c(sj.t0);
        aVar.b(sj.u0);
        this.a.i0().a(aVar);
    }
}
