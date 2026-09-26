package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.EACSuccessEvent;
import com.netease.epay.sdk.base.model.AddCardInfo;
import com.netease.epay.sdk.base.model.SignCardData;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: OnlyAddCard3SmsPresenter.java */
/* loaded from: classes.dex */
public class h extends d {
    SendSmsButton m;
    TextView n;
    private f o;
    private SignCardData p;
    private NetCallback<SignCardData> q;
    private NetCallback<Object> r;
    private NetCallback<AddCardInfo> s;

    public h(c cVar) {
        super(cVar);
        this.q = new NetCallback<SignCardData>() { // from class: com.netease.epay.sdk.pay.ui.card.h.1
            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                h.this.l.a();
            }

            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, SignCardData signCardData) {
                h.this.p = signCardData;
                EventBusUtil.post(new EACSuccessEvent(signCardData.cardInfo.getBankQuickPayId()));
                if (!h.this.o.a(fragmentActivity, h.this.r)) {
                    h.this.a(signCardData);
                }
            }
        };
        this.r = new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.ui.card.h.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            public void success(FragmentActivity activity, Object o) {
                BaseData.hasShortPwd = true;
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                super.onResponseArrived();
                h.this.a(h.this.p);
                h.this.o.a();
            }
        };
        this.s = new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.pay.ui.card.h.3
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
                if (!TextUtils.isEmpty(addCardInfo.quickPayId)) {
                    h.this.d = addCardInfo.quickPayId;
                }
                h.this.f = addCardInfo.attach;
                h.this.n.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(h.this.c));
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                h.this.n.setText("绑定银行卡需要短信确认");
                ToastUtil.show(h.this.k, response.retdesc);
                h.this.m.resetColdTime();
                return true;
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
        JSONObject build = new JsonBuilder().addBizType().build();
        LogicUtil.jsonPut(build, "bizType", "order");
        LogicUtil.jsonPut(build, "authCode", str);
        LogicUtil.jsonPut(build, "quickPayId", this.d);
        LogicUtil.jsonPut(build, "attach", this.f);
        LogicUtil.jsonPut(build, "hongbaoIds", PayConstants.getSelectedRedPaperId());
        LogicUtil.jsonPut(build, "voucherId", PayConstants.getSelectedVoucherId());
        LogicUtil.jsonPut(build, "promotionId", PayConstants.getSelectedPromotionId());
        HttpClient.startRequest(BaseConstants.signCardUrl, build, false, (FragmentActivity) this.k, (INetCallback) this.q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SignCardData signCardData) {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null && signCardData.cardInfo != null && "USEABLE".equals(signCardData.cardInfo.useable)) {
            payController.a = signCardData.cardInfo.getBankQuickPayId();
        }
        if (this.l != null) {
            this.l.getActivity().finish();
        }
        PayingActivity.a(this.k);
    }

    @Override // com.netease.epay.sdk.base.view.SendSmsButton.ISendSmsListener
    public void sendSms() {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "bizType", "order");
        LogicUtil.jsonPut(build, "bankId", this.a);
        if (!TextUtils.isEmpty(this.b)) {
            LogicUtil.jsonPut(build, "cardNo", this.b);
        }
        LogicUtil.jsonPut(build, "quickPayId", this.d);
        LogicUtil.jsonPut(build, "mobilePhone", this.c);
        LogicUtil.jsonPut(build, "certNo", this.g);
        LogicUtil.jsonPut(build, "cardAccountName", this.h);
        if (!TextUtils.isEmpty(this.j)) {
            LogicUtil.jsonPut(build, "cvv2", this.j);
        }
        if (!TextUtils.isEmpty(this.i)) {
            LogicUtil.jsonPut(build, "validDate", this.i);
        }
        LogicUtil.jsonPut(build, "setedShortPwd", Boolean.valueOf(this.o.b));
        HttpClient.startRequest(BaseConstants.signCardSmsUrl, build, false, (FragmentActivity) this.k, (INetCallback) this.s);
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
