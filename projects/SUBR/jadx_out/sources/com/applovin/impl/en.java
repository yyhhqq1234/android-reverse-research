package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class en extends gn {
    private final com.applovin.impl.sdk.ad.b h;

    @Override // com.applovin.impl.gn
    protected void b(JSONObject jSONObject) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Reported reward successfully for ad: " + this.h);
        }
    }

    @Override // com.applovin.impl.in
    protected String f() {
        return "2.0/cr";
    }

    @Override // com.applovin.impl.gn
    protected void i() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "No reward result was found for ad: " + this.h);
        }
    }

    public en(com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.j jVar) {
        super("TaskReportAppLovinReward", jVar);
        this.h = bVar;
    }

    @Override // com.applovin.impl.gn
    protected eh h() {
        return this.h.f();
    }

    @Override // com.applovin.impl.in
    protected void a(int i) {
        super.a(i);
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Failed to report reward for ad: " + this.h + " - error code: " + i);
        }
    }

    @Override // com.applovin.impl.in
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "zone_id", this.h.getAdZone().e());
        JsonUtils.putInt(jSONObject, "fire_percent", this.h.W());
        String clCode = this.h.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }
}
