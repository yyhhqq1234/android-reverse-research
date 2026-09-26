package com.netease.epay.sdk.psw;

import android.content.Context;
import android.support.annotation.Keep;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ResetPwdController extends BaseController {
    private boolean a;
    private int b;

    @Keep
    public ResetPwdController(JSONObject params, ControllerCallback callback) {
        super(params, callback);
        this.a = params.getBoolean("isNeedActivity");
        this.b = params.getInt("type");
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        ControllerRouter.route(RegisterCenter.CARD, context, ControllerJsonBuilder.getCardJson(true, this.b == 2 ? 6 : 7, null), new ControllerCallback() { // from class: com.netease.epay.sdk.psw.ResetPwdController.1
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                if (controllerResult.isSuccess) {
                    controllerResult.activity.finish();
                    if (controllerResult.otherParams.optBoolean("isSetPsw")) {
                        ResetPwdController.this.deal(new BaseEvent("000000", null, null));
                        return;
                    } else {
                        ControllerRouter.route(RegisterCenter.SET_PWD, controllerResult.activity, ControllerJsonBuilder.getSetPwdJson(false, false, false, true), new ControllerCallback() { // from class: com.netease.epay.sdk.psw.ResetPwdController.1.1
                            @Override // com.netease.epay.sdk.controller.ControllerCallback
                            public void dealResult(ControllerResult result) {
                                ResetPwdController.this.deal(new BaseEvent(result.code, result.msg, null));
                            }
                        });
                        return;
                    }
                }
                ResetPwdController.this.deal(new BaseEvent(controllerResult.code, controllerResult.msg, null));
            }
        });
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    public void deal(BaseEvent event) {
        if (this.callback == null) {
            if (CoreData.bizType != 903 && CoreData.bizType != 902) {
                event.isSuccess = false;
                event.code = ErrorCode.PSW_ERROR_LOCK;
                event.msg = "密码输入太多次，账户已被锁定";
            }
            exit(event);
            return;
        }
        if (!this.a && event.activity != null) {
            event.activity.finish();
            event.activity = null;
        }
        if (this.callback != null) {
            this.callback.sendResult(new ControllerResult(event.code, event.msg, null, event.activity));
        }
    }
}
