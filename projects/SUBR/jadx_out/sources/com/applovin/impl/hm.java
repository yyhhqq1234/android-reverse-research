package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class hm extends yl {
    protected final h0 h;
    private final String i;

    protected abstract yl a(JSONObject jSONObject);

    protected abstract String e();

    protected abstract String f();

    @Override // java.lang.Runnable
    public void run() {
        vi.a aVarA;
        Map map;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Fetching next ad of zone: " + this.h);
        }
        if (((Boolean) this.a.a(sj.S3)).booleanValue() && yp.j() && com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "User is connected to a VPN");
        }
        yp.a(this.a, this.b);
        JSONObject jSONObject = null;
        this.a.D().a(ka.f, this.h, (AppLovinError) null);
        ca caVarC = this.a.C();
        caVarC.c(ba.d);
        ba baVar = ba.g;
        if (caVarC.b(baVar) == 0) {
            caVarC.b(baVar, System.currentTimeMillis());
        }
        try {
            JSONObject andResetCustomPostBody = this.a.j().getAndResetCustomPostBody();
            String str = "POST";
            if (((Boolean) this.a.a(sj.j3)).booleanValue()) {
                vi.a aVarA2 = vi.a.a(((Integer) this.a.a(sj.i5)).intValue());
                JSONObject jSONObject2 = new JSONObject(this.a.x().a(h(), false, true));
                map = new HashMap();
                if (!((Boolean) this.a.a(sj.r5)).booleanValue() && !((Boolean) this.a.a(sj.n5)).booleanValue()) {
                    map.put("rid", UUID.randomUUID().toString());
                }
                if (!((Boolean) this.a.a(sj.a5)).booleanValue()) {
                    map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.a.a0());
                }
                JsonUtils.putAll(jSONObject2, andResetCustomPostBody);
                aVarA = aVarA2;
                jSONObject = jSONObject2;
            } else {
                aVarA = vi.a.a(((Integer) this.a.a(sj.j5)).intValue());
                Map mapA = yp.a(this.a.x().a(h(), false, false));
                if (andResetCustomPostBody != null) {
                    jSONObject = andResetCustomPostBody;
                } else {
                    str = "GET";
                }
                map = mapA;
            }
            if (yp.f(a())) {
                map.putAll(this.a.j().getAndResetCustomQueryParams());
            }
            if (StringUtils.isValidString(this.i)) {
                map.put("sts", this.i);
            }
            a(caVarC);
            com.applovin.impl.sdk.network.a.C0039a c0039aF = com.applovin.impl.sdk.network.a.a(this.a).b(f()).a(e()).b(map).c(str).a(g()).a((Object) new JSONObject()).a(((Integer) this.a.a(sj.Y2)).intValue()).c(((Boolean) this.a.a(sj.Z2)).booleanValue()).d(((Boolean) this.a.a(sj.a3)).booleanValue()).c(((Integer) this.a.a(sj.X2)).intValue()).a(aVarA).f(true);
            if (jSONObject != null) {
                c0039aF.a(jSONObject);
                c0039aF.b(((Boolean) this.a.a(sj.B5)).booleanValue());
            }
            a aVar = new a(c0039aF.a(), this.a);
            aVar.c(sj.r0);
            aVar.b(sj.s0);
            this.a.i0().a(aVar);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Unable to fetch ad for zone id: " + this.h, th);
            }
            a(0, th.getMessage());
        }
    }

    public hm(h0 h0Var, String str, com.applovin.impl.sdk.j jVar) {
        super(str, jVar);
        this.h = h0Var;
        this.i = jVar.b();
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
            super(aVar, jVar);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            hm.this.a(i, str2);
            this.a.D().a("fetchAd", str, i, CollectionUtils.hashMap("error_message", str2));
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            if (i == 200) {
                JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.m.a());
                JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.m.b());
                HashMap map = new HashMap(5);
                CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), map);
                CollectionUtils.putStringIfValid("code", String.valueOf(i), map);
                CollectionUtils.putStringIfValid("ad_zone_id", hm.this.h.e(), map);
                CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.m.a()), map);
                CollectionUtils.putStringIfValid("response_size", String.valueOf(this.m.b()), map);
                this.a.D().a(ka.g, (Map) map);
                hm.this.b(jSONObject);
                return;
            }
            hm.this.a(i, MaxAdapterError.NO_FILL.getErrorMessage());
        }
    }

    private Map g() {
        HashMap map = new HashMap(3);
        map.put("AppLovin-Zone-Id", this.h.e());
        if (this.h.f() != null) {
            map.put("AppLovin-Ad-Size", this.h.f().getLabel());
        }
        if (this.h.g() != null) {
            map.put("AppLovin-Ad-Type", this.h.g().getLabel());
        }
        return map;
    }

    protected Map h() {
        HashMap map = new HashMap(4);
        map.put("zone_id", this.h.e());
        if (this.h.f() != null) {
            map.put("size", this.h.f().getLabel());
        }
        if (this.h.g() != null) {
            map.put("require", this.h.g().getLabel());
        }
        return map;
    }

    protected void b(JSONObject jSONObject) {
        e4.c(jSONObject, this.a);
        e4.b(jSONObject, this.a);
        e4.a(jSONObject, this.a);
        h0.a(jSONObject);
        this.a.i0().a(a(jSONObject));
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

    protected void a(int i, String str) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Unable to fetch " + this.h + " ad: server returned " + i);
        }
        if (i == -800) {
            this.a.C().c(ba.m);
        }
        this.a.D().a(ka.h, this.h, new AppLovinError(i, str));
    }
}
