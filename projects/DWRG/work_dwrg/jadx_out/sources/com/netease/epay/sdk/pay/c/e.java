package com.netease.epay.sdk.pay.c;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.model.SmsCode;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.ui.p;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EpayPaySmsPresenter.java */
/* loaded from: classes.dex */
public class e implements p.a {
    private String a;
    private String b;
    private String c;
    private p d;
    private NetCallback<SmsCode> e = new NetCallback<SmsCode>() { // from class: com.netease.epay.sdk.pay.c.e.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, SmsCode smsCode) {
            e.this.a = smsCode.chargeId;
            e.this.b = smsCode.attach;
            e.this.d.a(true, "已发送至:" + e.this.c);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse response) {
            e.this.d.a(false, "请先获取验证码");
            ToastUtil.show(e.this.d.getActivity(), response.retdesc);
            return true;
        }
    };

    public e(p pVar) {
        this.d = pVar;
    }

    @Override // com.netease.epay.sdk.pay.ui.p.a
    public void a() {
        if (BaseData.hasShortPwd) {
            this.d.e();
            this.d.d();
        }
        this.d.a(CoreData.lastCheckIndex >= 0);
    }

    @Override // com.netease.epay.sdk.pay.ui.p.a
    public void a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("challengeType", BaseConstants.RISK_TYEP_SMS);
            if (CoreData.lastCheckIndex >= 0) {
                jSONObject.put("chargeId", this.a);
                jSONObject.put("attach", this.b);
            }
            jSONObject.put("authcode", str);
            jSONObject.put("hasShortPwd", false);
            jSONObject.put("bizType", "order");
            this.d.a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.p.a
    public void b() {
        JSONObject build = new JsonBuilder().addBizType().build();
        if (CoreData.lastCheckIndex < 0) {
            LogicUtil.jsonPut(build, "payMethod", PayConstants.PAY_METHOD_BALABCE);
            this.c = BaseData.accountMobile;
        } else {
            LogicUtil.jsonPut(build, "payMethod", PayConstants.PAY_METHOD_QUICKPAY);
            LogicUtil.jsonPut(build, "quickPayId", Card.getSelectedCardBankQuickPayId(CoreData.lastCheckIndex));
            this.c = Card.getSelectedCardMobile(CoreData.lastCheckIndex);
        }
        LogicUtil.jsonPut(build, "hongbaoIds", PayConstants.getSelectedRedPaperId());
        LogicUtil.jsonPut(build, "voucherId", PayConstants.getSelectedVoucherId());
        LogicUtil.jsonPut(build, "promotionId", PayConstants.getSelectedPromotionId());
        LogicUtil.jsonPut(build, "payAdditionalInfo", BaseData.payAdditionalInfo);
        HttpClient.startRequest(PayConstants.sendPayAuthCodeUrl, build, false, this.d.getActivity(), (INetCallback) this.e);
    }
}
