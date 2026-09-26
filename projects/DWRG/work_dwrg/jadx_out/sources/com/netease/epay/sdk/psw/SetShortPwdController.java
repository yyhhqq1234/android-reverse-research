package com.netease.epay.sdk.psw;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.DelayedTask;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.psw.setpwd.SetPwdActivity;
import com.netease.epay.sdk.psw.setpwd.SetPwdFragmentActivity;
import com.netease.epay.sdk.psw.setpwd.a;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SetShortPwdController extends BaseController<a> {
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private FragmentActivity e;
    private String f;
    private String g;
    private NetCallback h;

    @Keep
    public SetShortPwdController(@NonNull JSONObject params, ControllerCallback callback) {
        super(params, callback);
        this.h = new NetCallback<Object>() { // from class: com.netease.epay.sdk.psw.SetShortPwdController.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            public void success(FragmentActivity activity, Object o) {
                SetShortPwdController.this.a("000000", "设置支付密码成功");
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
                super.onUnhandledFail(activity, response);
                SetShortPwdController.this.a(response.retcode, response.retdesc);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onRiskBlock(FragmentActivity activity, NewBaseResponse response) {
                SetShortPwdController.this.a(response.retcode, response.retdesc);
            }
        };
        this.a = params.getBoolean("isNeedPsw");
        this.b = params.getBoolean("isForced");
        this.c = params.getBoolean("isFragment");
        this.d = params.getBoolean("isForgetPwd");
        this.g = params.optString(BaseConstants.KEY_QVHUA_BTN_STRING);
        this.f = params.optString(BaseConstants.KEY_SPP_EXIT_WARMING_INFOS);
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        if (this.c) {
            LogicUtil.clearAllFragments((SdkActivity) context);
            Bundle bundle = new Bundle();
            bundle.putBoolean("is_forced", this.b);
            JumpUtil.go2Activity(context, SetPwdFragmentActivity.class, bundle);
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(BaseConstants.KEY_SPP_EXIT_WARMING_INFOS, this.f);
        bundle2.putString(BaseConstants.KEY_QVHUA_BTN_STRING, this.g);
        JumpUtil.go2Activity(context, SetPwdActivity.class, bundle2);
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deal(final a aVar) {
        if (this.a || TextUtils.isEmpty(aVar.a)) {
            aVar.activity.finish();
            String str = !TextUtils.isEmpty(aVar.a) ? "000000" : ErrorCode.FAIL_USER_ABORT_CODE;
            String str2 = !TextUtils.isEmpty(aVar.a) ? "设置密码成功" : ErrorCode.FAIL_USER_ABORT_STRING;
            if (this.callback != null) {
                JSONObject jSONObject = new JSONObject();
                LogicUtil.jsonPut(jSONObject, "psw", aVar.a);
                ControllerResult controllerResult = new ControllerResult(str, str2);
                controllerResult.otherParams = jSONObject;
                this.callback.sendResult(controllerResult);
                return;
            }
            exit(new BaseEvent(str, str2));
            return;
        }
        this.e = aVar.activity;
        new DelayedTask(200, new DelayedTask.IDelayedListener() { // from class: com.netease.epay.sdk.psw.SetShortPwdController.1
            @Override // com.netease.epay.sdk.base.util.DelayedTask.IDelayedListener
            public void onDelayed() {
                JSONObject build = new JsonBuilder().addBizType(SetShortPwdController.this.d).build();
                LogicUtil.jsonPut(build, "shortPayPwd", aVar.a);
                LogicUtil.jsonPut(build, "shortPwdEncodeFactor", LogicUtil.getFactor());
                HttpClient.startRequest(BaseConstants.setPayPwdUrl, build, false, SetShortPwdController.this.e, (INetCallback) SetShortPwdController.this.h);
            }
        }).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        this.e.finish();
        if (this.callback != null) {
            ControllerResult controllerResult = new ControllerResult(str, str2);
            controllerResult.activity = this.e;
            this.callback.sendResult(controllerResult);
            return;
        }
        exit(new BaseEvent(str, str2));
    }
}
