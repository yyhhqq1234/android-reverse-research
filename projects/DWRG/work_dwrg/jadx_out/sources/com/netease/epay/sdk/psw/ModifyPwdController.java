package com.netease.epay.sdk.psw;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.psw.modifypwd.ModifyPwdActivity;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ModifyPwdController extends BaseController {
    @Keep
    public ModifyPwdController(@NonNull JSONObject params, ControllerCallback callback) {
        super(params, callback);
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ModifyPwdActivity.class));
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    public void deal(BaseEvent event) {
        if (this.callback == null) {
            exit(event);
        } else {
            this.callback.sendResult(new ControllerResult(event.code, event.msg));
        }
    }
}
