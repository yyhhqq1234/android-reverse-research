package com.netease.epay.sdk.rsa;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.rsa.ui.ManageRSAActivity;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ManageRSAController extends BaseController {
    private String a;

    @Keep
    public ManageRSAController(JSONObject obj, ControllerCallback callBack) {
        super(obj, callBack);
        if (obj != null) {
            this.a = obj.optString(BaseConstants.JSON_KEY_PAY_RCA_SIGN_DATA);
        }
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        if (!TextUtils.isEmpty(this.a)) {
            String a = a.a(context, this.a, BaseData.accountId);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(BaseConstants.JSON_KEY_PAY_RCA_SIGN_DATA, a);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (TextUtils.isEmpty(a)) {
                this.callback.sendResult(new ControllerResult(ErrorCode.FAIL_SDK_ERROR_CODE, null, null, null));
                return;
            } else {
                this.callback.sendResult(new ControllerResult("000000", null, jSONObject, null));
                return;
            }
        }
        if (context != null) {
            context.startActivity(new Intent(context, (Class<?>) ManageRSAActivity.class));
        }
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    public void deal(BaseEvent event) {
        if (this.callback == null) {
            exit(event);
        } else {
            this.callback.sendResult(new ControllerResult(event.code, event.msg, null, event.activity));
        }
    }
}
