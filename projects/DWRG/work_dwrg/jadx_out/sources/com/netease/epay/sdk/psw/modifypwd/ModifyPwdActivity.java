package com.netease.epay.sdk.psw.modifypwd;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.psw.ModifyPwdController;
import com.netease.epay.sdk.psw.R;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ModifyPwdActivity extends SdkActivity {
    private GridPasswordView b;
    private NetCallback c = new NetCallback<Object>() { // from class: com.netease.epay.sdk.psw.modifypwd.ModifyPwdActivity.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        public void success(final FragmentActivity activity, Object o) {
            ControllerRouter.route(RegisterCenter.SET_PWD, activity, ControllerJsonBuilder.getSetPwdJson(false, false, false, true), new ControllerCallback() { // from class: com.netease.epay.sdk.psw.modifypwd.ModifyPwdActivity.1.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult result) {
                    activity.finish();
                    ModifyPwdController modifyPwdController = (ModifyPwdController) ControllerRouter.getController(RegisterCenter.MODIFY_PWD);
                    if (modifyPwdController != null) {
                        modifyPwdController.deal(new BaseEvent(result.code, result.msg));
                    }
                }
            });
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onUIChanged(FragmentActivity activity, NewBaseResponse resp) {
            if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(resp.retcode)) {
                ModifyPwdActivity.this.b.clearPassword();
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
            super.onUnhandledFail(activity, response);
            ModifyPwdActivity.this.b.clearPassword();
        }
    };
    EpaySdkPasswordChangedListener a = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.psw.modifypwd.ModifyPwdActivity.2
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(String psw) {
            JSONObject build = new JsonBuilder().addBizType().build();
            LogicUtil.jsonPut(build, "password", DigestUtil.encode(psw));
            HttpClient.startRequest(BaseConstants.validatePasswordUrl, build, false, (FragmentActivity) ModifyPwdActivity.this, (INetCallback) ModifyPwdActivity.this.c);
        }
    };

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_verify_pwd);
        this.b = (GridPasswordView) findViewById(R.id.et_setshorty_pwd);
        this.b.setOnPasswordChangedListener(this.a);
        if (!UiUtil.isLandScape(getResources())) {
            this.b.showKeyBoard();
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void back(View view) {
        super.back(view);
        ModifyPwdController modifyPwdController = (ModifyPwdController) ControllerRouter.getController(RegisterCenter.MODIFY_PWD);
        if (modifyPwdController != null) {
            modifyPwdController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT));
        }
    }
}
