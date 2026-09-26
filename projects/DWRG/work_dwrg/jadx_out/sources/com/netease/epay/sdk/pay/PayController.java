package com.netease.epay.sdk.pay;

import android.content.Context;
import android.support.annotation.Keep;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.pay.ui.CreditPayActivity;
import com.netease.epay.sdk.pay.ui.OrderInfoActivity;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PayController extends BaseController {
    public String a;
    public String b;
    public boolean c;
    public boolean d;
    private boolean e;

    @Keep
    public PayController(JSONObject obj, ControllerCallback callback) {
        super(obj, callback);
        this.a = obj.optString("quickPayId");
        this.c = obj.optBoolean("isShowPaymentDetail");
        this.d = obj.optBoolean("isFakeUnion");
        this.e = obj.optBoolean("isCreditPay", false);
        this.b = obj.optString("attach");
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        if (this.e) {
            CreditPayActivity.a(context);
        } else if (this.c) {
            JumpUtil.go2Activity(context, OrderInfoActivity.class, null);
        } else {
            PayingActivity.a(context);
        }
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    public void deal(BaseEvent event) {
        c.a();
        if (this.callback == null) {
            exit(event);
        } else {
            a(event);
        }
    }

    private void a(BaseEvent baseEvent) {
        if (baseEvent.activity != null && !baseEvent.activity.isFinishing()) {
            baseEvent.activity.finish();
        }
        if (this.callback != null) {
            this.callback.sendResult(new ControllerResult(baseEvent.code, baseEvent.msg, null, null));
        }
    }
}
