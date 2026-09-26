package com.netease.epay.sdk.psw.verifypwd;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.psw.VerifyPwdController;
import com.netease.epay.sdk.psw.verifypwd.e;
import org.json.JSONObject;

/* compiled from: SdkInnerVerifyPwdBasePresenter.java */
/* loaded from: classes.dex */
public class c implements e.a {
    public e a;
    protected NetCallback<Object> b = new NetCallback<Object>() { // from class: com.netease.epay.sdk.psw.verifypwd.c.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        public void success(FragmentActivity activity, Object o) {
            c.this.a.dismissAllowingStateLoss();
            VerifyPwdController verifyPwdController = (VerifyPwdController) ControllerRouter.getController(RegisterCenter.VERIFY_PWD);
            if (verifyPwdController != null) {
                verifyPwdController.deal(new f("000000", null, c.this.c));
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
            ToastUtil.show(activity, response.retdesc);
            c.this.a.b();
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onUIChanged(FragmentActivity activity, NewBaseResponse response) {
            if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                c.this.c.a();
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onLaterDeal(FragmentActivity activity, NewBaseResponse response) {
            if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                c.this.c.c();
            }
        }
    };
    private VerifyPwdActivity c;

    public c(e eVar) {
        this.a = eVar;
        this.c = (VerifyPwdActivity) eVar.getActivity();
    }

    @Override // com.netease.epay.sdk.psw.verifypwd.e.a
    public void a(String str) {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "password", str);
        HttpClient.startRequest(BaseConstants.validatePasswordUrl, build, false, this.a.getActivity(), (INetCallback) this.b);
    }
}
