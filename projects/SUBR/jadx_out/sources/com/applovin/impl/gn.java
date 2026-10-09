package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class gn extends in {
    protected abstract void b(JSONObject jSONObject);

    protected abstract eh h();

    protected abstract void i();

    protected gn(String str, com.applovin.impl.sdk.j jVar) {
        super(str, jVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        eh ehVarH = h();
        if (ehVarH != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Reporting pending reward: " + ehVarH + "...");
            }
            a(a(ehVarH), new a());
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Pending reward not found");
        }
        i();
    }

    class a implements d4.e {
        a() {
        }

        @Override // com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            gn.this.a(i);
        }

        @Override // com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            gn.this.b(jSONObject);
        }
    }

    @Override // com.applovin.impl.in
    protected int g() {
        return ((Integer) this.a.a(sj.g1)).intValue();
    }

    private JSONObject a(eh ehVar) {
        JSONObject jSONObjectE = e();
        JsonUtils.putString(jSONObjectE, "result", ehVar.b());
        Map mapA = ehVar.a();
        if (mapA != null) {
            JsonUtils.putJSONObject(jSONObjectE, "params", new JSONObject(mapA));
        }
        return jSONObjectE;
    }
}
