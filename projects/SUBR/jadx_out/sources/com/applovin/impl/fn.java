package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class fn extends gn {
    private final he h;

    @Override // com.applovin.impl.gn
    protected void b(JSONObject jSONObject) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Reported reward successfully for mediated ad: " + this.h);
        }
    }

    @Override // com.applovin.impl.in
    protected String f() {
        return "2.0/mcr";
    }

    @Override // com.applovin.impl.gn
    protected void i() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "No reward result was found for mediated ad: " + this.h);
        }
    }

    public fn(he heVar, com.applovin.impl.sdk.j jVar) {
        super("TaskReportMaxReward", jVar);
        this.h = heVar;
    }

    @Override // com.applovin.impl.gn
    protected eh h() {
        return this.h.k0();
    }

    @Override // com.applovin.impl.in
    protected void a(int i) {
        super.a(i);
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Failed to report reward for mediated ad: " + this.h + " - error code: " + i);
        }
    }

    @Override // com.applovin.impl.in
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.h.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.h.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.h.e());
        String strO0 = this.h.o0();
        if (!StringUtils.isValidString(strO0)) {
            strO0 = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", strO0);
        String strB = this.h.B();
        if (!StringUtils.isValidString(strB)) {
            strB = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", strB);
    }
}
