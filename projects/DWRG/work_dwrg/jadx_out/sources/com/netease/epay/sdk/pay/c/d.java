package com.netease.epay.sdk.pay.c;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.IParamsCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import com.netease.epay.sdk.pay.ui.o;
import com.netease.epay.sdk.pay.ui.p;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EpayPayShortyPresenter.java */
/* loaded from: classes.dex */
public class d implements o.a {
    private o a;
    private NetCallback b = new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.c.d.2
        @Override // com.netease.epay.sdk.base.network.INetCallback
        public void success(FragmentActivity activity, Object o) {
            LogicUtil.showFragmentInActivity(p.c(), activity);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onLaterDeal(FragmentActivity activity, NewBaseResponse response) {
            if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                PayingActivity.a(activity);
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onUIChanged(FragmentActivity activity, NewBaseResponse response) {
            super.onUIChanged(activity, response);
            if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                ((PayingActivity) activity).a();
            }
        }
    };

    public d(o oVar) {
        this.a = oVar;
    }

    @Override // com.netease.epay.sdk.pay.ui.o.a
    public void a(final String str) {
        if (Card.isSelectedCardBankSend(CoreData.lastCheckIndex)) {
            HttpClient.startRequest(BaseConstants.validatePasswordUrl, new IParamsCallback() { // from class: com.netease.epay.sdk.pay.c.d.1
                @Override // com.netease.epay.sdk.base.network.IParamsCallback
                public JSONObject getJsonObject() {
                    JSONObject build = new JsonBuilder().addBizType().build();
                    LogicUtil.jsonPut(build, "password", DigestUtil.encode(str));
                    return build;
                }
            }, false, this.a.getActivity(), (INetCallback) this.b);
        } else {
            b(DigestUtil.encode(str));
        }
    }

    private void b(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (CoreData.lastCheckIndex >= 0) {
                jSONObject.put("quickPayId", Card.getSelectedCardBankQuickPayId(CoreData.lastCheckIndex));
            }
            jSONObject.put("challengeType", "paypwd");
            jSONObject.put("shortPwdEncodeFactor", LogicUtil.getFactor());
            jSONObject.put("payPwd", str);
            jSONObject.put("hasShortPwd", true);
            jSONObject.put("bizType", "order");
            this.a.a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
