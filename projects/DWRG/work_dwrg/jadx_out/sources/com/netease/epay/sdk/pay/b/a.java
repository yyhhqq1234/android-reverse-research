package com.netease.epay.sdk.pay.b;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;
import org.json.JSONObject;

/* compiled from: PayResultBaseMsg.java */
/* loaded from: classes.dex */
public class a extends BaseMsg {
    public int a;
    public String b;

    public a(JSONObject jSONObject) {
        this.a = -100;
        if (jSONObject != null) {
            this.a = jSONObject.optInt("code");
            this.b = jSONObject.optString("message");
        }
    }

    public boolean a() {
        return this.a == 0;
    }
}
