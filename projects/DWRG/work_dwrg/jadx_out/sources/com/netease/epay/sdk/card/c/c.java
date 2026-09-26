package com.netease.epay.sdk.card.c;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.model.SignCardData;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.json.JSONObject;

/* compiled from: AddCardMustSetPwdPresenter.java */
/* loaded from: classes.dex */
public class c {
    public boolean a;
    private String c = null;
    public boolean b = false;

    public c(Bundle bundle) {
        this.a = false;
        if (bundle != null) {
            this.a = bundle.getBoolean(BaseConstants.INTENT_ADDCARD_IS_MUST_SETPWD, false);
        }
    }

    public boolean a(final com.netease.epay.sdk.card.ui.c cVar, SendSmsButton sendSmsButton, SendSmsButton.ISendSmsListener iSendSmsListener) {
        if (this.a) {
            sendSmsButton.setListener(iSendSmsListener);
            sendSmsButton.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.card.c.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    c.this.a(cVar);
                }
            });
            a(cVar);
        } else {
            sendSmsButton.setListener(iSendSmsListener);
            sendSmsButton.sendSms(false);
        }
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.netease.epay.sdk.card.ui.c cVar) {
        ControllerRouter.route(RegisterCenter.SET_PWD, cVar.getActivity(), ControllerJsonBuilder.getSetPwdJson(true, true, true, false), new ControllerCallback() { // from class: com.netease.epay.sdk.card.c.c.2
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                cVar.a(controllerResult);
            }
        });
    }

    public boolean a(SendSmsButton sendSmsButton, String str) {
        if (this.a) {
            this.b = true;
            this.c = str;
            sendSmsButton.sendSms(true);
            sendSmsButton.setOnClickListener(sendSmsButton);
        }
        return this.a;
    }

    public boolean a(final FragmentActivity fragmentActivity, final NewBaseResponse<SignCardData> newBaseResponse) {
        if (this.a && !TextUtils.isEmpty(this.c)) {
            JSONObject build = AddOrVerifyCardController.a().build();
            LogicUtil.jsonPut(build, "shortPayPwd", this.c);
            LogicUtil.jsonPut(build, "shortPwdEncodeFactor", LogicUtil.getFactor());
            HttpClient.startRequest(BaseConstants.setPayPwdUrl, build, false, fragmentActivity, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.card.c.c.3
                @Override // com.netease.epay.sdk.base.network.INetCallback
                public void success(FragmentActivity activity, Object o) {
                    if (newBaseResponse != null) {
                        c.this.a(fragmentActivity, (NewBaseResponse<SignCardData>) newBaseResponse, new NewBaseResponse("000000", null));
                    }
                    c.this.a();
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    if (newBaseResponse != null) {
                        c.this.a(fragmentActivity, (NewBaseResponse<SignCardData>) newBaseResponse, response);
                    }
                    c.this.a();
                    return true;
                }
            });
        }
        if (!this.a) {
            a(fragmentActivity, newBaseResponse, (NewBaseResponse) null);
        }
        return this.a;
    }

    public void a() {
        this.c = null;
        this.b = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FragmentActivity fragmentActivity, NewBaseResponse<SignCardData> newBaseResponse, NewBaseResponse newBaseResponse2) {
        com.netease.epay.sdk.card.b.a aVar = new com.netease.epay.sdk.card.b.a(fragmentActivity, newBaseResponse.retcode, newBaseResponse.retdesc, newBaseResponse.result.cardInfo.getBankQuickPayId());
        aVar.c = false;
        if (newBaseResponse2 != null) {
            aVar.b = newBaseResponse2.isSuccess();
        }
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null) {
            addOrVerifyCardController.deal(aVar);
        }
    }
}
