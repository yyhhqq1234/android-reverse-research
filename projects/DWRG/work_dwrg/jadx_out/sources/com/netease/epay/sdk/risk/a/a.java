package com.netease.epay.sdk.risk.a;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.model.SmsCode;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.risk.ui.e;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EpayRiskSmsPresenter.java */
/* loaded from: classes.dex */
public class a implements e.a {
    public String a;
    private e b;
    private NetCallback<SmsCode> c = new NetCallback<SmsCode>() { // from class: com.netease.epay.sdk.risk.a.a.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, SmsCode smsCode) {
            a.this.b.a("短信验证码", "验证码已发送至手机号:" + a.this.a, true, true);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse response) {
            a.this.b.a("短信验证码", "短信验证码将发至:" + a.this.a, false, false);
            ToastUtil.show(a.this.b.getActivity(), response.retdesc);
            return true;
        }
    };

    public a(e eVar) {
        this.b = eVar;
        if (eVar.getArguments() != null) {
            this.a = eVar.getArguments().getString("epaysdk_sms_mobile");
        } else {
            this.a = BaseData.accountMobile;
        }
    }

    @Override // com.netease.epay.sdk.risk.ui.e.a
    public void a() {
        HttpClient.startRequest(BaseConstants.riskSmsUrl, new JsonBuilder().addBizType().build(), false, this.b.getActivity(), (INetCallback) this.c);
    }

    @Override // com.netease.epay.sdk.risk.ui.e.a
    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(BaseConstants.RISK_TYEP_SMS, str);
            jSONObject.put("challengeInfo", jSONObject2);
            this.b.a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
