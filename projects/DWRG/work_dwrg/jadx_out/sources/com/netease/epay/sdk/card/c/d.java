package com.netease.epay.sdk.card.c;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.model.AddCardInfo;
import com.netease.epay.sdk.base.model.SignCardData;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.R;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.json.JSONObject;

/* compiled from: ForgetPwdHasCards3SmsPresenter.java */
/* loaded from: classes.dex */
public class d extends a {
    TextView m;

    public d(com.netease.epay.sdk.card.ui.c cVar) {
        super(cVar);
    }

    @Override // com.netease.epay.sdk.card.c.a
    public void a() {
        if (this.k != null) {
            this.m = (TextView) this.k.findViewById(R.id.tv_addcardsms_top_info);
            if (this.c != null && this.c.length() > 10 && this.m != null) {
                this.m.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(this.c));
            }
            SendSmsButton sendSmsButton = (SendSmsButton) this.k.findViewById(R.id.btn_send_sms);
            sendSmsButton.sendSms(false);
            sendSmsButton.setListener(this);
        }
    }

    @Override // com.netease.epay.sdk.card.c.a
    public void a(String str) {
        JSONObject build = AddOrVerifyCardController.a().build();
        LogicUtil.jsonPut(build, "authCode", str);
        LogicUtil.jsonPut(build, "quickPayId", this.d);
        LogicUtil.jsonPut(build, "attach", this.f);
        HttpClient.startRequest("validate_quickPay_authcode.htm", build, false, (FragmentActivity) this.k, (INetCallback) new NetCallback<SignCardData>() { // from class: com.netease.epay.sdk.card.c.d.1
            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                d.this.l.a();
            }

            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, SignCardData signCardData) {
                com.netease.epay.sdk.card.b.a aVar = new com.netease.epay.sdk.card.b.a("000000", null, fragmentActivity);
                aVar.c = true;
                aVar.a = d.this.d;
                AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
                if (addOrVerifyCardController != null) {
                    addOrVerifyCardController.deal(aVar);
                }
            }
        });
    }

    @Override // com.netease.epay.sdk.base.view.SendSmsButton.ISendSmsListener
    public void sendSms() {
        JSONObject build = AddOrVerifyCardController.a().build();
        LogicUtil.jsonPut(build, "bankId", this.a);
        if (!TextUtils.isEmpty(this.b)) {
            LogicUtil.jsonPut(build, "cardNo", this.b);
        }
        LogicUtil.jsonPut(build, "quickPayId", this.d);
        LogicUtil.jsonPut(build, "mobilePhone", this.c);
        LogicUtil.jsonPut(build, "certNo", this.g);
        LogicUtil.jsonPut(build, "cardAccountName", this.h);
        if (!TextUtils.isEmpty(this.j)) {
            LogicUtil.jsonPut(build, "validDate", this.i);
            LogicUtil.jsonPut(build, "cvv2", this.j);
        }
        HttpClient.startRequest("send_validate_quickPay_authcode.htm", build, false, (FragmentActivity) this.k, (INetCallback) new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.card.c.d.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
                if (!TextUtils.isEmpty(addCardInfo.quickPayId)) {
                    d.this.d = addCardInfo.quickPayId;
                }
                d.this.f = addCardInfo.attach;
                d.this.m.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(d.this.c));
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                d.this.m.setText("绑定银行卡需要短信确认");
                ToastUtil.show(d.this.k, response.retdesc);
                return true;
            }
        });
    }
}
