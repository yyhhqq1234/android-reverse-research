package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import org.json.JSONObject;

/* compiled from: AddCardMustSetPwdPresenter.java */
/* loaded from: classes.dex */
public class f {
    public boolean a;
    private String c = null;
    public boolean b = false;

    public f(Bundle bundle) {
        this.a = false;
        if (bundle != null) {
            this.a = bundle.getBoolean(BaseConstants.INTENT_ADDCARD_IS_MUST_SETPWD, false);
        }
    }

    public boolean a(final c cVar, SendSmsButton sendSmsButton, SendSmsButton.ISendSmsListener iSendSmsListener) {
        if (sendSmsButton == null) {
            return this.a;
        }
        if (this.a) {
            sendSmsButton.setListener(iSendSmsListener);
            sendSmsButton.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.card.f.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    f.this.a(cVar);
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
    public void a(final c cVar) {
        ControllerRouter.route(RegisterCenter.SET_PWD, cVar.getActivity(), ControllerJsonBuilder.getSetPwdJson(true, true, true, false), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.ui.card.f.2
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

    public boolean a(FragmentActivity fragmentActivity, NetCallback<Object> netCallback) {
        if (this.a && !TextUtils.isEmpty(this.c)) {
            JSONObject build = new JsonBuilder().addBizType().build();
            LogicUtil.jsonPut(build, "shortPayPwd", this.c);
            LogicUtil.jsonPut(build, "shortPwdEncodeFactor", LogicUtil.getFactor());
            HttpClient.startRequest(BaseConstants.setPayPwdUrl, build, false, fragmentActivity, (INetCallback) netCallback);
        }
        return this.a;
    }

    public void a() {
        this.c = null;
        this.b = false;
    }
}
