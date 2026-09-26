package com.netease.epay.sdk.risk;

import android.content.Context;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.risk.ui.RiskActivity;
import com.netease.epay.sdk.risk.ui.c;
import com.netease.epay.sdk.risk.ui.d;
import com.netease.epay.sdk.risk.ui.e;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RiskController extends BaseController {
    public JSONObject a;
    private RiskActivity b;
    private NewBaseResponse c;
    private a d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        void a(RiskActivity riskActivity);
    }

    @Keep
    public RiskController(@NonNull JSONObject params, @NonNull ControllerCallback callback) {
        super(params, callback);
        if (params.has("response")) {
            this.c = (NewBaseResponse) params.get("response");
            this.a = (JSONObject) params.get("interceptedParams");
        }
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        final SdkFragment onlyMessageFragment;
        if ("050002".equals(this.c.retcode)) {
            onlyMessageFragment = OnlyMessageFragment.getInstance(this.c.retcode, this.c.retdesc, new OnlyMessageFragment.IOnlyMessageCallback() { // from class: com.netease.epay.sdk.risk.RiskController.1
                @Override // com.netease.epay.sdk.base.ui.OnlyMessageFragment.IOnlyMessageCallback
                public void callback(String code, String msg) {
                    RiskController.this.deal(new BaseEvent(code, msg));
                }
            });
        } else {
            if (this.c.riskType == null) {
                deal(new BaseEvent(this.c.retcode, this.c.retdesc));
                return;
            }
            if (this.c.riskType.general != null) {
                onlyMessageFragment = c.a(this.c.riskType.general.isAuthVerify);
            } else if (!TextUtils.isEmpty(this.c.riskType.smsContent)) {
                onlyMessageFragment = e.a(BaseConstants.RISK_TYEP_SMS, this.c.riskType.smsContent);
            } else if (!TextUtils.isEmpty(this.c.riskType.cardArray)) {
                ArrayList arrayList = new ArrayList();
                Collections.addAll(arrayList, this.c.riskType.cardArray.split(i.b));
                onlyMessageFragment = com.netease.epay.sdk.risk.ui.a.a((ArrayList<String>) arrayList);
            } else if (!TextUtils.isEmpty(this.c.riskType.voiceContent)) {
                onlyMessageFragment = e.a(BaseConstants.RISK_TYEP_VOICE_MOBLIE, this.c.riskType.voiceContent);
            } else if (!TextUtils.isEmpty(this.c.riskType.voiceQPContent)) {
                onlyMessageFragment = e.a(BaseConstants.RISK_TYEP_VOICE_QP, this.c.riskType.voiceQPContent);
            } else if (this.c.riskType.pwd != null) {
                onlyMessageFragment = d.a();
            } else if (this.c.riskType.faceType != null) {
                if ("auditing".equals(this.c.riskType.faceType)) {
                    onlyMessageFragment = OnlyMessageFragment.getInstance(this.c.retcode, this.c.retdesc, new OnlyMessageFragment.IOnlyMessageCallback() { // from class: com.netease.epay.sdk.risk.RiskController.2
                        @Override // com.netease.epay.sdk.base.ui.OnlyMessageFragment.IOnlyMessageCallback
                        public void callback(String code, String msg) {
                            RiskController.this.deal(new BaseEvent(code, msg));
                        }
                    });
                } else {
                    a((SdkActivity) context);
                    return;
                }
            } else {
                ToastUtil.show(context, this.c.retdesc);
                deal(new BaseEvent("050002", this.c.retdesc));
                return;
            }
        }
        LogicUtil.clearAllFragments((SdkActivity) context);
        JumpUtil.go2Activity(context, RiskActivity.class, null);
        this.d = new a() { // from class: com.netease.epay.sdk.risk.RiskController.3
            @Override // com.netease.epay.sdk.risk.RiskController.a
            public void a(RiskActivity riskActivity) {
                LogicUtil.showFragmentInActivity(onlyMessageFragment, riskActivity);
            }
        };
    }

    public void a(RiskActivity riskActivity) {
        this.b = riskActivity;
        this.d.a(riskActivity);
    }

    private void a(SdkActivity sdkActivity) {
        LogicUtil.clearAllFragments(sdkActivity);
        JumpUtil.go2Activity(sdkActivity, RiskActivity.class, null);
        this.d = new a() { // from class: com.netease.epay.sdk.risk.RiskController.4
            @Override // com.netease.epay.sdk.risk.RiskController.a
            public void a(RiskActivity riskActivity) {
                ControllerRouter.route(RegisterCenter.FACE, riskActivity, ControllerJsonBuilder.getFaceJson("risk", null), new ControllerCallback() { // from class: com.netease.epay.sdk.risk.RiskController.4.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult) {
                        RiskController.this.deal(new BaseEvent(controllerResult.code, controllerResult.msg));
                    }
                });
            }
        };
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    public void deal(BaseEvent event) {
        String str;
        if (this.b != null) {
            this.b.finish();
        }
        if (this.callback == null) {
            exit(event);
            return;
        }
        if (TextUtils.equals(event.code, "000000")) {
            str = event.code;
        } else if (event.code.startsWith("-")) {
            str = event.code;
        } else {
            str = "050002";
        }
        this.callback.sendResult(new ControllerResult(str, event.msg));
    }
}
