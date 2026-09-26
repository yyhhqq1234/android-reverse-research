package com.netease.epay.sdk.card;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Keep;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AddOrVerifyCardController extends BaseController<com.netease.epay.sdk.card.b.a> {
    public String a;
    public String b;
    private boolean c;
    private int d;

    @Keep
    public AddOrVerifyCardController(JSONObject params, ControllerCallback callback) {
        super(params, callback);
        this.c = params.getBoolean("isNeedActivity");
        this.d = params.getInt("type");
        this.a = params.optString("UUID");
        this.b = params.optString(BaseConstants.KEY_QVHUA_BTN_STRING);
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        if (this.d == 3 || this.d == 4) {
            a.b(context, this.d);
        } else {
            a.a(context, this.d);
        }
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deal(com.netease.epay.sdk.card.b.a aVar) {
        if (this.callback == null) {
            exit(aVar, aVar.a);
            return;
        }
        if (!this.c || !aVar.isSuccess) {
            a(aVar.activity);
            aVar.activity = null;
        }
        if (this.callback != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("quickPayId", aVar.a);
                jSONObject.put("isSetPsw", aVar.b);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.callback.sendResult(new ControllerResult(aVar.code, aVar.msg, jSONObject, aVar.activity));
        }
    }

    public static void a(Activity activity) {
        if (activity != null && !activity.isFinishing()) {
            activity.finish();
        }
    }

    public static JsonBuilder a() {
        JsonBuilder jsonBuilder = new JsonBuilder();
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null) {
            if (addOrVerifyCardController.d == 6 || addOrVerifyCardController.d == 7) {
                jsonBuilder.addBizType(true);
            } else {
                jsonBuilder.addBizType();
            }
        }
        return jsonBuilder;
    }
}
