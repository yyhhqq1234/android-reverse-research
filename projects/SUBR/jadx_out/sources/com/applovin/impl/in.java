package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class in extends yl {
    protected abstract void a(JSONObject jSONObject);

    protected abstract String f();

    protected abstract int g();

    protected in(String str, com.applovin.impl.sdk.j jVar) {
        super(str, jVar);
    }

    class a extends dn {
        final /* synthetic */ d4.e n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar, d4.e eVar) {
            super(aVar, jVar);
            this.n = eVar;
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            this.n.a(str, i, str2, jSONObject);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            this.n.a(str, jSONObject, i);
        }
    }

    protected JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        String strC = this.a.o0().c();
        if (((Boolean) this.a.a(sj.C3)).booleanValue() && StringUtils.isValidString(strC)) {
            JsonUtils.putString(jSONObject, "cuid", strC);
        }
        if (((Boolean) this.a.a(sj.E3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "compass_random_token", this.a.r());
        }
        if (((Boolean) this.a.a(sj.G3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "applovin_random_token", this.a.Z());
        }
        a(jSONObject);
        return jSONObject;
    }

    protected void a(int i) {
        e4.a(i, this.a);
    }

    void a(JSONObject jSONObject, d4.e eVar) {
        Map mapC = e4.c(this.a);
        if (((Boolean) this.a.a(sj.u5)).booleanValue() || ((Boolean) this.a.a(sj.n5)).booleanValue()) {
            JsonUtils.putAll(jSONObject, (Map<String, ?>) mapC);
            mapC = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.a).b(e4.b(f(), this.a)).a(e4.a(f(), this.a)).b(mapC).a(jSONObject).c("POST").b(((Boolean) this.a.a(sj.D5)).booleanValue()).a((Object) new JSONObject()).a(g()).a(vi.a.a(((Integer) this.a.a(sj.m5)).intValue())).a(), this.a, eVar);
        aVar.c(sj.t0);
        aVar.b(sj.u0);
        this.a.i0().a(aVar);
    }
}
