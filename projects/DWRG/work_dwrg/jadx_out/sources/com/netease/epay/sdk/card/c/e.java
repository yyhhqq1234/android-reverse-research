package com.netease.epay.sdk.card.c;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.EACSuccessEvent;
import com.netease.epay.sdk.base.model.AddCardInfo;
import com.netease.epay.sdk.base.model.SignCardData;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.R;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: OnlyAddCard3SmsPresenter.java */
/* loaded from: classes.dex */
public class e extends a {
    SendSmsButton m;
    TextView n;
    private c o;

    public e(com.netease.epay.sdk.card.ui.c cVar) {
        super(cVar);
    }

    @Override // com.netease.epay.sdk.card.c.a
    public void a(Bundle bundle) {
        super.a(bundle);
        this.o = new c(bundle);
    }

    @Override // com.netease.epay.sdk.card.c.a
    public void a() {
        this.m = (SendSmsButton) this.k.findViewById(R.id.btn_send_sms);
        this.n = (TextView) this.k.findViewById(R.id.tv_addcardsms_top_info);
        this.o.a(this.l, this.m, this);
        if (!this.o.a && this.c != null && this.c.length() > 10) {
            this.n.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(this.c));
        }
    }

    @Override // com.netease.epay.sdk.card.c.a
    public void a(String str) {
        JSONObject build = AddOrVerifyCardController.a().build();
        LogicUtil.jsonPut(build, "authCode", str);
        LogicUtil.jsonPut(build, "quickPayId", this.d);
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null && !TextUtils.isEmpty(addOrVerifyCardController.a)) {
            LogicUtil.jsonPut(build, BaseConstants.NET_KEY_uuid, addOrVerifyCardController.a);
        }
        LogicUtil.jsonPut(build, "attach", this.f);
        HttpClient.startRequest(BaseConstants.signCardUrl, build, false, (FragmentActivity) this.k, (INetCallback) new NetCallback<SignCardData>() { // from class: com.netease.epay.sdk.card.c.e.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, SignCardData signCardData) {
                EventBusUtil.post(new EACSuccessEvent(signCardData.cardInfo.getBankQuickPayId()));
                NewBaseResponse<SignCardData> newBaseResponse = new NewBaseResponse<>("000000", null);
                newBaseResponse.result = signCardData;
                e.this.o.a(fragmentActivity, newBaseResponse);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                if (ErrorCode.alertErrorList.contains(response.retcode)) {
                    LogicUtil.showFragmentInActivity(OnlyMessageFragment.getInstance(response.retdesc), e.this.k);
                    e.this.l.a();
                    return true;
                }
                ToastUtil.show(e.this.k, response.retdesc);
                e.this.l.a();
                return true;
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
            LogicUtil.jsonPut(build, "cvv2", this.j);
        }
        if (!TextUtils.isEmpty(this.i)) {
            LogicUtil.jsonPut(build, "validDate", this.i);
        }
        LogicUtil.jsonPut(build, "setedShortPwd", Boolean.valueOf(this.o.b));
        HttpClient.startRequest(BaseConstants.signCardSmsUrl, build, false, (FragmentActivity) this.k, (INetCallback) new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.card.c.e.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
                if (!TextUtils.isEmpty(addCardInfo.quickPayId)) {
                    e.this.d = addCardInfo.quickPayId;
                }
                e.this.f = addCardInfo.attach;
                e.this.n.setText("绑定银行卡需要短信确认\n验证码已发送至手机号：" + LogicUtil.formatPhoneNumber(e.this.c));
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                e.this.n.setText("绑定银行卡需要短信确认");
                ToastUtil.show(e.this.k, response.retdesc);
                e.this.m.resetColdTime();
                return true;
            }
        });
    }

    @Override // com.netease.epay.sdk.card.c.a
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
