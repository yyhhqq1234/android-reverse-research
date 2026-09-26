package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.widget.TextView;
import com.netease.download.Const;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.EACSuccessEvent;
import com.netease.epay.sdk.base.model.AddCardInfo;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.model.PayingResponse;
import com.netease.epay.sdk.pay.ui.j;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AddCardPay3SmsPresenter.java */
/* loaded from: classes.dex */
public class g extends d {
    SendSmsButton m;
    TextView n;
    private f o;
    private NetCallback<AddCardInfo> p;
    private com.netease.epay.sdk.pay.b<PayingResponse> q;
    private NetCallback<Object> r;

    public g(c cVar) {
        super(cVar);
        this.p = new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.pay.ui.card.g.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
                if (g.this.c != null && g.this.c.length() > 10) {
                    g.this.n.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(g.this.c));
                }
                g.this.d = addCardInfo.quickPayId;
                g.this.e = addCardInfo.chargeId;
                g.this.f = addCardInfo.attach;
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                return new com.netease.epay.sdk.pay.a.a().a(response, g.this.k);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
                g.this.n.setText("绑定银行卡需要短信确认");
                ToastUtil.show(activity, response.retdesc);
                g.this.m.resetColdTime();
            }
        };
        this.q = new com.netease.epay.sdk.pay.b<PayingResponse>() { // from class: com.netease.epay.sdk.pay.ui.card.g.2
            @Override // com.netease.epay.sdk.pay.b, com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, PayingResponse payingResponse) {
                EventBusUtil.post(new EACSuccessEvent(g.this.d));
                if (g.this.o.a(fragmentActivity, g.this.r)) {
                    com.netease.epay.sdk.pay.b.a = payingResponse;
                } else {
                    super.success(fragmentActivity, payingResponse);
                }
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                return new com.netease.epay.sdk.pay.a.a(g.this.d).a(response, g.this.k);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.netease.epay.sdk.pay.b, com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
                if (PayConstants.PAY_BANK_FAIL.equals(response.retcode)) {
                    if (response.result != 0 && (response.result instanceof PayingResponse)) {
                        Bundle bundle = new Bundle();
                        bundle.putString("amount", ((PayingResponse) response.result).orderAmount);
                        bundle.putString("bank", ((PayingResponse) response.result).refundPageInfo.bankName);
                        bundle.putString("cardNo", ((PayingResponse) response.result).refundPageInfo.cardNo);
                        bundle.putString(Const.KEY_TIME, ((PayingResponse) response.result).refundPageInfo.refundSec);
                        bundle.putString("msg", response.retdesc);
                        LogicUtil.showFragmentInActivity(j.a(bundle), activity);
                        return;
                    }
                    return;
                }
                if (g.this.l != null && !g.this.l.isVisible()) {
                    g.this.l.a();
                }
                LogicUtil.showFragmentInActivity(OnlyMessageFragment.getInstance(response.retcode, response.retdesc, null), activity);
            }
        };
        this.r = new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.ui.card.g.3
            @Override // com.netease.epay.sdk.base.network.INetCallback
            public void success(FragmentActivity activity, Object o) {
                BaseData.hasShortPwd = true;
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                super.onResponseArrived();
                g.this.q.a(g.this.k);
                g.this.o.a();
            }
        };
    }

    @Override // com.netease.epay.sdk.pay.ui.card.d
    public void a(Bundle bundle) {
        super.a(bundle);
        this.o = new f(bundle);
    }

    @Override // com.netease.epay.sdk.pay.ui.card.d
    public void a() {
        this.m = (SendSmsButton) this.k.findViewById(R.id.btn_send_sms);
        this.n = (TextView) this.k.findViewById(R.id.tv_addcardsms_top_info);
        this.o.a(this.l, this.m, this);
        if (!this.o.a && this.c != null && this.c.length() > 10) {
            this.n.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(this.c));
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.card.d
    public void a(String str) {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "bizType", "order");
        LogicUtil.jsonPut(build, "authCode", str);
        LogicUtil.jsonPut(build, "quickPayId", this.d);
        LogicUtil.jsonPut(build, "chargeId", this.e);
        LogicUtil.jsonPut(build, "attach", this.f);
        LogicUtil.jsonPut(build, "hongbaoIds", PayConstants.getSelectedRedPaperId());
        LogicUtil.jsonPut(build, "voucherId", PayConstants.getSelectedVoucherId());
        LogicUtil.jsonPut(build, "promotionId", PayConstants.getSelectedPromotionId());
        LogicUtil.jsonPut(build, "payAdditionalInfo", BaseData.payAdditionalInfo);
        HttpClient.startRequest(PayConstants.addCardPayUrl, build, false, (FragmentActivity) this.k, (INetCallback) this.q);
    }

    @Override // com.netease.epay.sdk.base.view.SendSmsButton.ISendSmsListener
    public void sendSms() {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "bizType", "order");
        LogicUtil.jsonPut(build, "bankId", this.a);
        LogicUtil.jsonPut(build, "cardNo", this.b);
        LogicUtil.jsonPut(build, "mobilePhone", this.c);
        if (!TextUtils.isEmpty(this.h)) {
            LogicUtil.jsonPut(build, "cardAccountName", this.h);
        }
        if (!TextUtils.isEmpty(this.g)) {
            LogicUtil.jsonPut(build, "certNo", this.g);
        }
        if (!TextUtils.isEmpty(this.j)) {
            LogicUtil.jsonPut(build, "cvv2", this.j);
        }
        if (!TextUtils.isEmpty(this.i)) {
            LogicUtil.jsonPut(build, "validDate", this.i);
        }
        LogicUtil.jsonPut(build, "hongbaoIds", PayConstants.getSelectedRedPaperId());
        LogicUtil.jsonPut(build, "voucherId", PayConstants.getSelectedVoucherId());
        LogicUtil.jsonPut(build, "promotionId", PayConstants.getSelectedPromotionId());
        LogicUtil.jsonPut(build, "setedShortPwd", Boolean.valueOf(this.o.b));
        LogicUtil.jsonPut(build, "payAdditionalInfo", BaseData.payAdditionalInfo);
        HttpClient.startRequest(PayConstants.addCardInfoUrl, build, false, (FragmentActivity) this.k, (INetCallback) this.p);
    }

    @Override // com.netease.epay.sdk.pay.ui.card.d
    public void a(ControllerResult controllerResult) {
        super.a(controllerResult);
        if (controllerResult.isSuccess) {
            String str = "";
            try {
                str = controllerResult.otherParams.getString("psw");
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.o.a(this.m, str);
        }
    }
}
