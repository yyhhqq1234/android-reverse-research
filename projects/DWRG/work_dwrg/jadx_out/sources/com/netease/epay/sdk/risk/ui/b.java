package com.netease.epay.sdk.risk.ui;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.risk.RiskController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONObject;

/* compiled from: RiskFragment.java */
/* loaded from: classes.dex */
public class b extends SdkFragment {
    private NetCallback a = new NetCallback<Object>() { // from class: com.netease.epay.sdk.risk.ui.b.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        public void success(FragmentActivity activity, Object o) {
            b.this.dismissAllowingStateLoss();
            RiskController riskController = (RiskController) ControllerRouter.getController("risk");
            if (riskController != null) {
                riskController.deal(new BaseEvent("000000", (String) null));
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse resp) {
            if (!resp.isSuccess()) {
                ToastUtil.show(b.this.getActivity(), resp.retdesc);
            }
            if (ErrorCode.RISK_FAIL.equals(resp.retcode)) {
                ArrayList<String> arrayList = null;
                if (!TextUtils.isEmpty(resp.riskType.cardArray)) {
                    arrayList = new ArrayList<>();
                    Collections.addAll(arrayList, resp.riskType.cardArray.split(i.b));
                }
                b.this.b(arrayList);
                return true;
            }
            return true;
        }
    };

    public void a(JSONObject jSONObject) {
        JSONObject build = new JsonBuilder().addBizType().build();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                LogicUtil.jsonPut(build, next, jSONObject.opt(next));
            }
        }
        RiskController riskController = (RiskController) ControllerRouter.getController("risk");
        if (riskController != null && riskController.a != null) {
            JSONObject jSONObject2 = riskController.a;
            LogicUtil.jsonPut(build, JsonBuilder.SESSION_ID, jSONObject2.optString(JsonBuilder.SESSION_ID));
            LogicUtil.jsonPut(build, JsonBuilder.ORDER_ID, jSONObject2.optString(JsonBuilder.ORDER_ID));
            LogicUtil.jsonPut(build, "platformId", jSONObject2.optString("platformId"));
            LogicUtil.jsonPut(build, JsonBuilder.APPPLATFORM_ID, jSONObject2.optString(JsonBuilder.APPPLATFORM_ID));
        }
        HttpClient.startRequest("risk_challenge.htm", build, false, getActivity(), (INetCallback) this.a);
    }

    public void b(ArrayList<String> arrayList) {
    }
}
