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

/* compiled from: EpayRiskVoicePresenter.java */
/* loaded from: classes.dex */
public class b implements e.a {
    public String a;
    public String b;
    private e c;
    private NetCallback<SmsCode> d = new NetCallback<SmsCode>() { // from class: com.netease.epay.sdk.risk.a.b.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, SmsCode smsCode) {
            b.this.c.a("6位语音验证码", String.format("网易免费电话将会拨至：%s", b.this.a), false, true);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse resp) {
            ToastUtil.show(b.this.c.getActivity(), resp.retdesc);
            b.this.c.a("6位语音验证码", String.format("网易免费电话将会拨至：%s", b.this.a), false, false);
            return true;
        }
    };

    public b(e eVar) {
        this.c = eVar;
        if (eVar.getArguments() != null) {
            this.a = eVar.getArguments().getString("epaysdk_sms_mobile");
            this.b = eVar.getArguments().getString("epaysdk_sms_riskType");
        } else {
            this.a = BaseData.accountMobile;
        }
    }

    @Override // com.netease.epay.sdk.risk.ui.e.a
    public void a() {
        HttpClient.startRequest(BaseConstants.riskSmsUrl, new JsonBuilder().addBizType().build(), false, this.c.getActivity(), (INetCallback) this.d);
    }

    @Override // com.netease.epay.sdk.risk.ui.e.a
    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(this.b, str);
            jSONObject.put("challengeInfo", jSONObject2);
            this.c.a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
