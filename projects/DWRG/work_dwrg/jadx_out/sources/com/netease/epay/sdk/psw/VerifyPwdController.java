package com.netease.epay.sdk.psw;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Keep;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.psw.verifypwd.VerifyPwdActivity;
import com.netease.epay.sdk.psw.verifypwd.f;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VerifyPwdController extends BaseController<f> {
    public String a;
    private int b;
    private int c;

    @Keep
    public VerifyPwdController(JSONObject obj, ControllerCallback callback) {
        super(obj, callback);
        this.b = obj.getInt("pwdType");
        this.c = obj.getInt("validateType");
        this.a = obj.optString(BaseConstants.NET_KEY_uuid);
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        Intent intent = new Intent(context, (Class<?>) VerifyPwdActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt("pwdtype", this.b);
        bundle.putInt("validate_type", this.c);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deal(f fVar) {
        if (ErrorCode.PSW_ERROR_LOCK.equals(fVar.code) && !fVar.a) {
            ControllerRouter.route(RegisterCenter.RESET_PWD, fVar.activity, ControllerJsonBuilder.getResetPwdJson(false, 1), null);
            return;
        }
        if (this.callback == null) {
            exit(fVar);
            return;
        }
        fVar.activity.finish();
        if (this.callback != null) {
            this.callback.sendResult(new ControllerResult(fVar.code, fVar.msg, null, fVar.activity));
        }
    }
}
