package com.netease.epay.sdk.pay.b;

import android.content.Context;
import android.webkit.WebView;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.hybrid.JsCallback;
import com.netease.epay.sdk.base.hybrid.common.FinanceHandler;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.pay.PayController;
import org.json.JSONObject;

/* compiled from: PayResultHandler.java */
/* loaded from: classes.dex */
public class b extends FinanceHandler<a> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void handleRequest(WebView webView, Context context, a aVar, JsCallback jsCallback) {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        SdkActivity sdkActivity = context instanceof SdkActivity ? (SdkActivity) context : null;
        if (payController != null) {
            if (aVar.a()) {
                payController.deal(new BaseEvent("000000", null, sdkActivity));
            } else {
                payController.deal(new BaseEvent("" + aVar.a, aVar.b, sdkActivity));
            }
        }
        jsCallback.confirm(createRep(0, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.hybrid.common.FinanceHandler
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a buildMsgFromJson(JSONObject jSONObject) {
        return new a(jSONObject);
    }
}
