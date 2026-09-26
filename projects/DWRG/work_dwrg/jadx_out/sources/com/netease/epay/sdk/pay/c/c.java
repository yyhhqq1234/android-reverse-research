package com.netease.epay.sdk.pay.c;

import com.netease.epay.sdk.pay.ui.m;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EpayPayPwdPresenter.java */
/* loaded from: classes.dex */
public class c implements m.a {
    private m a;

    public c(m mVar) {
        this.a = mVar;
    }

    @Override // com.netease.epay.sdk.pay.ui.m.a
    public void a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("challengeType", "paypwd");
            jSONObject.put("payPwd", str);
            jSONObject.put("hasShortPwd", false);
            jSONObject.put("bizType", "order");
            this.a.a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
