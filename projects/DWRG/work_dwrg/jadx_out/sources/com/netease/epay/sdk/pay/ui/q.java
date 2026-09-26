package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.WebViewFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.model.QueryOrderInfo;
import org.json.JSONObject;

/* compiled from: WebPayFullFragment.java */
/* loaded from: classes.dex */
public class q extends WebViewFragment {
    private JSONObject a;

    public static q a(boolean z, String str) {
        q qVar = new q();
        Bundle bundle = new Bundle();
        bundle.putString("WebView_postUrl", str);
        bundle.putBoolean("WebView_isNeedTitle", z);
        qVar.setArguments(bundle);
        return qVar;
    }

    @Override // com.netease.epay.sdk.base.ui.WebViewFragment
    public void finish() {
        if (this.a == null) {
            this.a = new JsonBuilder().build();
            HttpClient.startRequest(PayConstants.query_order_info, this.a, false, getActivity(), (INetCallback) new NetCallback<QueryOrderInfo>() { // from class: com.netease.epay.sdk.pay.ui.q.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, QueryOrderInfo queryOrderInfo) {
                    BaseEvent baseEvent;
                    SdkActivity sdkActivity = q.this.getActivity() instanceof SdkActivity ? (SdkActivity) q.this.getActivity() : null;
                    if (queryOrderInfo.isPaySuccess()) {
                        baseEvent = new BaseEvent("000000", null, sdkActivity);
                    } else {
                        baseEvent = new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT, sdkActivity);
                    }
                    a(baseEvent);
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    SdkActivity sdkActivity = null;
                    if (q.this.getActivity() instanceof SdkActivity) {
                        sdkActivity = (SdkActivity) q.this.getActivity();
                    }
                    a(new BaseEvent(response, sdkActivity));
                    return true;
                }

                private void a(BaseEvent baseEvent) {
                    PayController payController = (PayController) ControllerRouter.getController("pay");
                    if (payController != null) {
                        payController.deal(baseEvent);
                    }
                    q.this.a = null;
                }
            });
        }
    }
}
