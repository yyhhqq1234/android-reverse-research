package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collections;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class mn extends in {
    protected abstract void a(eh ehVar);

    protected abstract boolean h();

    protected mn(String str, com.applovin.impl.sdk.j jVar) {
        super(str, jVar);
    }

    class a implements d4.e {
        a() {
        }

        @Override // com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            if (mn.this.h()) {
                com.applovin.impl.sdk.n nVar = mn.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    mn mnVar = mn.this;
                    mnVar.c.b(mnVar.b, "Reward validation failed with error code " + i + " but task was cancelled already");
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.n nVar2 = mn.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                mn mnVar2 = mn.this;
                mnVar2.c.b(mnVar2.b, "Reward validation failed with code " + i + " and error: " + str2);
            }
            mn.this.a(i);
        }

        @Override // com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            if (mn.this.h()) {
                com.applovin.impl.sdk.n nVar = mn.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    mn mnVar = mn.this;
                    mnVar.c.b(mnVar.b, "Reward validation succeeded with code " + i + " but task was cancelled already");
                }
                com.applovin.impl.sdk.n nVar2 = mn.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    mn mnVar2 = mn.this;
                    mnVar2.c.b(mnVar2.b, "Response: " + jSONObject);
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.n nVar3 = mn.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                mn mnVar3 = mn.this;
                mnVar3.c.a(mnVar3.b, "Reward validation succeeded with code " + i + " and response: " + jSONObject);
            }
            mn.this.c(jSONObject);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        a(e(), new a());
    }

    @Override // com.applovin.impl.in
    protected int g() {
        return ((Integer) this.a.a(sj.f1)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        eh ehVarB = b(jSONObject);
        a(ehVarB);
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Pending reward handled: " + ehVarB);
        }
    }

    private eh b(JSONObject jSONObject) {
        Map<String, String> mapEmptyMap;
        String string;
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        e4.c(jSONObject2, this.a);
        e4.b(jSONObject, this.a);
        e4.a(jSONObject, this.a);
        try {
            mapEmptyMap = JsonUtils.toStringMap((JSONObject) jSONObject2.get("params"));
        } catch (Throwable unused) {
            mapEmptyMap = Collections.emptyMap();
        }
        try {
            string = jSONObject2.getString("result");
        } catch (Throwable unused2) {
            string = "network_timeout";
        }
        return eh.a(string, mapEmptyMap);
    }
}
