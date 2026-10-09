package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ln extends mn {
    private final he h;

    @Override // com.applovin.impl.in
    protected String f() {
        return "2.0/mvr";
    }

    public ln(he heVar, com.applovin.impl.sdk.j jVar) {
        super("TaskValidateMaxReward", jVar);
        this.h = heVar;
    }

    @Override // com.applovin.impl.mn
    protected void a(eh ehVar) {
        this.h.a(ehVar);
    }

    @Override // com.applovin.impl.mn
    protected boolean h() {
        return this.h.r0();
    }

    @Override // com.applovin.impl.in
    protected void a(int i) {
        super.a(i);
        this.h.a(eh.a((i < 400 || i >= 500) ? "network_timeout" : "rejected"));
    }

    @Override // com.applovin.impl.in
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.h.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.h.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.h.e());
        JsonUtils.putString(jSONObject, "ad_format", this.h.getFormat().getLabel());
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
