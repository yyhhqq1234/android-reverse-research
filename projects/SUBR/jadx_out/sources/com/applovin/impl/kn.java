package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class kn extends mn {
    private final com.applovin.impl.sdk.ad.b h;
    private final AppLovinAdRewardListener i;

    @Override // com.applovin.impl.in
    public String f() {
        return "2.0/vr";
    }

    public kn(com.applovin.impl.sdk.ad.b bVar, AppLovinAdRewardListener appLovinAdRewardListener, com.applovin.impl.sdk.j jVar) {
        super("TaskValidateAppLovinReward", jVar);
        this.h = bVar;
        this.i = appLovinAdRewardListener;
    }

    @Override // com.applovin.impl.mn
    protected void a(eh ehVar) {
        this.h.a(ehVar);
        String strB = ehVar.b();
        Map<String, String> mapA = ehVar.a();
        if (strB.equals("accepted")) {
            this.i.userRewardVerified(this.h, mapA);
            return;
        }
        if (strB.equals("quota_exceeded")) {
            this.i.userOverQuota(this.h, mapA);
        } else if (strB.equals("rejected")) {
            this.i.userRewardRejected(this.h, mapA);
        } else {
            this.i.validationRequestFailed(this.h, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    @Override // com.applovin.impl.mn
    protected boolean h() {
        return this.h.S0();
    }

    @Override // com.applovin.impl.in
    protected void a(int i) {
        String str;
        super.a(i);
        if (i >= 400 && i < 500) {
            this.i.userRewardRejected(this.h, Collections.emptyMap());
            str = "rejected";
        } else {
            this.i.validationRequestFailed(this.h, i);
            str = "network_timeout";
        }
        this.h.a(eh.a(str));
    }

    @Override // com.applovin.impl.in
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "zone_id", this.h.getAdZone().e());
        String clCode = this.h.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }
}
