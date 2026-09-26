package com.netease.epay.sdk.psw.verifypwd;

import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.psw.VerifyPwdController;
import org.json.JSONObject;

/* compiled from: AppVerifyPwdBasePresenter.java */
/* loaded from: classes.dex */
public class a extends c {
    public a(e eVar) {
        super(eVar);
    }

    @Override // com.netease.epay.sdk.psw.verifypwd.c, com.netease.epay.sdk.psw.verifypwd.e.a
    public void a(String str) {
        JSONObject build = new JsonBuilder().addBizType().build();
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, BaseConstants.NET_KEY_validContent, str);
        if (this.a instanceof d) {
            LogicUtil.jsonPut(build, BaseConstants.NET_KEY_pwdValidItem, jSONObject);
        } else {
            LogicUtil.jsonPut(build, BaseConstants.NET_KEY_shortPwdValidItem, jSONObject);
        }
        VerifyPwdController verifyPwdController = (VerifyPwdController) ControllerRouter.getController(RegisterCenter.VERIFY_PWD);
        if (verifyPwdController != null) {
            LogicUtil.jsonPut(build, BaseConstants.NET_KEY_uuid, verifyPwdController.a);
        }
        HttpClient.startRequest(BaseConstants.SECURITY_VALIDATE, build, false, this.a.getActivity(), (INetCallback) this.b);
    }
}
